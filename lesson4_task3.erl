-module(lesson4_task3).
-export([fib/1]).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
fib_test_() -> [
    ?assertEqual(1, fib(0)),
    ?assertEqual(1, fib(1)),
    ?assertEqual(2, fib(2)),
    ?assertEqual(3, fib(3)),
    ?assertEqual(5, fib(4)),
    ?assertEqual(8, fib(5)),
    ?assertException(error, function_clause, fib(-1))
].
-endif.

fib(0) -> 1;
fib(1) -> 1;
fib(N) when N > 1 -> fib(N - 1) + fib(N - 2).