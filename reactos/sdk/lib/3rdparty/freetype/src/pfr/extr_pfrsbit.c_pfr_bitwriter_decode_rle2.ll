; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_rle2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_rle2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i64*)* @pfr_bitwriter_decode_rle2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_bitwriter_decode_rle2(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %12, align 8
  store i64 128, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  store i64 1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %10, align 8
  br label %24

24:                                               ; preds = %93, %3
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i64*, i64** %5, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = icmp uge i64* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %45

36:                                               ; preds = %31
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %5, align 8
  %39 = load i64, i64* %37, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = xor i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %31, label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %13, align 8
  %55 = ashr i64 %54, 1
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %11, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load i64, i64* %14, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  store i64 0, i64* %14, align 8
  store i64 128, i64* %13, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %70, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  store i64* %76, i64** %12, align 8
  br label %87

77:                                               ; preds = %53
  %78 = load i64, i64* %13, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* %14, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 %81, i64* %83, align 8
  store i64 0, i64* %14, align 8
  store i64 128, i64* %13, align 8
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %12, align 8
  br label %86

86:                                               ; preds = %80, %77
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %8, align 8
  %90 = icmp sle i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %9, align 8
  br label %24

96:                                               ; preds = %24
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 128
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %14, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %96
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
