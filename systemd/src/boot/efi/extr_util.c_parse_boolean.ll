; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_parse_boolean.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_parse_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_boolean(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %9, i32* %3, align 4
  br label %52

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @strcmpa(i32* %11, i32* bitcast ([2 x i8]* @.str to i32*))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @strcmpa(i32* %15, i32* bitcast ([4 x i8]* @.str.1 to i32*))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @strcmpa(i32* %19, i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @strcmpa(i32* %23, i32* bitcast ([5 x i8]* @.str.3 to i32*))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18, %14, %10
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @strcmpa(i32* %31, i32* bitcast ([2 x i8]* @.str.4 to i32*))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @strcmpa(i32* %35, i32* bitcast ([3 x i8]* @.str.5 to i32*))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @strcmpa(i32* %39, i32* bitcast ([2 x i8]* @.str.6 to i32*))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @strcmpa(i32* %43, i32* bitcast ([6 x i8]* @.str.7 to i32*))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38, %34, %30
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %46, %26, %8
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @strcmpa(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
