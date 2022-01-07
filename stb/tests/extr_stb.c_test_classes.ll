; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_test_classes.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_test_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"TCMalloc can waste as much as %d memory on one-shot allocations\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_classes() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 3, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %10, align 4
  store i32 32768, i32* %11, align 4
  store i32 12, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %38, %0
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %31
  store i8 1, i8* %32, align 1
  %33 = load i32, i32* %9, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %86, %41
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @stb_log2_floor(i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load i32, i32* %17, align 4
  %55 = icmp sge i32 %54, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %56, %53
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %15, align 4
  %67 = ashr i32 %65, %66
  %68 = sub nsw i32 %63, %67
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  %73 = load i32, i32* %15, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %76
  store i8 %74, i8* %77, align 1
  br label %78

78:                                               ; preds = %62, %47
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %15, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %43

91:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %129, %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %18, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %19, align 8
  br label %104

104:                                              ; preds = %111, %96
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %19, align 8
  %107 = urem i64 %105, %106
  %108 = load i64, i64* %18, align 8
  %109 = lshr i64 %108, 3
  %110 = icmp ugt i64 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %18, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %18, align 8
  br label %104

116:                                              ; preds = %104
  %117 = load i64, i64* %18, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = lshr i64 %117, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i64, i64* %18, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %92

132:                                              ; preds = %92
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %133)
  ret void
}

declare dso_local i32 @stb_log2_floor(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
