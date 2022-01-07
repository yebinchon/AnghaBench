; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_formats.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }

@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@win_formats = common dso_local global i8*** null, align 8
@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@AUDCLNT_E_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@hexcl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"IsFormatSupported(%d, %ux%2ux%u) returns %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"IsSupported(%s, %ux%2ux%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"shared \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"exclus.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Varying BitsPerSample %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"hr %x<->suggest %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Suggestion %ux%2ux%u differs from GetMixFormat\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Initialize (%s, %ux%2ux%u) returns %08x unlike IsFormatSupported\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Initialize(shared,  %ux%2ux%u) returns %08x\0A\00", align 1
@AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED = common dso_local global i32 0, align 4
@AUDCLNT_E_ENDPOINT_CREATE_FAILED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"Initialize(noexcl., %ux%2ux%u) returns %08x(%08x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Initialize(exclus., %ux%2ux%u) returns %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_formats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i64 0, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %417, %1
  %14 = load i32, i32* %9, align 4
  %15 = load i8***, i8**** @win_formats, align 8
  %16 = call i32 @ARRAY_SIZE(i8*** %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %420

18:                                               ; preds = %13
  %19 = load i32, i32* @dev, align 4
  %20 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %21 = bitcast i32** %3 to i8**
  %22 = call i32 @IMMDevice_Activate(i32 %19, i32* @IID_IAudioClient, i32 %20, i32* null, i8** %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %417

34:                                               ; preds = %18
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @IAudioClient_GetMixFormat(i32* %35, %struct.TYPE_7__** %7)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i8***, i8**** @win_formats, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8**, i8*** %44, i64 %46
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i8***, i8**** @win_formats, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8**, i8*** %53, i64 %55
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load i8***, i8**** @win_formats, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8**, i8*** %62, i64 %64
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %72, %74
  %76 = sdiv i32 %75, 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  store %struct.TYPE_7__* inttoptr (i64 3735941133 to %struct.TYPE_7__*), %struct.TYPE_7__** %8, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @IAudioClient_IsFormatSupported(i32* %84, i32 %85, %struct.TYPE_7__* %6, %struct.TYPE_7__** %8)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %137, label %91

91:                                               ; preds = %34
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @S_FALSE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %120, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  br label %115

115:                                              ; preds = %108, %103, %99
  %116 = phi i1 [ false, %103 ], [ false, %99 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  %118 = call i64 @broken(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %115, %95
  %121 = phi i1 [ true, %95 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  br label %134

123:                                              ; preds = %91
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @hexcl, align 4
  %130 = icmp eq i32 %128, %129
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  br label %134

134:                                              ; preds = %131, %120
  %135 = phi i32 [ %122, %120 ], [ %133, %131 ]
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %134, %34
  %138 = phi i1 [ true, %34 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (i32, i8*, i64, ...) @ok(i32 %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %141, i32 %143, i32 %145, i32 %147, i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @S_OK, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %137
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, i8*, i64, i32, i32, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %158, i64 %161, i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %153, %137
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %194

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %173, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @S_OK, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = call i32 (i32, i8*, i64, ...) @ok(i32 %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %185, %178, %171, %167
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @S_FALSE, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = icmp eq %struct.TYPE_7__* %199, null
  %201 = zext i1 %200 to i32
  %202 = xor i32 %198, %201
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %206 = call i32 (i32, i8*, i64, ...) @ok(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %204, %struct.TYPE_7__* %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = icmp eq %struct.TYPE_7__* %207, inttoptr (i64 3735941133 to %struct.TYPE_7__*)
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %210

210:                                              ; preds = %209, %194
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %212 = icmp ne %struct.TYPE_7__* %211, null
  br i1 %212, label %213, label %251

213:                                              ; preds = %210
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %213
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br label %237

237:                                              ; preds = %229, %221, %213
  %238 = phi i1 [ false, %221 ], [ false, %213 ], [ %236, %229 ]
  %239 = zext i1 %238 to i32
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, i64, ...) @ok(i32 %239, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %243, i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %237, %210
  %252 = load i32*, i32** %3, align 8
  %253 = load i32, i32* %2, align 4
  %254 = call i32 @IAudioClient_Initialize(i32* %252, i32 %253, i32 0, i32 5000000, i32 0, %struct.TYPE_7__* %6, i32* null)
  store i32 %254, i32* %4, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @S_OK, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @S_OK, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = xor i32 %258, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %251
  %266 = load i32, i32* %2, align 4
  %267 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %268 = icmp eq i32 %266, %267
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = call i32 (i8*, i8*, i64, i32, i32, ...) @trace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i8* %270, i64 %273, i32 %275, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %265, %251
  %281 = load i32, i32* %2, align 4
  %282 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %309

284:                                              ; preds = %280
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @S_OK, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @S_OK, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  br label %298

293:                                              ; preds = %284
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 4
  %296 = icmp eq i32 %294, %295
  %297 = zext i1 %296 to i32
  br label %298

298:                                              ; preds = %293, %288
  %299 = phi i32 [ %292, %288 ], [ %297, %293 ]
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = call i32 (i32, i8*, i64, ...) @ok(i32 %299, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i64 %302, i32 %304, i32 %306, i32 %307)
  br label %410

309:                                              ; preds = %280
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* @AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %340

313:                                              ; preds = %309
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @hexcl, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* @AUDCLNT_E_ENDPOINT_CREATE_FAILED, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %4, align 4
  %323 = load i32, i32* %5, align 4
  %324 = icmp eq i32 %322, %323
  br label %325

325:                                              ; preds = %321, %317
  %326 = phi i1 [ true, %317 ], [ %324, %321 ]
  br label %327

327:                                              ; preds = %325, %313
  %328 = phi i1 [ false, %313 ], [ %326, %325 ]
  %329 = zext i1 %328 to i32
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* %5, align 4
  %339 = call i32 (i32, i8*, i64, ...) @ok(i32 %329, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i64 %332, i32 %334, i32 %336, i32 %337, i32 %338)
  br label %409

340:                                              ; preds = %309
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* @S_OK, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %358

344:                                              ; preds = %340
  %345 = load i32, i32* %4, align 4
  %346 = load i32, i32* @S_OK, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %355, label %348

348:                                              ; preds = %344
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* @AUDCLNT_E_ENDPOINT_CREATE_FAILED, align 4
  %351 = icmp eq i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i64 @broken(i32 %352)
  %354 = icmp ne i64 %353, 0
  br label %355

355:                                              ; preds = %348, %344
  %356 = phi i1 [ true, %344 ], [ %354, %348 ]
  %357 = zext i1 %356 to i32
  br label %398

358:                                              ; preds = %340
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @AUDCLNT_E_ENDPOINT_CREATE_FAILED, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %395, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %4, align 4
  %364 = load i32, i32* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %395, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* %4, align 4
  %368 = load i32, i32* @S_OK, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %390

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 16
  br i1 %377, label %388, label %378

378:                                              ; preds = %374, %370
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 12000
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 96000
  br label %386

386:                                              ; preds = %382, %378
  %387 = phi i1 [ true, %378 ], [ %385, %382 ]
  br label %388

388:                                              ; preds = %386, %374
  %389 = phi i1 [ true, %374 ], [ %387, %386 ]
  br label %390

390:                                              ; preds = %388, %366
  %391 = phi i1 [ false, %366 ], [ %389, %388 ]
  %392 = zext i1 %391 to i32
  %393 = call i64 @broken(i32 %392)
  %394 = icmp ne i64 %393, 0
  br label %395

395:                                              ; preds = %390, %362, %358
  %396 = phi i1 [ true, %362 ], [ true, %358 ], [ %394, %390 ]
  %397 = zext i1 %396 to i32
  br label %398

398:                                              ; preds = %395, %355
  %399 = phi i32 [ %357, %355 ], [ %397, %395 ]
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %4, align 4
  %408 = call i32 (i32, i8*, i64, ...) @ok(i32 %399, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i64 %402, i32 %404, i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %398, %327
  br label %410

410:                                              ; preds = %409, %298
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %412 = call i32 @CoTaskMemFree(%struct.TYPE_7__* %411)
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %414 = call i32 @CoTaskMemFree(%struct.TYPE_7__* %413)
  %415 = load i32*, i32** %3, align 8
  %416 = call i32 @IAudioClient_Release(i32* %415)
  br label %417

417:                                              ; preds = %410, %33
  %418 = load i32, i32* %9, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %9, align 4
  br label %13

420:                                              ; preds = %13
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8***) #1

declare dso_local i32 @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @IAudioClient_GetMixFormat(i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @IAudioClient_IsFormatSupported(i32*, i32, %struct.TYPE_7__*, %struct.TYPE_7__**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @trace(i8*, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_7__*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
