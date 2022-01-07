; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_load_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_load_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"serialui.dll\00", align 1
@hdll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"drvCommConfigDialogA\00", align 1
@pCommConfigDialogA = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"drvCommConfigDialogW\00", align 1
@pCommConfigDialogW = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"drvGetDefaultCommConfigA\00", align 1
@pGetDefaultCommConfigA = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"drvGetDefaultCommConfigW\00", align 1
@pGetDefaultCommConfigW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @load_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @load_functions() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @LoadLibraryA(i8* %3)
  store i32 %4, i32* @hdll, align 4
  %5 = load i32, i32* @hdll, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %1, align 8
  br label %46

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %10 = load i32, i32* @hdll, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @GetProcAddress(i32 %10, i8* %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** @pCommConfigDialogA, align 8
  %14 = load i32*, i32** @pCommConfigDialogA, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load i8*, i8** %2, align 8
  store i8* %17, i8** %1, align 8
  br label %46

18:                                               ; preds = %9
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  %19 = load i32, i32* @hdll, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @GetProcAddress(i32 %19, i8* %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** @pCommConfigDialogW, align 8
  %23 = load i32*, i32** @pCommConfigDialogW, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  store i8* %26, i8** %1, align 8
  br label %46

27:                                               ; preds = %18
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %28 = load i32, i32* @hdll, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @GetProcAddress(i32 %28, i8* %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** @pGetDefaultCommConfigA, align 8
  %32 = load i32*, i32** @pGetDefaultCommConfigA, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %2, align 8
  store i8* %35, i8** %1, align 8
  br label %46

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  %37 = load i32, i32* @hdll, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i64 @GetProcAddress(i32 %37, i8* %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** @pGetDefaultCommConfigW, align 8
  %41 = load i32*, i32** @pGetDefaultCommConfigW, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** %1, align 8
  br label %46

45:                                               ; preds = %36
  store i8* null, i8** %1, align 8
  br label %46

46:                                               ; preds = %45, %43, %34, %25, %16, %7
  %47 = load i8*, i8** %1, align 8
  ret i8* %47
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
