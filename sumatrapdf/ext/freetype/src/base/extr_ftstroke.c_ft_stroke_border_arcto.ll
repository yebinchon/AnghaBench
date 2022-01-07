; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftstroke.c_ft_stroke_border_arcto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftstroke.c_ft_stroke_border_arcto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FT_ANGLE_PI2 = common dso_local global i64 0, align 8
@FT_ARC_CUBIC_ANGLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, i32, i64, i64)* @ft_stroke_border_arcto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ft_stroke_border_arcto(i32 %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %23 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %23, i64* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @FT_Vector_From_Polar(%struct.TYPE_7__* %17, i32 %24, i64 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %35
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i64, i64* @FT_ANGLE_PI2, align 8
  br label %48

45:                                               ; preds = %5
  %46 = load i64, i64* @FT_ANGLE_PI2, align 8
  %47 = sub nsw i64 0, %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i64 [ %44, %43 ], [ %47, %45 ]
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %143, %48
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %150

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @FT_ARC_CUBIC_ANGLE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @FT_ARC_CUBIC_ANGLE, align 8
  store i64 %59, i64* %13, align 8
  br label %69

60:                                               ; preds = %53
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @FT_ARC_CUBIC_ANGLE, align 8
  %63 = sub nsw i64 0, %62
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @FT_ARC_CUBIC_ANGLE, align 8
  %67 = sub nsw i64 0, %66
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i64, i64* %16, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i64, i64* %16, align 8
  %81 = ashr i64 %80, 1
  store i64 %81, i64* %16, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @FT_Vector_From_Polar(%struct.TYPE_7__* %18, i32 %82, i64 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %87
  store i64 %90, i64* %88, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @FT_Sin(i64 %98)
  %100 = mul nsw i32 %99, 4
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @FT_Cos(i64 %101)
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 65536, %103
  %105 = mul nsw i64 %104, 3
  %106 = trunc i64 %105 to i32
  %107 = call i32 @FT_MulDiv(i32 %97, i32 %100, i32 %106)
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %14, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @FT_Vector_From_Polar(%struct.TYPE_7__* %19, i32 %108, i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %114
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %119
  store i64 %122, i64* %120, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %14, align 8
  %126 = sub nsw i64 %124, %125
  %127 = call i32 @FT_Vector_From_Polar(%struct.TYPE_7__* %20, i32 %123, i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %129
  store i64 %132, i64* %130, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %134
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @ft_stroke_border_cubicto(i32 %138, %struct.TYPE_7__* %19, %struct.TYPE_7__* %20, %struct.TYPE_7__* %18)
  store i64 %139, i64* %22, align 8
  %140 = load i64, i64* %22, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %79
  br label %150

143:                                              ; preds = %79
  %144 = bitcast %struct.TYPE_7__* %17 to i8*
  %145 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 16, i1 false)
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %11, align 8
  %148 = sub nsw i64 %147, %146
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %15, align 8
  store i64 %149, i64* %12, align 8
  br label %50

150:                                              ; preds = %142, %50
  %151 = load i64, i64* %22, align 8
  ret i64 %151
}

declare dso_local i32 @FT_Vector_From_Polar(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @FT_MulDiv(i32, i32, i32) #1

declare dso_local i32 @FT_Sin(i64) #1

declare dso_local i32 @FT_Cos(i64) #1

declare dso_local i64 @ft_stroke_border_cubicto(i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
