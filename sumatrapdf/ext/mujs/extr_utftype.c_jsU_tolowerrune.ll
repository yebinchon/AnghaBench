; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_tolowerrune.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_tolowerrune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__tolower2 = common dso_local global i32 0, align 4
@__tolower1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tolowerrune(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @__tolower2, align 4
  %7 = load i32, i32* @__tolower2, align 4
  %8 = call i32 @nelem(i32 %7)
  %9 = sdiv i32 %8, 3
  %10 = call i64* @bsearch(i64 %5, i32 %6, i32 %9, i32 3)
  store i64* %10, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = sub nsw i64 %30, 500
  store i64 %31, i64* %2, align 8
  br label %56

32:                                               ; preds = %19, %13, %1
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @__tolower1, align 4
  %35 = load i32, i32* @__tolower1, align 4
  %36 = call i32 @nelem(i32 %35)
  %37 = sdiv i32 %36, 2
  %38 = call i64* @bsearch(i64 %33, i32 %34, i32 %37, i32 2)
  store i64* %38, i64** %4, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load i64, i64* %3, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = sub nsw i64 %52, 500
  store i64 %53, i64* %2, align 8
  br label %56

54:                                               ; preds = %41, %32
  %55 = load i64, i64* %3, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %54, %47, %25
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i64* @bsearch(i64, i32, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
