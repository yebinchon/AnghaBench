; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_opengl_tex_converter_generic_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_opengl_tex_converter_generic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.priv*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i8* (i32)*, i64, i64, i32 (i64)*, i32 (i32, i32*)* }
%struct.priv = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }

@GL_MAX_TEXTURE_IMAGE_UNITS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@opengl_tex_converter_generic_init.xyz12_list = internal constant [2 x i64] [i64 128, i64 0], align 16
@COLOR_SPACE_UNDEF = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@tc_common_update = common dso_local global i32 0, align 4
@tc_common_allocate_textures = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GL_EXT_unpack_subimage\00", align 1
@GL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GL_ARB_pixel_buffer_object\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GL_EXT_pixel_buffer_object\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@tc_pbo_update = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"PBO support enabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opengl_tex_converter_generic_init(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.priv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @vlc_fourcc_IsYUV(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32 (i32, i32*)*, i32 (i32, i32*)** %25, align 8
  %27 = load i32, i32* @GL_MAX_TEXTURE_IMAGE_UNITS, align 4
  %28 = call i32 %26(i32 %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %3, align 4
  br label %226

33:                                               ; preds = %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64* @vlc_fourcc_GetYUVFallback(i64 %37)
  store i64* %38, i64** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %59

43:                                               ; preds = %2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 128
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  store i64* getelementptr inbounds ([2 x i64], [2 x i64]* @opengl_tex_converter_generic_init.xyz12_list, i64 0, i64 0), i64** %8, align 8
  %50 = load i32, i32* @COLOR_SPACE_UNDEF, align 4
  store i32 %50, i32* %7, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64* @vlc_fourcc_GetRGBFallback(i64 %55)
  store i64* %56, i64** %8, align 8
  %57 = load i32, i32* @COLOR_SPACE_UNDEF, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %49
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %99, %59
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = load i32, i32* @GL_TEXTURE_2D, align 4
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @opengl_fragment_shader_init(%struct.TYPE_8__* %65, i32 %66, i64 %68, i32 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %64
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VLC_CODEC_RGB32, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %73
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i32 255, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i32 65280, i32* %91, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  store i32 16711680, i32* %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 8
  %97 = call i32 @video_format_FixRgb(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %85, %73
  br label %102

99:                                               ; preds = %64
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %8, align 8
  br label %60

102:                                              ; preds = %98, %60
  %103 = load i64, i64* %6, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %106, i32* %3, align 4
  br label %226

107:                                              ; preds = %102
  %108 = call %struct.priv* @calloc(i32 1, i32 4)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 7
  store %struct.priv* %108, %struct.priv** %110, align 8
  store %struct.priv* %108, %struct.priv** %10, align 8
  %111 = load %struct.priv*, %struct.priv** %10, align 8
  %112 = icmp eq %struct.priv* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32 (i64)*, i32 (i64)** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 %121(i64 %122)
  %124 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %124, i32* %3, align 4
  br label %226

125:                                              ; preds = %107
  %126 = load i32, i32* @tc_common_update, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @tc_common_allocate_textures, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @vlc_gl_StrHasToken(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %136, %125
  %143 = phi i1 [ true, %125 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.priv*, %struct.priv** %10, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %220

149:                                              ; preds = %142
  %150 = load %struct.priv*, %struct.priv** %10, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %220

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i8* (i32)*, i8* (i32)** %158, align 8
  %160 = load i32, i32* @GL_VERSION, align 4
  %161 = call i8* %159(i32 %160)
  store i8* %161, i8** %11, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i64 @strverscmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %164 = icmp sge i64 %163, 0
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %154
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @vlc_gl_StrHasToken(i32 %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @vlc_gl_StrHasToken(i32 %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %174, %168
  %181 = phi i1 [ true, %168 ], [ %179, %174 ]
  br label %182

182:                                              ; preds = %180, %154
  %183 = phi i1 [ false, %154 ], [ %181, %180 ]
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %182
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br label %201

201:                                              ; preds = %194, %187, %182
  %202 = phi i1 [ false, %187 ], [ false, %182 ], [ %200, %194 ]
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = call i64 @pbo_pics_alloc(%struct.TYPE_8__* %207)
  %209 = load i64, i64* @VLC_SUCCESS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %206
  %212 = load i32, i32* @tc_pbo_update, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @msg_Dbg(i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %219

219:                                              ; preds = %211, %206, %201
  br label %220

220:                                              ; preds = %219, %149, %142
  %221 = load i64, i64* %6, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* @VLC_SUCCESS, align 8
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %220, %116, %105, %31
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i64 @vlc_fourcc_IsYUV(i64) #1

declare dso_local i64* @vlc_fourcc_GetYUVFallback(i64) #1

declare dso_local i64* @vlc_fourcc_GetRGBFallback(i64) #1

declare dso_local i64 @opengl_fragment_shader_init(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_9__*) #1

declare dso_local %struct.priv* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_gl_StrHasToken(i32, i8*) #1

declare dso_local i64 @strverscmp(i8*, i8*) #1

declare dso_local i64 @pbo_pics_alloc(%struct.TYPE_8__*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
