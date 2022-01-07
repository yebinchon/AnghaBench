; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_Process.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__, i32 }

@WEBP_MUX_OK = common dso_local global i32 0, align 4
@kFourccList = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"ERROR (%s): Could not get the %s.\0A\00", align 1
@kDescriptions = common dso_local global i32* null, align 8
@Err2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR: Invalid feature for action 'get'.\0A\00", align 1
@__const.Process.params = private unnamed_addr constant %struct.TYPE_19__ { i32 -1, i32 0, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ERROR (%s): Could not allocate a mux object.\0A\00", align 1
@WEBP_MUX_MEMORY_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"ERROR: Could not parse the background color \0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"ERROR: Loop count must be in the range 0 to 65535.\0A\00", align 1
@WEBP_CHUNK_ANMF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ERROR: Could not parse frame properties.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ERROR (%s): Could not add a frame at index %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ERROR: Invalid subtype for 'frame'\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"ERROR (%s): Could not set animation parameters.\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ERROR (%s): Could not set the %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"ERROR: Invalid feature for action 'set'.\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"ERROR: can not parse the number of frames.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [70 x i8] c"Doesn't look like the source is animated. Skipping duration setting.\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"ERROR: duration must be strictly positive.\0A\00", align 1
@Err3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"ERROR: can not retrieve frame #%d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"ERROR: error push frame data #%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"ERROR (%s): Could not strip the %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"ERROR: Invalid feature for action 'strip'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Process(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32* null, i32** %3, align 8
  %24 = load i32, i32* @WEBP_MUX_OK, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %581 [
    i32 138, label %28
    i32 136, label %76
    i32 139, label %276
    i32 135, label %511
    i32 137, label %567
  ]

28:                                               ; preds = %1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CreateMux(i32 %31, i32** %3)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %584

36:                                               ; preds = %28
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  switch i64 %39, label %72 [
    i64 134, label %40
    i64 132, label %44
    i64 133, label %44
    i64 131, label %44
  ]

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = call i32 @GetFrame(i32* %41, %struct.TYPE_21__* %42)
  store i32 %43, i32* %6, align 4
  br label %75

44:                                               ; preds = %36, %36, %36
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** @kFourccList, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @WebPMuxGetChunk(i32* %45, i32 %51, %struct.TYPE_20__* %4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @WEBP_MUX_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %44
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ErrorString(i32 %57)
  %59 = load i32*, i32** @kDescriptions, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @Err2, align 4
  %66 = call i32 @ERROR_GOTO3(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %44
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @WriteData(i32 %70, %struct.TYPE_20__* %4)
  store i32 %71, i32* %6, align 4
  br label %75

72:                                               ; preds = %36
  %73 = load i32, i32* @Err2, align 4
  %74 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67, %40
  br label %583

76:                                               ; preds = %1
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  switch i64 %79, label %267 [
    i64 134, label %80
    i64 132, label %220
    i64 133, label %220
    i64 131, label %220
  ]

80:                                               ; preds = %76
  %81 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 bitcast (%struct.TYPE_19__* @__const.Process.params to i8*), i64 16, i1 false)
  %82 = call i32* (...) @WebPMuxNew()
  store i32* %82, i32** %3, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @WEBP_MUX_MEMORY_ERROR, align 4
  %87 = call i32 @ErrorString(i32 %86)
  %88 = load i32, i32* @Err2, align 4
  %89 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %205, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %208

97:                                               ; preds = %91
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %201 [
    i32 129, label %106
    i32 128, label %124
    i32 130, label %153
  ]

106:                                              ; preds = %97
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ParseBgcolorArgs(i32 %114, i32* %9)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* @Err2, align 4
  %120 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %106
  %122 = load i32, i32* %9, align 4
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  br label %204

124:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ExUtilGetInt(i32 %132, i32 10, i32* %10)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %11, align 4
  %138 = icmp sgt i32 %137, 65535
  br i1 %138, label %139, label %142

139:                                              ; preds = %136, %124
  %140 = load i32, i32* @Err2, align 4
  %141 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %584

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i32 %151, i32* %152, align 4
  br label %204

153:                                              ; preds = %97
  %154 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store i32 %154, i32* %155, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %165 = call i32 @ExUtilReadFileToWebPData(i32 %163, %struct.TYPE_20__* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %153
  br label %584

169:                                              ; preds = %153
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ParseFrameArgs(i32 %177, %struct.TYPE_18__* %12)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %169
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %183 = call i32 @WebPDataClear(%struct.TYPE_20__* %182)
  %184 = load i32, i32* @Err2, align 4
  %185 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %181, %169
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @WebPMuxPushFrame(i32* %187, %struct.TYPE_18__* %12, i32 1)
  store i32 %188, i32* %5, align 4
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %190 = call i32 @WebPDataClear(%struct.TYPE_20__* %189)
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @WEBP_MUX_OK, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @ErrorString(i32 %195)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @Err2, align 4
  %199 = call i32 @ERROR_GOTO3(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %186
  br label %204

201:                                              ; preds = %97
  %202 = load i32, i32* @Err2, align 4
  %203 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %200, %150, %121
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %91

208:                                              ; preds = %91
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @WebPMuxSetAnimationParams(i32* %209, %struct.TYPE_19__* %8)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @WEBP_MUX_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @ErrorString(i32 %215)
  %217 = load i32, i32* @Err2, align 4
  %218 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %208
  br label %270

220:                                              ; preds = %76, %76, %76
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @CreateMux(i32 %223, i32** %3)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220
  br label %584

228:                                              ; preds = %220
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 5
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ExUtilReadFileToWebPData(i32 %234, %struct.TYPE_20__* %4)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %228
  br label %584

239:                                              ; preds = %228
  %240 = load i32*, i32** %3, align 8
  %241 = load i32*, i32** @kFourccList, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @WebPMuxSetChunk(i32* %240, i32 %246, %struct.TYPE_20__* %4, i32 1)
  store i32 %247, i32* %5, align 4
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 @free(i8* %250)
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @WEBP_MUX_OK, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %239
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @ErrorString(i32 %256)
  %258 = load i32*, i32** @kDescriptions, align 8
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @Err2, align 4
  %265 = call i32 @ERROR_GOTO3(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %257, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %255, %239
  br label %270

267:                                              ; preds = %76
  %268 = load i32, i32* @Err2, align 4
  %269 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %267, %266, %219
  %271 = load i32*, i32** %3, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @WriteWebP(i32* %271, i32 %274)
  store i32 %275, i32* %6, align 4
  br label %583

276:                                              ; preds = %1
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @CreateMux(i32 %279, i32** %3)
  store i32 %280, i32* %6, align 4
  %281 = load i32, i32* %6, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %584

284:                                              ; preds = %276
  %285 = load i32*, i32** %3, align 8
  %286 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  %287 = call i32 @WebPMuxNumChunks(i32* %285, i32 %286, i32* %13)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @WEBP_MUX_OK, align 4
  %290 = icmp eq i32 %288, %289
  %291 = zext i1 %290 to i32
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %284
  %295 = load i32, i32* @Err2, align 4
  %296 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %294, %284
  %298 = load i32, i32* %13, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = load i32, i32* @stderr, align 4
  %302 = call i32 @fprintf(i32 %301, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0))
  %303 = load i32*, i32** %3, align 8
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @WriteWebP(i32* %303, i32 %306)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %300
  br label %584

311:                                              ; preds = %300
  br label %510

312:                                              ; preds = %297
  store i32* null, i32** %15, align 8
  %313 = load i32*, i32** %3, align 8
  %314 = call i32* @DuplicateMuxHeader(i32* %313)
  store i32* %314, i32** %16, align 8
  %315 = load i32*, i32** %16, align 8
  %316 = icmp eq i32* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %584

318:                                              ; preds = %312
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = mul i64 %320, 4
  %322 = call i64 @WebPMalloc(i64 %321)
  %323 = inttoptr i64 %322 to i32*
  store i32* %323, i32** %15, align 8
  %324 = load i32*, i32** %15, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %584

327:                                              ; preds = %318
  store i32 0, i32* %14, align 4
  br label %328

328:                                              ; preds = %337, %327
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* %13, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = load i32*, i32** %15, align 8
  %334 = load i32, i32* %14, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 -1, i32* %336, align 4
  br label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %14, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %14, align 4
  br label %328

340:                                              ; preds = %328
  store i32 0, i32* %14, align 4
  br label %341

341:                                              ; preds = %436, %340
  %342 = load i32, i32* %14, align 4
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %439

347:                                              ; preds = %341
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 5
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %349, align 8
  %351 = load i32, i32* %14, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %357 = call i32 @ExUtilGetInts(i32 %355, i32 10, i32 3, i32* %356)
  store i32 %357, i32* %22, align 4
  %358 = load i32, i32* %22, align 4
  %359 = icmp sge i32 %358, 1
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %6, align 4
  %361 = load i32, i32* %6, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %347
  br label %501

364:                                              ; preds = %347
  %365 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %19, align 4
  %367 = load i32, i32* %19, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i32, i32* @Err3, align 4
  %371 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %370)
  br label %372

372:                                              ; preds = %369, %364
  %373 = load i32, i32* %22, align 4
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  store i32 1, i32* %20, align 4
  %376 = load i32, i32* %13, align 4
  store i32 %376, i32* %21, align 4
  br label %409

377:                                              ; preds = %372
  %378 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %20, align 4
  %380 = load i32, i32* %20, align 4
  %381 = icmp sle i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  store i32 1, i32* %20, align 4
  br label %390

383:                                              ; preds = %377
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* %13, align 4
  %386 = icmp sgt i32 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load i32, i32* %13, align 4
  store i32 %388, i32* %20, align 4
  br label %389

389:                                              ; preds = %387, %383
  br label %390

390:                                              ; preds = %389, %382
  %391 = load i32, i32* %22, align 4
  %392 = icmp sge i32 %391, 3
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %395 = load i32, i32* %394, align 4
  br label %398

396:                                              ; preds = %390
  %397 = load i32, i32* %20, align 4
  br label %398

398:                                              ; preds = %396, %393
  %399 = phi i32 [ %395, %393 ], [ %397, %396 ]
  store i32 %399, i32* %21, align 4
  %400 = load i32, i32* %21, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %406, label %402

402:                                              ; preds = %398
  %403 = load i32, i32* %21, align 4
  %404 = load i32, i32* %13, align 4
  %405 = icmp sgt i32 %403, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %402, %398
  %407 = load i32, i32* %13, align 4
  store i32 %407, i32* %21, align 4
  br label %408

408:                                              ; preds = %406, %402
  br label %409

409:                                              ; preds = %408, %375
  %410 = load i32, i32* %20, align 4
  store i32 %410, i32* %17, align 4
  br label %411

411:                                              ; preds = %432, %409
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %21, align 4
  %414 = icmp sle i32 %412, %413
  br i1 %414, label %415, label %435

415:                                              ; preds = %411
  %416 = load i32, i32* %17, align 4
  %417 = icmp sge i32 %416, 1
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = load i32, i32* %17, align 4
  %420 = load i32, i32* %13, align 4
  %421 = icmp sle i32 %419, %420
  br label %422

422:                                              ; preds = %418, %415
  %423 = phi i1 [ false, %415 ], [ %421, %418 ]
  %424 = zext i1 %423 to i32
  %425 = call i32 @assert(i32 %424)
  %426 = load i32, i32* %19, align 4
  %427 = load i32*, i32** %15, align 8
  %428 = load i32, i32* %17, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  store i32 %426, i32* %431, align 4
  br label %432

432:                                              ; preds = %422
  %433 = load i32, i32* %17, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %17, align 4
  br label %411

435:                                              ; preds = %411
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %14, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %14, align 4
  br label %341

439:                                              ; preds = %341
  store i32 1, i32* %14, align 4
  br label %440

440:                                              ; preds = %489, %439
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %13, align 4
  %443 = icmp sle i32 %441, %442
  br i1 %443, label %444, label %492

444:                                              ; preds = %440
  %445 = load i32*, i32** %3, align 8
  %446 = load i32, i32* %14, align 4
  %447 = call i32 @WebPMuxGetFrame(i32* %445, i32 %446, %struct.TYPE_18__* %23)
  store i32 %447, i32* %5, align 4
  %448 = load i32, i32* %5, align 4
  %449 = load i32, i32* @WEBP_MUX_OK, align 4
  %450 = icmp ne i32 %448, %449
  br i1 %450, label %456, label %451

451:                                              ; preds = %444
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %460

456:                                              ; preds = %451, %444
  %457 = load i32, i32* %14, align 4
  %458 = load i32, i32* @Err3, align 4
  %459 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %457, i32 %458)
  br label %460

460:                                              ; preds = %456, %451
  %461 = load i32*, i32** %15, align 8
  %462 = load i32, i32* %14, align 4
  %463 = sub nsw i32 %462, 1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = icmp sge i32 %466, 0
  br i1 %467, label %468, label %476

468:                                              ; preds = %460
  %469 = load i32*, i32** %15, align 8
  %470 = load i32, i32* %14, align 4
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i32 %474, i32* %475, align 8
  br label %476

476:                                              ; preds = %468, %460
  %477 = load i32*, i32** %16, align 8
  %478 = call i32 @WebPMuxPushFrame(i32* %477, %struct.TYPE_18__* %23, i32 1)
  store i32 %478, i32* %5, align 4
  %479 = load i32, i32* %5, align 4
  %480 = load i32, i32* @WEBP_MUX_OK, align 4
  %481 = icmp ne i32 %479, %480
  br i1 %481, label %482, label %486

482:                                              ; preds = %476
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* @Err3, align 4
  %485 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %483, i32 %484)
  br label %486

486:                                              ; preds = %482, %476
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %488 = call i32 @WebPDataClear(%struct.TYPE_20__* %487)
  br label %489

489:                                              ; preds = %486
  %490 = load i32, i32* %14, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %14, align 4
  br label %440

492:                                              ; preds = %440
  %493 = load i32*, i32** %3, align 8
  %494 = call i32 @WebPMuxDelete(i32* %493)
  %495 = load i32*, i32** %16, align 8
  %496 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = call i32 @WriteWebP(i32* %495, i32 %498)
  store i32 %499, i32* %6, align 4
  %500 = load i32*, i32** %16, align 8
  store i32* %500, i32** %3, align 8
  store i32* null, i32** %16, align 8
  br label %501

501:                                              ; preds = %492, %363
  %502 = load i32*, i32** %15, align 8
  %503 = call i32 @WebPFree(i32* %502)
  %504 = load i32*, i32** %16, align 8
  %505 = call i32 @WebPMuxDelete(i32* %504)
  %506 = load i32, i32* %6, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %501
  br label %584

509:                                              ; preds = %501
  br label %510

510:                                              ; preds = %509, %311
  br label %583

511:                                              ; preds = %1
  %512 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @CreateMux(i32 %514, i32** %3)
  store i32 %515, i32* %6, align 4
  %516 = load i32, i32* %6, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %511
  br label %584

519:                                              ; preds = %511
  %520 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %521 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = icmp eq i64 %522, 132
  br i1 %523, label %534, label %524

524:                                              ; preds = %519
  %525 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %526 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = icmp eq i64 %527, 133
  br i1 %528, label %534, label %529

529:                                              ; preds = %524
  %530 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %531 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %530, i32 0, i32 1
  %532 = load i64, i64* %531, align 8
  %533 = icmp eq i64 %532, 131
  br i1 %533, label %534, label %558

534:                                              ; preds = %529, %524, %519
  %535 = load i32*, i32** %3, align 8
  %536 = load i32*, i32** @kFourccList, align 8
  %537 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %538 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds i32, i32* %536, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @WebPMuxDeleteChunk(i32* %535, i32 %541)
  store i32 %542, i32* %5, align 4
  %543 = load i32, i32* %5, align 4
  %544 = load i32, i32* @WEBP_MUX_OK, align 4
  %545 = icmp ne i32 %543, %544
  br i1 %545, label %546, label %557

546:                                              ; preds = %534
  %547 = load i32, i32* %5, align 4
  %548 = call i32 @ErrorString(i32 %547)
  %549 = load i32*, i32** @kDescriptions, align 8
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %551 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %550, i32 0, i32 1
  %552 = load i64, i64* %551, align 8
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @Err2, align 4
  %556 = call i32 @ERROR_GOTO3(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %548, i32 %554, i32 %555)
  br label %557

557:                                              ; preds = %546, %534
  br label %561

558:                                              ; preds = %529
  %559 = load i32, i32* @Err2, align 4
  %560 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %559)
  br label %583

