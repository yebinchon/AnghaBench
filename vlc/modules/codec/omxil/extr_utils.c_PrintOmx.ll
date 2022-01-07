; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PrintOmx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_PrintOmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i64, i32, %struct.TYPE_14__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64 }

@OMX_IndexParamAudioInit = common dso_local global i64 0, align 8
@OMX_ErrorNone = common dso_local global i64 0, align 8
@OMX_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"found %i %s ports\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@OMX_IndexParamPortDefinition = common dso_local global i64 0, align 8
@OMX_IndexParamNumAvailableStreams = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"-> %s %i (%i streams) (%i:%i:%i buffers) (%i,%i) %s\00", align 1
@OMX_DirOutput = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@OMX_IndexConfigCommonOutputCrop = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"  -> video %s %ix%i@%.2f (%i,%i) (%i,%i) (%i,%i,%i,%i)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"  -> audio %s (%i) %i,%i,%i,%i,%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintOmx(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  %21 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %22 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %8)
  %23 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %7)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %265, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %27, label %268

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* @OMX_IndexParamAudioInit, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i64 @OMX_GetParameter(i32 %28, i64 %32, %struct.TYPE_15__* %8)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @OMX_ErrorNone, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %265

38:                                               ; preds = %27
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @OMX_ALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %54

54:                                               ; preds = %49, %48
  %55 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %48 ], [ %53, %49 ]
  %56 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %55)
  br label %57

57:                                               ; preds = %54, %38
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %261, %57
  %59 = load i32, i32* %11, align 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %264

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @OMX_ALL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %261

76:                                               ; preds = %67, %63
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i64, i64* @OMX_IndexParamPortDefinition, align 8
  %85 = call i64 @OMX_GetParameter(i32 %83, i64 %84, %struct.TYPE_15__* %7)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @OMX_ErrorNone, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %261

90:                                               ; preds = %76
  %91 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %21)
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i64, i64* @OMX_IndexParamNumAvailableStreams, align 8
  %100 = call i64 @OMX_GetParameter(i32 %98, i64 %99, %struct.TYPE_15__* %21)
  store i64 %100, i64* %9, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OMX_DirOutput, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 16
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 15
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 14
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 13
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %134 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %101, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %107, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %125, i32 %128, i8* %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %259 [
    i32 128, label %137
    i32 129, label %232
  ]

137:                                              ; preds = %90
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @GetVlcVideoFormat(i64 %147, i32* %18, i8** %19)
  br label %155

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @GetVlcChromaFormat(i64 %153, i32* %18, i8** %19)
  br label %155

155:                                              ; preds = %149, %143
  %156 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %20)
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i64 %158, i64* %159, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @OMX_IndexConfigCommonOutputCrop, align 4
  %162 = call i64 @OMX_GetConfig(i32 %160, i32 %161, %struct.TYPE_15__* %20)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @OMX_ErrorNone, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 8
  store i64 0, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 9
  store i64 0, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  store i64 %172, i64* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 6
  store i64 %177, i64* %178, align 8
  br label %179

179:                                              ; preds = %166, %155
  %180 = load i32*, i32** %4, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = sitofp i64 %195 to float
  %197 = fdiv float %196, 6.553600e+04
  %198 = fpext float %197 to double
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 9
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %180, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %181, i32 %186, i32 %191, double %198, i32 %203, i32 %208, i32 %213, i32 %218, i32 %221, i32 %224, i32 %227, i32 %230)
  br label %260

232:                                              ; preds = %90
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @OmxToVlcAudioFormat(i64 %236, i32* %18, i8** %19)
  %238 = load i32, i32* %5, align 4
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @GetAudioParameters(i32 %238, i32* %17, i64 %240, i64 %244, i32* %16, i32* %12, i32* %13, i32* %14, i32* %15)
  %246 = load i32*, i32** %4, align 8
  %247 = load i8*, i8** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %247, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  br label %260

259:                                              ; preds = %90
  br label %260

260:                                              ; preds = %259, %232, %179
  br label %261

261:                                              ; preds = %260, %89, %75
  %262 = load i32, i32* %11, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %11, align 4
  br label %58

264:                                              ; preds = %58
  br label %265

265:                                              ; preds = %264, %37
  %266 = load i32, i32* %10, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %24

268:                                              ; preds = %24
  ret void
}

declare dso_local i32 @OMX_INIT_STRUCTURE(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i64 @OMX_GetParameter(i32, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @GetVlcVideoFormat(i64, i32*, i8**) #1

declare dso_local i32 @GetVlcChromaFormat(i64, i32*, i8**) #1

declare dso_local i64 @OMX_GetConfig(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @OmxToVlcAudioFormat(i64, i32*, i8**) #1

declare dso_local i32 @GetAudioParameters(i32, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
