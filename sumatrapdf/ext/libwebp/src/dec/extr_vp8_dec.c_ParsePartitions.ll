; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParsePartitions.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParsePartitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i32 0, align 4
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@VP8_STATUS_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i64)* @ParsePartitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePartitions(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %10, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @VP8GetValue(i32* %23, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %13, align 8
  %35 = mul i64 3, %34
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @VP8_STATUS_NOT_ENOUGH_DATA, align 4
  store i32 %38, i32* %4, align 4
  br label %110

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %13, align 8
  %42 = mul i64 %41, 3
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = mul i64 %44, 3
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %89, %39
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %55, %59
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %70, %52
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %75, %76
  %78 = load i32*, i32** %11, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @VP8InitBitReader(i64 %77, i32* %78, i64 %79)
  %81 = load i64, i64* %15, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %11, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32* %88, i32** %9, align 8
  br label %89

89:                                               ; preds = %72
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %14, align 8
  br label %48

92:                                               ; preds = %48
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %95, %96
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @VP8InitBitReader(i64 %97, i32* %98, i64 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ult i32* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* @VP8_STATUS_OK, align 4
  br label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @VP8_STATUS_SUSPENDED, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %37
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @VP8GetValue(i32*, i32, i8*) #1

declare dso_local i32 @VP8InitBitReader(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