561:                                              ; preds = %557
  %562 = load i32*, i32** %3, align 8
  %563 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %564 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %563, i32 0, i32 4
  %565 = load i32, i32* %564, align 8
  %566 = call i32 @WriteWebP(i32* %562, i32 %565)
  store i32 %566, i32* %6, align 4
  br label %583

567:                                              ; preds = %1
  %568 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %569 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %568, i32 0, i32 3
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @CreateMux(i32 %570, i32** %3)
  store i32 %571, i32* %6, align 4
  %572 = load i32, i32* %6, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %575, label %574

574:                                              ; preds = %567
  br label %584

575:                                              ; preds = %567
  %576 = load i32*, i32** %3, align 8
  %577 = call i32 @DisplayInfo(i32* %576)
  %578 = load i32, i32* @WEBP_MUX_OK, align 4
  %579 = icmp eq i32 %577, %578
  %580 = zext i1 %579 to i32
  store i32 %580, i32* %6, align 4
  br label %583

581:                                              ; preds = %1
  %582 = call i32 @assert(i32 0)
  br label %583

583:                                              ; preds = %581, %575, %561, %558, %510, %270, %75
  br label %584

584:                                              ; preds = %583, %574, %518, %508, %326, %317, %310, %283, %238, %227, %168, %149, %35
  %585 = load i32*, i32** %3, align 8
  %586 = call i32 @WebPMuxDelete(i32* %585)
  %587 = load i32, i32* %6, align 4
  ret i32 %587
}

