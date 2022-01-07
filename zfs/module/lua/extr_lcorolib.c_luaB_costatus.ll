; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lcorolib.c_luaB_costatus.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lcorolib.c_luaB_costatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"coroutine expected\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_costatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_costatus(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @lua_tothread(i32* %5, i32 1)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_argcheck(i32* %7, i32* %8, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_pushliteral(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %45

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_status(i32* %17)
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %16
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_pushliteral(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %44

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_getstack(i32* %23, i32 0, i32* %4)
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushliteral(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %40

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_gettop(i32* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushliteral(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_pushliteral(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %26
  br label %44

41:                                               ; preds = %16
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_pushliteral(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %40, %19
  br label %45

45:                                               ; preds = %44, %13
  ret i32 1
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32*, i32, i8*) #1

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
