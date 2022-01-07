; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetWindowTextLengthU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetWindowTextLengthU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetWindowTextLengthU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetWindowTextLengthU(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %7, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @GetWindowTextLengthW(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @GetLastError()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @calloc(i32 %15, i32 1)
  store i8* %16, i8** %5, align 8
  %17 = call i32 (...) @GetLastError()
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %45

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @GetWindowTextW(i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = call i32 (...) @GetLastError()
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %45

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @wchar_to_utf8(i8* %32)
  store i8* %33, i8** %6, align 8
  %34 = call i32 (...) @GetLastError()
  store i32 %34, i32* %4, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %38, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = trunc i64 %41 to i32
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %3, align 4
  %44 = call i32 (...) @GetLastError()
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %37, %30, %20, %13
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @sfree(i8* %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sfree(i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @SetLastError(i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @GetWindowTextLengthW(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @GetWindowTextW(i32, i8*, i32) #1

declare dso_local i8* @wchar_to_utf8(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
