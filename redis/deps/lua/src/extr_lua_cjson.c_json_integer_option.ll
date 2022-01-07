; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_integer_option.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_integer_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"expected integer between %d and %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32)* @json_integer_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_integer_option(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @lua_isnil(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @luaL_checkinteger(i32* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %30, %31
  br label %33

33:                                               ; preds = %29, %17
  %34 = phi i1 [ false, %17 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %37 = call i32 @luaL_argcheck(i32* %25, i32 %35, i32 1, i8* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %5
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lua_pushinteger(i32* %41, i32 %43)
  ret i32 1
}

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
