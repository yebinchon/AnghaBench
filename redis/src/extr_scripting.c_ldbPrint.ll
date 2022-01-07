; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbPrint.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"<value> \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"No such variable.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbPrint(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @lua_getstack(i32* %10, i32 %11, i32* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %37, %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @lua_getlocal(i32* %18, i32* %5, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ldbLogStackValue(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_pop(i32* %32, i32 1)
  br label %58

34:                                               ; preds = %22
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %34
  br label %17

38:                                               ; preds = %17
  br label %9

39:                                               ; preds = %9
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %39
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @lua_getglobal(i32* %48, i8* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @ldbLogStackValue(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_pop(i32* %53, i32 1)
  br label %58

55:                                               ; preds = %43
  %56 = call i32 @sdsnew(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @ldbLog(i32 %56)
  br label %58

58:                                               ; preds = %29, %55, %47
  ret void
}

declare dso_local i64 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i8* @lua_getlocal(i32*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ldbLogStackValue(i32*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
