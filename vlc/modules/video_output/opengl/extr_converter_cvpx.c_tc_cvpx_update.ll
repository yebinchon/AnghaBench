; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_cvpx.c_tc_cvpx_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_cvpx.c_tc_cvpx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.priv* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i64)* }
%struct.priv = type { i32*, i32 }

@GL_TEXTURE0 = common dso_local global i64 0, align 8
@kCGLNoError = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CGLTexImageIOSurface2D error: %u: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*, i64*)* @tc_cvpx_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_cvpx_update(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i64*, i64** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load %struct.priv*, %struct.priv** %21, align 8
  store %struct.priv* %22, %struct.priv** %14, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @cvpxpic_get_ref(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @CVPixelBufferGetIOSurface(i32 %25)
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %114, %6
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %117

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32 (i64)*, i32 (i64)** %37, align 8
  %39 = load i64, i64* @GL_TEXTURE0, align 8
  %40 = load i32, i32* %17, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 %38(i64 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %48(i32 %51, i32 %56)
  %58 = load %struct.priv*, %struct.priv** %14, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i64 @CGLTexImageIOSurface2D(i32 %60, i32 %63, i32 %71, i32 %76, i32 %81, i32 %89, i32 %97, i32 %98, i32 %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* @kCGLNoError, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %33
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i64, i64* %18, align 8
  %110 = call i32 @CGLErrorString(i64 %109)
  %111 = call i32 @msg_Err(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %112, i32* %7, align 4
  br label %140

113:                                              ; preds = %33
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %17, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %27

117:                                              ; preds = %27
  %118 = load %struct.priv*, %struct.priv** %14, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load %struct.priv*, %struct.priv** %14, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.priv*, %struct.priv** %14, align 8
  %130 = getelementptr inbounds %struct.priv, %struct.priv* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @picture_Release(i32* %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32*, i32** %12, align 8
  %135 = call i32* @picture_Hold(i32* %134)
  %136 = load %struct.priv*, %struct.priv** %14, align 8
  %137 = getelementptr inbounds %struct.priv, %struct.priv* %136, i32 0, i32 0
  store i32* %135, i32** %137, align 8
  br label %138

138:                                              ; preds = %133, %117
  %139 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %138, %104
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @cvpxpic_get_ref(i32*) #1

declare dso_local i32 @CVPixelBufferGetIOSurface(i32) #1

declare dso_local i64 @CGLTexImageIOSurface2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32, i32) #1

declare dso_local i32 @CGLErrorString(i64) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32* @picture_Hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
