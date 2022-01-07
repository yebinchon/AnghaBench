; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbPrintAll.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbPrintAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"<value> %s = \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"No local variables in the current context.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbPrintAll(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @lua_getstack(i32* %8, i32 0, i32* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @lua_getlocal(i32* %13, i32* %3, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strstr(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = call i32 (...) @sdsempty()
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sdscatprintf(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ldbLogStackValue(i32* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @sdsfree(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %17
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  br label %12

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @ldbLog(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i8* @lua_getlocal(i32*, i32*, i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @ldbLogStackValue(i32*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
