; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loslib.c_checkoption.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loslib.c_checkoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_STRFTIMEOPTIONS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"invalid conversion specifier '%%%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32, i8*)* @checkoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @checkoption(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** @LUA_STRFTIMEOPTIONS, align 8
  store i8* %12, i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %53, %4
  %14 = load i8*, i8** %10, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %58

24:                                               ; preds = %22
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 124
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @memcmp(i8* %33, i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %5, align 8
  br label %65

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %10, align 8
  br label %13

58:                                               ; preds = %22
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @lua_pushfstring(i32* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = call i32 @luaL_argerror(i32* %59, i32 1, i32 %62)
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %58, %38
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
