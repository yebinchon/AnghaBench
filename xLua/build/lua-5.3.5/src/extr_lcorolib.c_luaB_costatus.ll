; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcorolib.c_luaB_costatus.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lcorolib.c_luaB_costatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_costatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_costatus(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @getco(i32* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushliteral(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %42

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_status(i32* %14)
  switch i32 %15, label %38 [
    i32 128, label %16
    i32 129, label %19
  ]

16:                                               ; preds = %13
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_pushliteral(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %41

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_getstack(i32* %20, i32 0, i32* %4)
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_pushliteral(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %37

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_gettop(i32* %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushliteral(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushliteral(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %23
  br label %41

38:                                               ; preds = %13
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_pushliteral(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %37, %16
  br label %42

42:                                               ; preds = %41, %10
  ret i32 1
}

declare dso_local i32* @getco(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_status(i32*) #1

declare dso_local i32 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
