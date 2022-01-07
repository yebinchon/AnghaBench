; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetCurrentDirectoryU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetCurrentDirectoryU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@wlpBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @GetCurrentDirectoryU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetCurrentDirectoryU(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @walloc(i8* %8, i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @wlpBuffer, align 4
  %13 = call i64 @GetCurrentDirectoryW(i64 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = call i64 (...) @GetLastError()
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @wlpBuffer, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @wchar_to_utf8_no_alloc(i32 %18, i8* %19, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i64 (...) @GetLastError()
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %17, %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @wfree(i8* %26)
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @SetLastError(i64 %28)
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i32 @walloc(i8*, i64) #1

declare dso_local i64 @GetCurrentDirectoryW(i64, i32) #1

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
