; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_rle1.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pfr/extr_pfrsbit.c_pfr_bitwriter_decode_rle1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i64*)* @pfr_bitwriter_decode_rle1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_bitwriter_decode_rle1(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %13, align 8
  store i64 128, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  store i64 1, i64* %7, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %26, align 16
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %27, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %11, align 8
  br label %28

28:                                               ; preds = %110, %3
  %29 = load i64, i64* %10, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i64*, i64** %5, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = icmp uge i64* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %62

43:                                               ; preds = %38
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %5, align 8
  %46 = load i64, i64* %44, align 8
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = ashr i64 %47, 4
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %48, i64* %49, align 16
  %50 = load i64, i64* %16, align 8
  %51 = and i64 %50, 15
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  store i64 0, i64* %7, align 8
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %54 = load i64, i64* %53, align 16
  store i64 %54, i64* %8, align 8
  br label %58

55:                                               ; preds = %35
  store i64 1, i64* %7, align 8
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %35, label %62

62:                                               ; preds = %59, %42
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %15, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* %14, align 8
  %72 = ashr i64 %71, 1
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %12, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  store i64 128, i64* %14, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = sext i32 %85 to i64
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64* %90, i64** %87, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  store i64* %93, i64** %13, align 8
  store i64 0, i64* %15, align 8
  br label %104

94:                                               ; preds = %70
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i64, i64* %15, align 8
  %99 = load i64*, i64** %13, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %98, i64* %100, align 8
  store i64 128, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %13, align 8
  br label %103

103:                                              ; preds = %97, %94
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %8, align 8
  %107 = icmp sle i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %104
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %10, align 8
  br label %28

113:                                              ; preds = %28
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 128
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  %118 = load i64*, i64** %13, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %113
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
