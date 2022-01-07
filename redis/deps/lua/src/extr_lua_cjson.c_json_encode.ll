; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_encode.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"expected 1 argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @json_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_encode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_4__* @json_fetch_config(i32* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @luaL_argcheck(i32* %10, i32 %14, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  store i32* %4, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @strbuf_init(i32* %21, i32 0)
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @strbuf_reset(i32* %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @json_append_data(i32* %29, %struct.TYPE_4__* %30, i32 0, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @strbuf_string(i32* %33, i32* %7)
  store i8* %34, i8** %6, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lua_pushlstring(i32* %35, i8* %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @strbuf_free(i32* %44)
  br label %46

46:                                               ; preds = %43, %28
  ret i32 1
}

declare dso_local %struct.TYPE_4__* @json_fetch_config(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @json_append_data(i32*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i8* @strbuf_string(i32*, i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @strbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
