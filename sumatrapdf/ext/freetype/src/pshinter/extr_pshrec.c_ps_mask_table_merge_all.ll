; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_mask_table_merge_all.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_mask_table_merge_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32)* @ps_mask_table_merge_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ps_mask_table_merge_all(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %43, %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @ps_mask_table_test_intersect(%struct.TYPE_5__* %23, i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @ps_mask_table_merge(%struct.TYPE_5__* %31, i32 %33, i32 %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %51

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %6, align 8
  br label %19

46:                                               ; preds = %41, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %5, align 8
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i64, i64* %7, align 8
  ret i64 %52
}

declare dso_local i64 @ps_mask_table_test_intersect(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ps_mask_table_merge(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
