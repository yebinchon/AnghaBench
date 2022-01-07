; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_deinterlace.c_D3D11OpenDeinterlace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_deinterlace.c_D3D11OpenDeinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { %struct.TYPE_52__*, i32, i32, %struct.TYPE_49__, %struct.TYPE_48__, i32 }
%struct.TYPE_52__ = type { i32, %struct.TYPE_47__, %struct.TYPE_45__, i64, i64, %struct.TYPE_44__, i32 }
%struct.TYPE_47__ = type { i32*, i32 }
%struct.TYPE_45__ = type { i32, i32, i32* }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i64 }
%struct.TYPE_49__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i64, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64, i32 }
%struct.TYPE_41__ = type { i64, i32, i32, i32, i8*, i32, i32, i64, i64, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_40__ = type { i64 }
%struct.filter_mode_t = type { i32, %struct.TYPE_46__, i32 }
%struct.TYPE_53__ = type { i32, i64, i64 }
%struct.TYPE_54__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Could not access the d3d11.\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Filter without a context\00", align 1
@VLC_ENOOBJ = common dso_local global i32 0, align 4
@D3D11_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"can't read processor support for %s\00", align 1
@D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_INPUT = common dso_local global i64 0, align 8
@D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_OUTPUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"deinterlacing %s is not supported\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unknown mode %s, trying blend\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"using %s deinterlacing mode\00", align 1
@D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_BOB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"mode %s not available, trying bob\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"couldn't find a deinterlacing filter\00", align 1
@D3D11_USAGE_DEFAULT = common dso_local global i8* null, align 8
@D3D11_BIND_RENDER_TARGET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"CreateTexture2D failed. (hr=0x%lX)\00", align 1
@D3D11_VPOV_DIMENSION_TEXTURE2D = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"Failed to create processor output. (hr=0x%lX)\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"deinterlacing not using frame history as requested\00", align 1
@RenderPic = common dso_local global i32 0, align 4
@RenderSinglePic = common dso_local global i32 0, align 4
@Deinterlace = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11OpenDeinterlace(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_51__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_52__*, align 8
  %7 = alloca %struct.TYPE_41__, align 8
  %8 = alloca %struct.TYPE_50__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_40__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.filter_mode_t*, align 8
  %13 = alloca %struct.TYPE_53__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_41__, align 8
  %17 = alloca %struct.TYPE_54__, align 4
  %18 = alloca %struct.TYPE_50__, align 8
  store i32* %0, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %20, %struct.TYPE_51__** %4, align 8
  %21 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @is_d3d11_opaque(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %487

30:                                               ; preds = %1
  %31 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %35, i32 0, i32 0
  %37 = call i32 @video_format_IsSimilar(%struct.TYPE_42__* %33, %struct.TYPE_50__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %2, align 4
  br label %487

41:                                               ; preds = %30
  %42 = call %struct.TYPE_52__* @malloc(i32 88)
  store %struct.TYPE_52__* %42, %struct.TYPE_52__** %6, align 8
  %43 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %44 = icmp eq %struct.TYPE_52__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %49, i32* %2, align 4
  br label %487

50:                                               ; preds = %41
  %51 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %52 = call i32 @memset(%struct.TYPE_52__* %51, i32 0, i32 88)
  %53 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %54 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %54, i32 0, i32 0
  %56 = call i64 @D3D11_Create(%struct.TYPE_51__* %53, i32* %55, i32 0)
  %57 = load i64, i64* @VLC_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %64 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Err(%struct.TYPE_51__* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %447

65:                                               ; preds = %50
  %66 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %67 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %67, i32 0, i32 1
  %69 = call i32 @D3D11_FilterHoldInstance(%struct.TYPE_51__* %66, %struct.TYPE_47__* %68, %struct.TYPE_41__* %7)
  %70 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %80 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %82 = call i32 @free(%struct.TYPE_52__* %81)
  %83 = load i32, i32* @VLC_ENOOBJ, align 4
  store i32 %83, i32* %2, align 4
  br label %487

84:                                               ; preds = %65
  %85 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %86, i32 0, i32 0
  %88 = bitcast %struct.TYPE_50__* %8 to i8*
  %89 = bitcast %struct.TYPE_50__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 16, i1 false)
  %90 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %97 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %97, i32 0, i32 1
  %99 = load i32, i32* @D3D11_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST, align 4
  %100 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %103, i32 0, i32 2
  %105 = call i64 @D3D11_CreateProcessor(%struct.TYPE_51__* %96, %struct.TYPE_47__* %98, i32 %99, %struct.TYPE_50__* %102, %struct.TYPE_50__* %8, %struct.TYPE_45__* %104)
  %106 = load i64, i64* @VLC_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %84
  br label %447

109:                                              ; preds = %84
  %110 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ID3D11VideoProcessorEnumerator_CheckVideoProcessorFormat(i32 %113, i32 %115, i64* %9)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @SUCCEEDED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %109
  %121 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DxgiFormatToStr(i32 %123)
  %125 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  br label %447

126:                                              ; preds = %109
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* @D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_INPUT, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT_OUTPUT, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @DxgiFormatToStr(i32 %139)
  %141 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %447

142:                                              ; preds = %131
  %143 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps(i32 %146, %struct.TYPE_40__* %10)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @FAILED(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %447

152:                                              ; preds = %142
  %153 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %154 = call i8* @var_InheritString(%struct.TYPE_51__* %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %154, i8** %11, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = call %struct.filter_mode_t* @GetFilterMode(i8* %155)
  store %struct.filter_mode_t* %156, %struct.filter_mode_t** %12, align 8
  %157 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %158 = icmp eq %struct.filter_mode_t* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %161)
  %163 = call %struct.filter_mode_t* @GetFilterMode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.filter_mode_t* %163, %struct.filter_mode_t** %12, align 8
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %166 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i64 @strcmp(i32 %167, i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %173 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %174 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %171, %164
  store i64 0, i64* %14, align 8
  br label %178

178:                                              ; preds = %220, %177
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %10, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %178
  %184 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps(i32 %187, i64 %188, %struct.TYPE_53__* %13)
  %190 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %193 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %183
  br label %220

198:                                              ; preds = %183
  %199 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %209, i32 0, i32 2
  %211 = call i32 @ID3D11VideoDevice_CreateVideoProcessor(i32 %202, i32 %206, i64 %207, i32** %210)
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i64 @SUCCEEDED(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %198
  br label %223

216:                                              ; preds = %198
  %217 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 2
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %216, %197
  %221 = load i64, i64* %14, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %14, align 8
  br label %178

223:                                              ; preds = %215, %178
  %224 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %284

229:                                              ; preds = %223
  %230 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %231 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_BOB, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %284

235:                                              ; preds = %229
  %236 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %237 = load i8*, i8** %11, align 8
  %238 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %236, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %237)
  %239 = call %struct.filter_mode_t* @GetFilterMode(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store %struct.filter_mode_t* %239, %struct.filter_mode_t** %12, align 8
  store i64 0, i64* %15, align 8
  br label %240

240:                                              ; preds = %280, %235
  %241 = load i64, i64* %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %10, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp slt i64 %241, %243
  br i1 %244, label %245, label %283

245:                                              ; preds = %240
  %246 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i64, i64* %15, align 8
  %251 = call i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps(i32 %249, i64 %250, %struct.TYPE_53__* %13)
  %252 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS_DEINTERLACE_BOB, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %245
  br label %280

258:                                              ; preds = %245
  %259 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %269, i32 0, i32 2
  %271 = call i32 @ID3D11VideoDevice_CreateVideoProcessor(i32 %262, i32 %266, i64 %267, i32** %270)
  store i32 %271, i32* %5, align 4
  %272 = load i32, i32* %5, align 4
  %273 = call i64 @SUCCEEDED(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %258
  br label %283

276:                                              ; preds = %258
  %277 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %278, i32 0, i32 2
  store i32* null, i32** %279, align 8
  br label %280

280:                                              ; preds = %276, %257
  %281 = load i64, i64* %15, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %15, align 8
  br label %240

283:                                              ; preds = %275, %240
  br label %284

284:                                              ; preds = %283, %229, %223
  %285 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %292 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %291, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %447

293:                                              ; preds = %284
  %294 = call i32 @ZeroMemory(%struct.TYPE_41__* %16, i32 64)
  %295 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 1
  store i32 1, i32* %295, align 8
  %296 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 9
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 8
  store i64 0, i64* %298, align 8
  %299 = load i8*, i8** @D3D11_USAGE_DEFAULT, align 8
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 4
  store i8* %299, i8** %300, align 8
  %301 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 7
  store i64 0, i64* %301, align 8
  %302 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 6
  store i32 %303, i32* %304, align 4
  %305 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %306 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 5
  store i32 %305, i32* %306, align 8
  %307 = load i8*, i8** @D3D11_USAGE_DEFAULT, align 8
  %308 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 4
  store i8* %307, i8** %308, align 8
  %309 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 2
  store i32 1, i32* %309, align 4
  %310 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 0
  store i64 %311, i64* %312, align 8
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %7, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %16, i32 0, i32 3
  store i32 %314, i32* %315, align 8
  %316 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %320, i32 0, i32 3
  %322 = call i32 @ID3D11Device_CreateTexture2D(i32 %319, %struct.TYPE_41__* %16, i32* null, i64* %321)
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %5, align 4
  %324 = call i64 @FAILED(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %293
  %327 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %328 = load i32, i32* %5, align 4
  %329 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Err(%struct.TYPE_51__* %327, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %328)
  br label %447

330:                                              ; preds = %293
  %331 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %17, i32 0, i32 0
  %332 = load i32, i32* @D3D11_VPOV_DIMENSION_TEXTURE2D, align 4
  store i32 %332, i32* %331, align 4
  %333 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %344, i32 0, i32 4
  %346 = call i32 @ID3D11VideoDevice_CreateVideoProcessorOutputView(i32 %336, i32 %339, i32 %343, %struct.TYPE_54__* %17, i64* %345)
  store i32 %346, i32* %5, align 4
  %347 = load i32, i32* %5, align 4
  %348 = call i64 @FAILED(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %330
  %351 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %352 = load i32, i32* %5, align 4
  %353 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %351, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %352)
  br label %447

354:                                              ; preds = %330
  %355 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %355, i32 0, i32 5
  %357 = call i32 @InitDeinterlacingContext(%struct.TYPE_44__* %356)
  %358 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %359, i32 0, i32 2
  %361 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %362 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %361, i32 0, i32 1
  %363 = bitcast %struct.TYPE_46__* %360 to i8*
  %364 = bitcast %struct.TYPE_46__* %362 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %363, i8* align 8 %364, i64 16, i1 false)
  %365 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %372, label %368

368:                                              ; preds = %354
  %369 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %13, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br label %372

372:                                              ; preds = %368, %354
  %373 = phi i1 [ true, %354 ], [ %371, %368 ]
  %374 = zext i1 %373 to i32
  %375 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %375, i32 0, i32 5
  %377 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %377, i32 0, i32 0
  store i32 %374, i32* %378, align 8
  %379 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.filter_mode_t*, %struct.filter_mode_t** %12, align 8
  %385 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %383, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %372
  %390 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %391 = call i32 (%struct.TYPE_51__*, i8*, ...) @msg_Dbg(%struct.TYPE_51__* %390, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  br label %392

392:                                              ; preds = %389, %372
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %392
  %400 = load i32, i32* @RenderPic, align 4
  %401 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %402, i32 0, i32 1
  store i32 %400, i32* %403, align 4
  br label %409

404:                                              ; preds = %392
  %405 = load i32, i32* @RenderSinglePic, align 4
  %406 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %407, i32 0, i32 0
  store i32 %405, i32* %408, align 8
  br label %409

409:                                              ; preds = %404, %399
  %410 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %410, i32 0, i32 5
  %412 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %413, i32 0, i32 0
  %415 = call i32 @GetDeinterlacingOutput(%struct.TYPE_44__* %411, %struct.TYPE_50__* %18, %struct.TYPE_42__* %414)
  %416 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %430, label %420

420:                                              ; preds = %409
  %421 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %18, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %423, i32 0, i32 4
  %425 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %422, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %420
  br label %447

430:                                              ; preds = %420, %409
  %431 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %432, i32 0, i32 0
  %434 = bitcast %struct.TYPE_50__* %433 to i8*
  %435 = bitcast %struct.TYPE_50__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %434, i8* align 8 %435, i64 16, i1 false)
  %436 = load i32, i32* @Deinterlace, align 4
  %437 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %437, i32 0, i32 2
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* @Flush, align 4
  %440 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %440, i32 0, i32 1
  store i32 %439, i32* %441, align 8
  %442 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %443 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %443, i32 0, i32 0
  store %struct.TYPE_52__* %442, %struct.TYPE_52__** %444, align 8
  %445 = load i64, i64* @VLC_SUCCESS, align 8
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %2, align 4
  br label %487

447:                                              ; preds = %429, %350, %326, %290, %151, %136, %120, %108, %62
  %448 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %448, i32 0, i32 4
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %453, i32 0, i32 4
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @ID3D11VideoProcessorOutputView_Release(i64 %455)
  br label %457

457:                                              ; preds = %452, %447
  %458 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %457
  %463 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %463, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = call i32 @ID3D11Texture2D_Release(i64 %465)
  br label %467

467:                                              ; preds = %462, %457
  %468 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %468, i32 0, i32 2
  %470 = call i32 @D3D11_ReleaseProcessor(%struct.TYPE_45__* %469)
  %471 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %472, i32 0, i32 0
  %474 = load i32*, i32** %473, align 8
  %475 = icmp ne i32* %474, null
  br i1 %475, label %476, label %480

476:                                              ; preds = %467
  %477 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %477, i32 0, i32 1
  %479 = call i32 @D3D11_FilterReleaseInstance(%struct.TYPE_47__* %478)
  br label %480

480:                                              ; preds = %476, %467
  %481 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %481, i32 0, i32 0
  %483 = call i32 @D3D11_Destroy(i32* %482)
  %484 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %485 = call i32 @free(%struct.TYPE_52__* %484)
  %486 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %486, i32* %2, align 4
  br label %487

487:                                              ; preds = %480, %430, %78, %48, %39, %28
  %488 = load i32, i32* %2, align 4
  ret i32 %488
}

declare dso_local i32 @is_d3d11_opaque(i32) #1

declare dso_local i32 @video_format_IsSimilar(%struct.TYPE_42__*, %struct.TYPE_50__*) #1

declare dso_local %struct.TYPE_52__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.TYPE_52__*, i32, i32) #1

declare dso_local i64 @D3D11_Create(%struct.TYPE_51__*, i32*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_51__*, i8*, ...) #1

declare dso_local i32 @D3D11_FilterHoldInstance(%struct.TYPE_51__*, %struct.TYPE_47__*, %struct.TYPE_41__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_51__*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_52__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @D3D11_CreateProcessor(%struct.TYPE_51__*, %struct.TYPE_47__*, i32, %struct.TYPE_50__*, %struct.TYPE_50__*, %struct.TYPE_45__*) #1

declare dso_local i32 @ID3D11VideoProcessorEnumerator_CheckVideoProcessorFormat(i32, i32, i64*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @DxgiFormatToStr(i32) #1

declare dso_local i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorCaps(i32, %struct.TYPE_40__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_51__*, i8*) #1

declare dso_local %struct.filter_mode_t* @GetFilterMode(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ID3D11VideoProcessorEnumerator_GetVideoProcessorRateConversionCaps(i32, i64, %struct.TYPE_53__*) #1

declare dso_local i32 @ID3D11VideoDevice_CreateVideoProcessor(i32, i32, i64, i32**) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_41__*, i32*, i64*) #1

declare dso_local i32 @ID3D11VideoDevice_CreateVideoProcessorOutputView(i32, i32, i32, %struct.TYPE_54__*, i64*) #1

declare dso_local i32 @InitDeinterlacingContext(%struct.TYPE_44__*) #1

declare dso_local i32 @GetDeinterlacingOutput(%struct.TYPE_44__*, %struct.TYPE_50__*, %struct.TYPE_42__*) #1

declare dso_local i32 @ID3D11VideoProcessorOutputView_Release(i64) #1

declare dso_local i32 @ID3D11Texture2D_Release(i64) #1

declare dso_local i32 @D3D11_ReleaseProcessor(%struct.TYPE_45__*) #1

declare dso_local i32 @D3D11_FilterReleaseInstance(%struct.TYPE_47__*) #1

declare dso_local i32 @D3D11_Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
