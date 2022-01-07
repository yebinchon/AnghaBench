; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_atol.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_atol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddigits = common dso_local global i32 0, align 4
@FT_LONG_MAX = common dso_local global i32 0, align 4
@a2i = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @_bdf_atol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bdf_atol(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i64 0, i64* %2, align 8
  br label %64

14:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  store i64 1, i64* %5, align 8
  br label %22

22:                                               ; preds = %19, %14
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i32, i32* @ddigits, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @sbitset(i32 %24, i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @FT_LONG_MAX, align 4
  %32 = sub nsw i32 %31, 9
  %33 = sdiv i32 %32, 10
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = mul nsw i64 %37, 10
  %39 = load i64*, i64** @a2i, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %38, %45
  store i64 %46, i64* %4, align 8
  br label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @FT_LONG_MAX, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %4, align 8
  br label %54

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %23

54:                                               ; preds = %47, %23
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  br label %62

59:                                               ; preds = %54
  %60 = load i64, i64* %4, align 8
  %61 = sub nsw i64 0, %60
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i64 [ %58, %57 ], [ %61, %59 ]
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i64 @sbitset(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
