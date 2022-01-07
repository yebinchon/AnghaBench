; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetFullPathNameU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetFullPathNameU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@wlpFileName = common dso_local global i32 0, align 4
@wlpBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i8**)* @GetFullPathNameU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetFullPathNameU(i8* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @wconvert(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @walloc(i8* %15, i64 %16)
  %18 = load i8**, i8*** %8, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %38

21:                                               ; preds = %4
  %22 = load i32, i32* @wlpFileName, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @wlpBuffer, align 4
  %25 = call i64 @GetFullPathNameW(i32 %22, i64 %23, i32 %24, i32** %11)
  store i64 %25, i64* %9, align 8
  %26 = call i64 (...) @GetLastError()
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @wlpBuffer, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @wchar_to_utf8_no_alloc(i32 %30, i8* %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i64 (...) @GetLastError()
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %29, %21
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @wfree(i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @wfree(i8* %41)
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @SetLastError(i64 %43)
  %45 = load i64, i64* %9, align 8
  ret i64 %45
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32 @walloc(i8*, i64) #1

declare dso_local i64 @GetFullPathNameW(i32, i64, i32, i32**) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @wchar_to_utf8_no_alloc(i32, i8*, i64) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
