; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_t_toxav_receive_video_frame_cb.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_t_toxav_receive_video_frame_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CV_8UC3 = common dso_local global i32 0, align 4
@vdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t_toxav_receive_video_frame_cb(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i64 %7, i64 %8, i64 %9, i8* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_3__, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* %10, i8** %22, align 8
  %34 = load i64, i64* %19, align 8
  %35 = call i64 @abs(i64 %34)
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %20, align 8
  %37 = call i64 @abs(i64 %36)
  store i64 %37, i64* %20, align 8
  %38 = load i64, i64* %21, align 8
  %39 = call i64 @abs(i64 %38)
  store i64 %39, i64* %21, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %40, %41
  %43 = mul nsw i32 %42, 6
  %44 = call i32* @malloc(i32 %43)
  store i32* %44, i32** %23, align 8
  store i64 0, i64* %24, align 8
  br label %45

45:                                               ; preds = %116, %11
  %46 = load i64, i64* %24, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %45
  store i64 0, i64* %25, align 8
  br label %51

51:                                               ; preds = %112, %50
  %52 = load i64, i64* %25, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %115

56:                                               ; preds = %51
  %57 = load i32*, i32** %23, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = load i64, i64* %25, align 8
  %63 = add i64 %61, %62
  %64 = mul i64 3, %63
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  store i32* %65, i32** %26, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i64, i64* %24, align 8
  %68 = load i64, i64* %19, align 8
  %69 = mul i64 %67, %68
  %70 = load i64, i64* %25, align 8
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %27, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i64, i64* %24, align 8
  %76 = udiv i64 %75, 2
  %77 = load i64, i64* %20, align 8
  %78 = mul i64 %76, %77
  %79 = load i64, i64* %25, align 8
  %80 = udiv i64 %79, 2
  %81 = add i64 %78, %80
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %28, align 4
  %84 = load i32*, i32** %18, align 8
  %85 = load i64, i64* %24, align 8
  %86 = udiv i64 %85, 2
  %87 = load i64, i64* %21, align 8
  %88 = mul i64 %86, %87
  %89 = load i64, i64* %25, align 8
  %90 = udiv i64 %89, 2
  %91 = add i64 %88, %90
  %92 = getelementptr inbounds i32, i32* %84, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %29, align 4
  %97 = call i32 @YUV2R(i32 %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %26, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %29, align 4
  %103 = call i32 @YUV2G(i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %26, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* %29, align 4
  %109 = call i32 @YUV2B(i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %26, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %56
  %113 = load i64, i64* %25, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %25, align 8
  br label %51

115:                                              ; preds = %51
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %24, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %24, align 8
  br label %45

119:                                              ; preds = %45
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @CV_8UC3, align 4
  %123 = load i32*, i32** %23, align 8
  %124 = call i32 @cvMat(i32 %120, i32 %121, i32 %122, i32* %123)
  store i32 %124, i32* %30, align 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %127, align 4
  %129 = bitcast %struct.TYPE_3__* %31 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i32* @cvCreateImageHeader(i64 %130, i32 1, i32 3)
  store i32* %131, i32** %32, align 8
  %132 = load i32*, i32** %32, align 8
  %133 = call i32* @cvGetImage(i32* %30, i32* %132)
  store i32* %133, i32** %33, align 8
  %134 = load i32, i32* @vdout, align 4
  %135 = load i32*, i32** %33, align 8
  %136 = call i32 @cvShowImage(i32 %134, i32* %135)
  %137 = load i32*, i32** %23, align 8
  %138 = call i32 @free(i32* %137)
  ret void
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @YUV2R(i32, i32, i32) #1

declare dso_local i32 @YUV2G(i32, i32, i32) #1

declare dso_local i32 @YUV2B(i32, i32, i32) #1

declare dso_local i32 @cvMat(i32, i32, i32, i32*) #1

declare dso_local i32* @cvCreateImageHeader(i64, i32, i32) #1

declare dso_local i32* @cvGetImage(i32*, i32*) #1

declare dso_local i32 @cvShowImage(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
