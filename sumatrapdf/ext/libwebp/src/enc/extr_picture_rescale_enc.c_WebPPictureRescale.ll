; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_rescale_enc.c_WebPPictureRescale.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_rescale_enc.c_WebPPictureRescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPictureRescale(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %179

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @WebPRescalerGetScaledDimensions(i32 %22, i32 %23, i32* %6, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %179

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i32 @PictureGrabSpecs(%struct.TYPE_9__* %28, %struct.TYPE_9__* %8)
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = call i32 @WebPPictureAlloc(%struct.TYPE_9__* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %179

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %135, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 2, %44
  %46 = call i64 @WebPSafeMalloc(i64 %45, i32 4)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @WebPPictureFree(%struct.TYPE_9__* %8)
  store i32 0, i32* %4, align 4
  br label %179

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = call i32 (...) @WebPInitAlphaProcessing()
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @RescalePlane(i32* %61, i32 %62, i32 %63, i32 %66, i32* %68, i32 %69, i32 %70, i32 %72, i32* %73, i32 1)
  br label %75

75:                                               ; preds = %57, %52
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = call i32 @AlphaMultiplyY(%struct.TYPE_9__* %76, i32 0)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @RescalePlane(i32* %80, i32 %81, i32 %82, i32 %85, i32* %87, i32 %88, i32 %89, i32 %91, i32* %92, i32 1)
  %94 = call i32 @AlphaMultiplyY(%struct.TYPE_9__* %8, i32 1)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @HALVE(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @HALVE(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @HALVE(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @HALVE(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @RescalePlane(i32* %97, i32 %99, i32 %101, i32 %104, i32* %106, i32 %108, i32 %110, i32 %112, i32* %113, i32 1)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @HALVE(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @HALVE(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @HALVE(i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @HALVE(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @RescalePlane(i32* %117, i32 %119, i32 %121, i32 %124, i32* %126, i32 %128, i32 %130, i32 %132, i32* %133, i32 1)
  br label %171

135:                                              ; preds = %37
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 2, %137
  %139 = mul i64 %138, 4
  %140 = call i64 @WebPSafeMalloc(i64 %139, i32 4)
  %141 = inttoptr i64 %140 to i32*
  store i32* %141, i32** %11, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = call i32 @WebPPictureFree(%struct.TYPE_9__* %8)
  store i32 0, i32* %4, align 4
  br label %179

146:                                              ; preds = %135
  %147 = call i32 (...) @WebPInitAlphaProcessing()
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = call i32 @AlphaMultiplyARGB(%struct.TYPE_9__* %148, i32 0)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 4
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %166, 4
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @RescalePlane(i32* %153, i32 %154, i32 %155, i32 %159, i32* %162, i32 %163, i32 %164, i32 %167, i32* %168, i32 4)
  %170 = call i32 @AlphaMultiplyARGB(%struct.TYPE_9__* %8, i32 1)
  br label %171

171:                                              ; preds = %146, %75
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = call i32 @WebPPictureFree(%struct.TYPE_9__* %172)
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @WebPSafeFree(i32* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = bitcast %struct.TYPE_9__* %176 to i8*
  %178 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 72, i1 false)
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %171, %144, %50, %36, %26, %14
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @WebPRescalerGetScaledDimensions(i32, i32, i32*, i32*) #1

declare dso_local i32 @PictureGrabSpecs(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_9__*) #1

declare dso_local i64 @WebPSafeMalloc(i64, i32) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_9__*) #1

declare dso_local i32 @WebPInitAlphaProcessing(...) #1

declare dso_local i32 @RescalePlane(i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @AlphaMultiplyY(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @HALVE(i32) #1

declare dso_local i32 @AlphaMultiplyARGB(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
