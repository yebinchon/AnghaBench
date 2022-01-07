; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lua.c_multiline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lua.c_multiline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @multiline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiline(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @lua_tolstring(i32* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @luaL_loadbuffer(i32* %9, i8* %10, i64 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @incomplete(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @pushline(i32* %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17, %6
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @lua_saveline(i32* %22, i8* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushliteral(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_insert(i32* %29, i32 -2)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_concat(i32* %31, i32 3)
  br label %6
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_loadbuffer(i32*, i8*, i64, i8*) #1

declare dso_local i32 @incomplete(i32*, i32) #1

declare dso_local i32 @pushline(i32*, i32) #1

declare dso_local i32 @lua_saveline(i32*, i8*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