declare dso_local i32 @CreateMux(i32, i32**) #1

declare dso_local i32 @GetFrame(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @WebPMuxGetChunk(i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ERROR_GOTO3(i8*, i32, i32, i32) #1

declare dso_local i32 @ErrorString(i32) #1

declare dso_local i32 @WriteData(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @WebPMuxNew(...) #1

declare dso_local i32 @ERROR_GOTO2(i8*, i32, i32) #1

declare dso_local i32 @ParseBgcolorArgs(i32, i32*) #1

declare dso_local i32 @ExUtilGetInt(i32, i32, i32*) #1

declare dso_local i32 @ExUtilReadFileToWebPData(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ParseFrameArgs(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @WebPDataClear(%struct.TYPE_20__*) #1

declare dso_local i32 @WebPMuxPushFrame(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @WebPMuxSetAnimationParams(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @WebPMuxSetChunk(i32*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @WriteWebP(i32*, i32) #1

declare dso_local i32 @WebPMuxNumChunks(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @DuplicateMuxHeader(i32*) #1

declare dso_local i64 @WebPMalloc(i64) #1

declare dso_local i32 @ExUtilGetInts(i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPMuxGetFrame(i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @WebPMuxDelete(i32*) #1

declare dso_local i32 @WebPFree(i32*) #1

declare dso_local i32 @WebPMuxDeleteChunk(i32*, i32) #1

declare dso_local i32 @DisplayInfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
