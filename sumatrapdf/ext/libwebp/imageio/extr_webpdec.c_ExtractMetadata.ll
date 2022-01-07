; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_ExtractMetadata.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_webpdec.c_ExtractMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@WEBP_FF_FORMAT_FLAGS = common dso_local global i32 0, align 4
@ICCP_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ICCP\00", align 1
@EXIF_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@XMP_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"XMP \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_12__*)* @ExtractMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExtractMetadata(i32* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %15, align 8
  %18 = call i32* @WebPDemux(%struct.TYPE_10__* %8)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @WEBP_FF_FORMAT_FLAGS, align 4
  %29 = call i32 @WebPDemuxGetI(i32* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ICCP_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %22
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @WebPDemuxGetChunk(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, %struct.TYPE_11__* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = call i32 @MetadataCopy(i8* %42, i32 %45, i32* %47)
  %49 = call i32 @WebPDemuxReleaseChunkIterator(%struct.TYPE_11__* %10)
  br label %50

50:                                               ; preds = %38, %34, %22
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @EXIF_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @WebPDemuxGetChunk(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.TYPE_11__* %10)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = call i32 @MetadataCopy(i8* %63, i32 %66, i32* %68)
  %70 = call i32 @WebPDemuxReleaseChunkIterator(%struct.TYPE_11__* %10)
  br label %71

71:                                               ; preds = %59, %55, %50
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @XMP_FLAG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @WebPDemuxGetChunk(i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.TYPE_11__* %10)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = call i32 @MetadataCopy(i8* %84, i32 %87, i32* %89)
  %91 = call i32 @WebPDemuxReleaseChunkIterator(%struct.TYPE_11__* %10)
  br label %92

92:                                               ; preds = %80, %76, %71
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @WebPDemuxDelete(i32* %93)
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32* @WebPDemux(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPDemuxGetI(i32*, i32) #1

declare dso_local i64 @WebPDemuxGetChunk(i32*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @MetadataCopy(i8*, i32, i32*) #1

declare dso_local i32 @WebPDemuxReleaseChunkIterator(%struct.TYPE_11__*) #1

declare dso_local i32 @WebPDemuxDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
