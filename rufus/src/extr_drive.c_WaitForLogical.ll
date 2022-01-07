; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_WaitForLogical.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_WaitForLogical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRIVE_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@groot_name = common dso_local global i32 0, align 4
@groot_len = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@DRIVE_ACCESS_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while waiting for logical drive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitForLogical(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %8 = call i64 (...) @GetTickCount64()
  %9 = load i32, i32* @DRIVE_ACCESS_TIMEOUT, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i8* @GetLogicalName(i32 %13, i64 %14, i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @groot_name, align 4
  %23 = load i32, i32* @groot_len, align 4
  %24 = call i64 @strncmp(i8* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %20, %12
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* @FormatStatus, align 4
  %34 = call i64 @IS_ERROR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @DRIVE_ACCESS_TIMEOUT, align 4
  %40 = load i32, i32* @DRIVE_ACCESS_RETRIES, align 4
  %41 = sdiv i32 %39, %40
  %42 = call i32 @Sleep(i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = call i64 (...) @GetTickCount64()
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %12, label %47

47:                                               ; preds = %43
  %48 = call i32 @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %36, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @GetTickCount64(...) #1

declare dso_local i8* @GetLogicalName(i32, i64, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @IS_ERROR(i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @uprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
