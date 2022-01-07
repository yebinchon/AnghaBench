; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetFileAttributesU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_GetFileAttributesU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@wlpFileName = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @GetFileAttributesU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFileAttributesU(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  %5 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @wconvert(i8* %6)
  %8 = load i32*, i32** @wlpFileName, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 34
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i32*, i32** @wlpFileName, align 8
  %14 = load i32*, i32** @wlpFileName, align 8
  %15 = call i32 @wcslen(i32* %14)
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load i32*, i32** @wlpFileName, align 8
  %23 = load i32*, i32** @wlpFileName, align 8
  %24 = call i32 @wcslen(i32* %23)
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** @wlpFileName, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @GetFileAttributesW(i32* %29)
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %12, %1
  %32 = load i32*, i32** @wlpFileName, align 8
  %33 = call i32 @GetFileAttributesW(i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = call i32 (...) @GetLastError()
  store i32 %35, i32* %4, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @wfree(i8* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @SetLastError(i32 %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @GetFileAttributesW(i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
