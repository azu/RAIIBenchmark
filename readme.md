# RAIIBenchmark

Simple Benchmark (don't use blocks)

## Usage

> #import "RAIIBenchmark.h"

    beginBench(@"single test", {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.calendar = [NSCalendar currentCalendar];
        [dateFormatter stringFromDate:[NSDate date]];
    })
    // => single test | 0.001s

    // 1000 times
    beginBenchLoop(@"loop case", 1000, {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.calendar = [NSCalendar currentCalendar];
        [dateFormatter stringFromDate:[NSDate date]];
    })
    // => loop case | Total :0.544s | Average: 0.001s

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT

## Ref

RAII

* [Re: Objective-Cの残念な子なところ - Islands in the byte stream](http://d.hatena.ne.jp/gfx/20121115/1352940841 "Re: Objective-Cの残念な子なところ - Islands in the byte stream")