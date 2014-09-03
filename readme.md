---
layout: base
title: Read me
author: Emmanuel
---

This project demonstrates two bugs:

1. tagger fails to regenerate the site upon a blog change
2. when initially fixed, a tag's primary_page lack its url property

## Install

`rake setup` will create a local .bundle install.

## First bug

Go to the first commit and `rake clean preview`.

Go to http://localhost:4242/news/
Then edit `news/2014-09-03-test1.md`
and see the regeneration fail.

The fix is in the second commit. (a `t.to_s` line 52 of `_ext/tagger.rb`.

## Second bug

Now restart `rake clean preview`.

Go to http://localhost:4242/news/
and see how the tag url is shown.

Then edit `news/2014-09-03-test1.md`
and refresh, you will see that the url is gone.
Essentially `tag.primary_page.url` is not regenerated.
