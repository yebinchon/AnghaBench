; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_decode.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32*, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"expected 1 argument\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"JSON parser does not support UTF-16 or UTF-32\00", align 1
@T_END = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"the end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @json_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_decode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @luaL_argcheck(i32* %6, i32 %10, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @json_fetch_config(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @luaL_checklstring(i32* %15, i32 1, i64* %5)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 2
  br i1 %23, label %24, label %39

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %24
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @luaL_error(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30, %1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @strbuf_new(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = call i32 @json_next_token(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @json_process_value(i32* %44, %struct.TYPE_10__* %3, %struct.TYPE_9__* %4)
  %46 = call i32 @json_next_token(%struct.TYPE_10__* %3, %struct.TYPE_9__* %4)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @T_END, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @json_throw_parse_error(i32* %52, %struct.TYPE_10__* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %4)
  br label %54

54:                                               ; preds = %51, %39
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strbuf_free(i32 %56)
  ret i32 1
}

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @json_fetch_config(i32*) #1

declare dso_local i32* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @strbuf_new(i64) #1

declare dso_local i32 @json_next_token(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @json_process_value(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @json_throw_parse_error(i32*, %struct.TYPE_10__*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @strbuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
