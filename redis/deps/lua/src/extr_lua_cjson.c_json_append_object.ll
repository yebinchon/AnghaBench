; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_object.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\22:\00", align 1
@LUA_TSTRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"table key must be a number or string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @json_append_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_append_object(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @strbuf_append_char(i32* %11, i8 signext 123)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_pushnil(i32* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %57, %4
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @lua_next(i32* %16, i32 -2)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @strbuf_append_char(i32* %23, i8 signext 44)
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_type(i32* %27, i32 -2)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @LUA_TNUMBER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @strbuf_append_char(i32* %33, i8 signext 34)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @json_append_number(i32* %35, i32* %36, i32* %37, i32 -2)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @strbuf_append_mem(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %57

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @LUA_TSTRING, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @json_append_string(i32* %46, i32* %47, i32 -2)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @strbuf_append_char(i32* %49, i8 signext 58)
  br label %56

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @json_encode_exception(i32* %52, i32* %53, i32* %54, i32 -2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @json_append_data(i32* %58, i32* %59, i32 %60, i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @lua_pop(i32* %63, i32 1)
  br label %15

65:                                               ; preds = %15
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @strbuf_append_char(i32* %66, i8 signext 125)
  ret void
}

declare dso_local i32 @strbuf_append_char(i32*, i8 signext) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @json_append_number(i32*, i32*, i32*, i32) #1

declare dso_local i32 @strbuf_append_mem(i32*, i8*, i32) #1

declare dso_local i32 @json_append_string(i32*, i32*, i32) #1

declare dso_local i32 @json_encode_exception(i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @json_append_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
