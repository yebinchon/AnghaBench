; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetWindowTextU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetWindowTextU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@wlpString = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @GetWindowTextU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetWindowTextU(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @walloc(i8* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @wlpString, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GetWindowTextW(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = call i32 (...) @GetLastError()
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32, i32* @wlpString, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @wchar_to_utf8_no_alloc(i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @GetLastError()
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %29, %18
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @wfree(i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @SetLastError(i32 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @walloc(i8*, i32) #1

declare dso_local i32 @GetWindowTextW(i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wchar_to_utf8_no_alloc(i32, i8*, i32) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
