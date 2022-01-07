; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpool_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@kCVPixelFormatType_422YpCbCr8 = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8Planar = common dso_local global i32 0, align 4
@kCVPixelFormatType_32BGRA = common dso_local global i32 0, align 4
@kCVPixelBufferIOSurfacePropertiesKey = common dso_local global i32 0, align 4
@kCVPixelBufferPixelFormatTypeKey = common dso_local global i32 0, align 4
@kCVPixelBufferWidthKey = common dso_local global i32 0, align 4
@kCVPixelBufferHeightKey = common dso_local global i32 0, align 4
@kCVPixelBufferBytesPerRowAlignmentKey = common dso_local global i32 0, align 4
@kCVPixelBufferPoolMinimumBufferCountKey = common dso_local global i32 0, align 4
@kCVPixelBufferPoolMaximumBufferAgeKey = common dso_local global i32 0, align 4
@kCVReturnSuccess = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cvpxpool_create(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %28 [
    i32 128, label %19
    i32 130, label %21
    i32 131, label %23
    i32 132, label %25
    i32 129, label %27
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @kCVPixelFormatType_422YpCbCr8, align 4
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, align 4
  store i32 %22, i32* %6, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @kCVPixelFormatType_420YpCbCr8Planar, align 4
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @kCVPixelFormatType_32BGRA, align 4
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %2
  store i32 2016686640, i32* %6, align 4
  br label %29

28:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %146

29:                                               ; preds = %27, %25, %23, %21, %19
  %30 = call i32* @cfdict_create(i32 5)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %146

37:                                               ; preds = %29
  %38 = call i32* @cfdict_create(i32 2)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @CFRelease(i32* %45)
  store i32* null, i32** %3, align 8
  br label %146

47:                                               ; preds = %37
  %48 = call i32* @cfdict_create(i32 0)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @CFRelease(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @CFRelease(i32* %57)
  store i32* null, i32** %3, align 8
  br label %146

59:                                               ; preds = %47
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @kCVPixelBufferIOSurfacePropertiesKey, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @CFDictionarySetValue(i32* %60, i32 %61, i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @CFRelease(i32* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @kCVPixelBufferPixelFormatTypeKey, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @cfdict_set_int32(i32* %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @kCVPixelBufferWidthKey, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cfdict_set_int32(i32* %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @kCVPixelBufferHeightKey, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cfdict_set_int32(i32* %76, i32 %77, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @kCVPixelBufferBytesPerRowAlignmentKey, align 4
  %84 = call i32 @cfdict_set_int32(i32* %82, i32 %83, i32 16)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @kCVPixelBufferPoolMinimumBufferCountKey, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @cfdict_set_int32(i32* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @kCVPixelBufferPoolMaximumBufferAgeKey, align 4
  %91 = call i32 @cfdict_set_int32(i32* %89, i32 %90, i32 0)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @CVPixelBufferPoolCreate(i32* null, i32* %92, i32* %93, i32** %10)
  store i64 %94, i64* %11, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @CFRelease(i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @CFRelease(i32* %97)
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @kCVReturnSuccess, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %59
  store i32* null, i32** %3, align 8
  br label %146

103:                                              ; preds = %59
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = call i8* @llvm.stacksave()
  store i8* %106, i8** %12, align 8
  %107 = alloca i32*, i64 %105, align 16
  store i64 %105, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %126, %103
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %107, i64 %115
  %117 = call i64 @CVPixelBufferPoolCreatePixelBuffer(i32* null, i32* %113, i32** %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @kCVReturnSuccess, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @CVPixelBufferPoolRelease(i32* %122)
  store i32* null, i32** %10, align 8
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %129

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %108

129:                                              ; preds = %121, %108
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %140, %129
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %107, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @CFRelease(i32* %138)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %130

143:                                              ; preds = %130
  %144 = load i32*, i32** %10, align 8
  store i32* %144, i32** %3, align 8
  %145 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %145)
  br label %146

146:                                              ; preds = %143, %102, %54, %44, %36, %28
  %147 = load i32*, i32** %3, align 8
  ret i32* %147
}

declare dso_local i32* @cfdict_create(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @CFDictionarySetValue(i32*, i32, i32*) #1

declare dso_local i32 @cfdict_set_int32(i32*, i32, i32) #1

declare dso_local i64 @CVPixelBufferPoolCreate(i32*, i32*, i32*, i32**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @CVPixelBufferPoolCreatePixelBuffer(i32*, i32*, i32**) #1

declare dso_local i32 @CVPixelBufferPoolRelease(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
