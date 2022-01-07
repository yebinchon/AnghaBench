; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_PictureARGBToYUVA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_PictureARGBToYUVA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@VP8_ENC_ERROR_NULL_PARAMETER = common dso_local global i32 0, align 4
@WEBP_CSP_UV_MASK = common dso_local global i32 0, align 4
@WEBP_YUV420 = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_INVALID_CONFIGURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, float, i32)* @PictureARGBToYUVA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PictureARGBToYUVA(%struct.TYPE_5__* %0, i32 %1, float %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* @VP8_ENC_ERROR_NULL_PARAMETER, align 4
  %26 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %72

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WEBP_CSP_UV_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @WEBP_YUV420, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load i32, i32* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 4
  %36 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %72

37:                                               ; preds = %27
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @CHANNEL_OFFSET(i32 0)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @CHANNEL_OFFSET(i32 1)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @CHANNEL_OFFSET(i32 2)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @CHANNEL_OFFSET(i32 3)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %14, align 8
  %57 = load i32, i32* @WEBP_YUV420, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 4, %66
  %68 = load float, float* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i32 @ImportYUVAFromRGBA(i32* %60, i32* %61, i32* %62, i32* %63, i32 4, i32 %67, float %68, i32 %69, %struct.TYPE_5__* %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %37, %33, %23, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @CHANNEL_OFFSET(i32) #1

declare dso_local i32 @ImportYUVAFromRGBA(i32*, i32*, i32*, i32*, i32, i32, float, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
