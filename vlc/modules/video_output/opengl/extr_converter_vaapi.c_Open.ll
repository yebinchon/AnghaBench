; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_18__*, %struct.priv*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* (%struct.TYPE_18__*, i32)*, i32*, i32* }
%struct.priv = type { i32*, i32*, i64 }
%struct.TYPE_16__ = type { i64, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_DECODER_DEVICE_VAAPI = common dso_local global i64 0, align 8
@VLC_GL_EXT_EGL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GL_OES_EGL_image\00", align 1
@EGL_EXTENSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"EGL_EXT_image_dma_buf_import\00", align 1
@VA_FOURCC_NV12 = common dso_local global i32 0, align 4
@VLC_CODEC_NV12 = common dso_local global i32 0, align 4
@VA_FOURCC_P010 = common dso_local global i32 0, align 4
@VLC_CODEC_P010 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"glEGLImageTargetTexture2DOES\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@tc_vaegl_update = common dso_local global i32 0, align 4
@tc_vaegl_get_pool = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %199

19:                                               ; preds = %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.TYPE_16__* @vlc_video_context_HoldDevice(i32* %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %5, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VLC_DECODER_DEVICE_VAAPI, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %60, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vlc_vaapi_IsChromaOpaque(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VLC_GL_EXT_EGL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %52, %44, %36, %29, %19
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = call i32 @vlc_decoder_device_Release(%struct.TYPE_16__* %61)
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %2, align 4
  br label %199

64:                                               ; preds = %52
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @vlc_gl_StrHasToken(i8* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = call i32 @vlc_decoder_device_Release(%struct.TYPE_16__* %71)
  %73 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %73, i32* %2, align 4
  br label %199

74:                                               ; preds = %64
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8* (%struct.TYPE_18__*, i32)*, i8* (%struct.TYPE_18__*, i32)** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load i32, i32* @EGL_EXTENSIONS, align 4
  %85 = call i8* %80(%struct.TYPE_18__* %83, i32 %84)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %74
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @vlc_gl_StrHasToken(i8* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88, %74
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = call i32 @vlc_decoder_device_Release(%struct.TYPE_16__* %93)
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %2, align 4
  br label %199

96:                                               ; preds = %88
  %97 = call %struct.priv* @calloc(i32 1, i32 24)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 6
  store %struct.priv* %97, %struct.priv** %99, align 8
  store %struct.priv* %97, %struct.priv** %7, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 6
  %102 = load %struct.priv*, %struct.priv** %101, align 8
  %103 = icmp eq %struct.priv* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %193

108:                                              ; preds = %96
  %109 = load %struct.priv*, %struct.priv** %7, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %121 [
    i32 129, label %115
    i32 128, label %118
  ]

115:                                              ; preds = %108
  %116 = load i32, i32* @VA_FOURCC_NV12, align 4
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* @VLC_CODEC_NV12, align 4
  store i32 %117, i32* %9, align 4
  br label %123

118:                                              ; preds = %108
  %119 = load i32, i32* @VA_FOURCC_P010, align 4
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @VLC_CODEC_P010, align 4
  store i32 %120, i32* %9, align 4
  br label %123

121:                                              ; preds = %108
  %122 = call i32 (...) @vlc_assert_unreachable()
  br label %123

123:                                              ; preds = %121, %118, %115
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = load %struct.priv*, %struct.priv** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @vaegl_init_fourcc(%struct.TYPE_17__* %124, %struct.priv* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %193

130:                                              ; preds = %123
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = call i32* @vlc_gl_GetProcAddress(%struct.TYPE_18__* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.priv*, %struct.priv** %7, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  %137 = load %struct.priv*, %struct.priv** %7, align 8
  %138 = getelementptr inbounds %struct.priv, %struct.priv* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %193

142:                                              ; preds = %130
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.priv*, %struct.priv** %7, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 0
  store i32* %145, i32** %147, align 8
  %148 = load %struct.priv*, %struct.priv** %7, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = load %struct.priv*, %struct.priv** %7, align 8
  %156 = getelementptr inbounds %struct.priv, %struct.priv* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @tc_va_check_interop_blacklist(%struct.TYPE_17__* %154, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %142
  br label %193

161:                                              ; preds = %142
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = call i64 @tc_va_check_derive_image(%struct.TYPE_17__* %162, %struct.TYPE_16__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %193

167:                                              ; preds = %161
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %169 = load i32, i32* @GL_TEXTURE_2D, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @opengl_fragment_shader_init(%struct.TYPE_17__* %168, i32 %169, i32 %170, i32 %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %167
  br label %193

183:                                              ; preds = %167
  %184 = load i32, i32* @tc_vaegl_update, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @tc_vaegl_get_pool, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = call i32 @vlc_decoder_device_Release(%struct.TYPE_16__* %190)
  %192 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %192, i32* %2, align 4
  br label %199

193:                                              ; preds = %182, %166, %160, %141, %129, %107
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = call i32 @vlc_decoder_device_Release(%struct.TYPE_16__* %194)
  %196 = load %struct.priv*, %struct.priv** %7, align 8
  %197 = call i32 @free(%struct.priv* %196)
  %198 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %193, %183, %92, %70, %60, %17
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_16__* @vlc_video_context_HoldDevice(i32*) #1

declare dso_local i32 @vlc_vaapi_IsChromaOpaque(i32) #1

declare dso_local i32 @vlc_decoder_device_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @vlc_gl_StrHasToken(i8*, i8*) #1

declare dso_local %struct.priv* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @vaegl_init_fourcc(%struct.TYPE_17__*, %struct.priv*, i32) #1

declare dso_local i32* @vlc_gl_GetProcAddress(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tc_va_check_interop_blacklist(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @tc_va_check_derive_image(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @opengl_fragment_shader_init(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
