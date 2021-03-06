-module(test_plugin).

-export([fwibble/2]).

fwibble(Config, _) ->
    Pwd = rebar_utils:get_cwd(),
    Ok = filelib:is_regular(filename:join(Pwd, "fwibble.test")),
    rebar_log:log(info, "~p:~p in ~s :: ~p~n", [test_plugin, clean, Pwd, Ok]),
    ok = file:delete("fwibble.test").
