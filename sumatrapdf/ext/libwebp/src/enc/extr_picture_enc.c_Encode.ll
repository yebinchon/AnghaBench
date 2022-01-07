; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_Encode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32 }

@WEBP_PRESET_DEFAULT = common dso_local global i32 0, align 4
@WebPMemoryWrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i64 (%struct.TYPE_13__*, i32*, i32)*, float, i32, i32**)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Encode(i32* %0, i32 %1, i32 %2, i32 %3, i64 (%struct.TYPE_13__*, i32*, i32)* %4, float %5, i32 %6, i32** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64 (%struct.TYPE_13__*, i32*, i32)*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca %struct.TYPE_15__, align 4
  %20 = alloca %struct.TYPE_14__, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 (%struct.TYPE_13__*, i32*, i32)* %4, i64 (%struct.TYPE_13__*, i32*, i32)** %14, align 8
  store float %5, float* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %22 = load i32**, i32*** %17, align 8
  %23 = icmp eq i32** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %78

25:                                               ; preds = %8
  %26 = load i32, i32* @WEBP_PRESET_DEFAULT, align 4
  %27 = load float, float* %15, align 4
  %28 = call i32 @WebPConfigPreset(%struct.TYPE_15__* %19, i32 %26, float %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @WebPPictureInit(%struct.TYPE_13__* %18)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %25
  store i64 0, i64* %9, align 8
  br label %78

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* @WebPMemoryWrite, align 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %53, align 8
  %54 = call i32 @WebPMemoryWriterInit(%struct.TYPE_14__* %20)
  %55 = load i64 (%struct.TYPE_13__*, i32*, i32)*, i64 (%struct.TYPE_13__*, i32*, i32)** %14, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 %55(%struct.TYPE_13__* %18, i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %34
  %61 = call i64 @WebPEncode(%struct.TYPE_15__* %19, %struct.TYPE_13__* %18)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %60, %34
  %64 = phi i1 [ false, %34 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %21, align 4
  %66 = call i32 @WebPPictureFree(%struct.TYPE_13__* %18)
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = call i32 @WebPMemoryWriterClear(%struct.TYPE_14__* %20)
  %71 = load i32**, i32*** %17, align 8
  store i32* null, i32** %71, align 8
  store i64 0, i64* %9, align 8
  br label %78

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32**, i32*** %17, align 8
  store i32* %74, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %72, %69, %33, %24
  %79 = load i64, i64* %9, align 8
  ret i64 %79
}

declare dso_local i32 @WebPConfigPreset(%struct.TYPE_15__*, i32, float) #1

declare dso_local i32 @WebPPictureInit(%struct.TYPE_13__*) #1

declare dso_local i32 @WebPMemoryWriterInit(%struct.TYPE_14__*) #1

declare dso_local i64 @WebPEncode(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_13__*) #1

declare dso_local i32 @WebPMemoryWriterClear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
