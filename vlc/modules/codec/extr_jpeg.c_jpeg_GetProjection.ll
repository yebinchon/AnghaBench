; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_jpeg_GetProjection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_jpeg_GetProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { float, float, float, float }

@EXIF_JPEG_MARKER = common dso_local global i64 0, align 8
@EXIF_XMP_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ProjectionType=\22equirectangular\22\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ProjectionType>equirectangular\00", align 1
@PROJECTION_MODE_EQUIRECTANGULAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"PoseHeadingDegrees\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"PosePitchDegrees\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PoseRollDegrees\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"InitialViewHeadingDegrees\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"InitialViewPitchDegrees\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"InitialViewRollDegrees\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"InitialHorizontalFOVDegrees\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_8__*)* @jpeg_GetProjection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_GetProjection(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXIF_JPEG_MARKER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 32
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @EXIF_XMP_STRING, align 4
  %31 = call i32 @memcmp(i64 %29, i32 %30, i32 29)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %5, align 8
  br label %40

35:                                               ; preds = %26, %21
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %6, align 8
  br label %12

40:                                               ; preds = %33, %12
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = icmp eq %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %152

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 29
  %49 = add nsw i32 %48, 1
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %152

57:                                               ; preds = %44
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 29
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 29
  %67 = call i32 @memcpy(i8* %58, i64 %62, i32 %66)
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 29
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strcasestr(i8* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %57
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @strcasestr(i8* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %57
  %83 = load i32, i32* @PROJECTION_MODE_EQUIRECTANGULAR, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @getRDFFloat(i8* %87, float* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load float, float* %8, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store float %91, float* %94, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @getRDFFloat(i8* %96, float* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load float, float* %8, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store float %100, float* %103, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i8*, i8** %7, align 8
  %106 = call i64 @getRDFFloat(i8* %105, float* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load float, float* %8, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store float %109, float* %112, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i8*, i8** %7, align 8
  %115 = call i64 @getRDFFloat(i8* %114, float* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load float, float* %8, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store float %118, float* %121, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @getRDFFloat(i8* %123, float* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load float, float* %8, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store float %127, float* %130, align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i8*, i8** %7, align 8
  %133 = call i64 @getRDFFloat(i8* %132, float* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load float, float* %8, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store float %136, float* %139, align 4
  br label %140

140:                                              ; preds = %135, %131
  %141 = load i8*, i8** %7, align 8
  %142 = call i64 @getRDFFloat(i8* %141, float* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load float, float* %8, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  store float %145, float* %148, align 4
  br label %149

149:                                              ; preds = %144, %140
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %149, %56, %43
  ret void
}

declare dso_local i32 @memcmp(i64, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @strcasestr(i8*, i8*) #1

declare dso_local i64 @getRDFFloat(i8*, float*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
