; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_log2_floor.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_log2_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb_log2_floor.log2_4 = internal global [16 x i8] c"\FF\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_log2_floor(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 16384
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %6
  %16 = load i64, i64* %3, align 8
  %17 = icmp ult i64 %16, 512
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = lshr i64 %19, 5
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 5, %23
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %15
  %26 = load i64, i64* %3, align 8
  %27 = lshr i64 %26, 10
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 10, %30
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %1
  %33 = load i64, i64* %3, align 8
  %34 = icmp ult i64 %33, 16777216
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = icmp ult i64 %36, 524288
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* %3, align 8
  %40 = lshr i64 %39, 15
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 15, %43
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %35
  %46 = load i64, i64* %3, align 8
  %47 = lshr i64 %46, 20
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 20, %50
  store i32 %51, i32* %2, align 4
  br label %69

52:                                               ; preds = %32
  %53 = load i64, i64* %3, align 8
  %54 = icmp ult i64 %53, 536870912
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i64, i64* %3, align 8
  %57 = lshr i64 %56, 25
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 25, %60
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load i64, i64* %3, align 8
  %64 = lshr i64 %63, 30
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* @stb_log2_floor.log2_4, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 30, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %55, %45, %38, %25, %18, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
