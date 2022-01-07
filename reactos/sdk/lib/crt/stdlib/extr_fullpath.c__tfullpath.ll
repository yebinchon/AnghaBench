; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_fullpath.c__tfullpath.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_fullpath.c__tfullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @_tfullpath(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %3
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64* @_tgetcwd(i64* %19, i64 %20)
  store i64* %21, i64** %4, align 8
  br label %67

22:                                               ; preds = %13
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @MAX_PATH, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64* @malloc(i64 %27)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* @errno, align 4
  store i64* null, i64** %4, align 8
  br label %67

33:                                               ; preds = %25
  br label %36

34:                                               ; preds = %22
  %35 = load i64*, i64** %5, align 8
  store i64* %35, i64** %8, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = call i64 @GetFullPathName(i64* %37, i64 %38, i64* %39, i64** %9)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i64*, i64** %5, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64*, i64** %8, align 8
  %49 = call i32 @free(i64* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @ERANGE, align 4
  store i32 %51, i32* @errno, align 4
  store i64* null, i64** %4, align 8
  br label %67

52:                                               ; preds = %36
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i64*, i64** %5, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64*, i64** %8, align 8
  %60 = call i32 @free(i64* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 @_dosmaperr(i32 %62)
  store i64* null, i64** %4, align 8
  br label %67

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i64*, i64** %8, align 8
  store i64* %66, i64** %4, align 8
  br label %67

67:                                               ; preds = %65, %61, %50, %31, %18
  %68 = load i64*, i64** %4, align 8
  ret i64* %68
}

declare dso_local i64* @_tgetcwd(i64*, i64) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i64 @GetFullPathName(i64*, i64, i64*, i64**) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @_dosmaperr(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
