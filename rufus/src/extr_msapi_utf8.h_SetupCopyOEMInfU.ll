; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SetupCopyOEMInfU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SetupCopyOEMInfU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@wSourceInfFileName = common dso_local global i32 0, align 4
@wOEMSourceMediaLocation = common dso_local global i32 0, align 4
@wDestinationInfFileName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32, i8*, i32, i32, i32*)* @SetupCopyOEMInfU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetupCopyOEMInfU(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %20, i32* %18, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @wconvert(i8* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @wconvert(i8* %23)
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @walloc(i8* %25, i32 %26)
  %28 = load i32*, i32** %16, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %53

31:                                               ; preds = %8
  %32 = load i32, i32* @wSourceInfFileName, align 4
  %33 = load i32, i32* @wOEMSourceMediaLocation, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @wDestinationInfFileName, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @SetupCopyOEMInfW(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* null)
  store i64 %39, i64* %17, align 8
  %40 = call i32 (...) @GetLastError()
  store i32 %40, i32* %18, align 4
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load i32, i32* @wDestinationInfFileName, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @wchar_to_utf8_no_alloc(i32 %45, i8* %46, i32 %47)
  store i64 %48, i64* %17, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (...) @GetLastError()
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %50, %44, %31
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @wfree(i8* %54)
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @wfree(i8* %56)
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @wfree(i8* %58)
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @SetLastError(i32 %60)
  %62 = load i64, i64* %17, align 8
  ret i64 %62
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32 @walloc(i8*, i32) #1

declare dso_local i64 @SetupCopyOEMInfW(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @wchar_to_utf8_no_alloc(i32, i8*, i32) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
