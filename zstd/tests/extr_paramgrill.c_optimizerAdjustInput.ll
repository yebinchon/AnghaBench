; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_optimizerAdjustInput.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_optimizerAdjustInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@NUM_PARAMS = common dso_local global i64 0, align 8
@PARAM_UNSET = common dso_local global i64 0, align 8
@mintable = common dso_local global i64* null, align 8
@maxtable = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"Warning: parameter %s not in valid range, adjusting to \00", align 1
@g_paramNames = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@wlog_ind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"Warning: windowLog larger than src/block size, adjusted to %u\0A\00", align 1
@clog_ind = common dso_local global i64 0, align 8
@strt_ind = common dso_local global i64 0, align 8
@ZSTD_btlazy2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"Warning: chainlog too much larger than windowLog size, adjusted to %u\0A\00", align 1
@hlog_ind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [70 x i8] c"Warning: hashlog too much larger than windowLog size, adjusted to %u\0A\00", align 1
@slog_ind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"Warning: searchLog larger than chainLog, adjusted to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @optimizerAdjustInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimizerAdjustInput(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %67, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NUM_PARAMS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PARAM_UNSET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @mintable, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @MAX(i64 %29, i64 %33)
  %35 = load i32*, i32** @maxtable, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @MIN(i64 %34, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %40, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %23
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %49, i64* %54, align 8
  %55 = load i32*, i32** @g_paramNames, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @stderr, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @displayParamVal(i32 %60, i64 %61, i64 %62, i32 0)
  %64 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %48, %23
  br label %66

66:                                               ; preds = %65, %14
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @wlog_ind, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PARAM_UNSET, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %135

79:                                               ; preds = %70
  %80 = load i64, i64* %4, align 8
  %81 = icmp ugt i64 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, i64* %4, align 8
  %84 = sub i64 %83, 1
  %85 = call i32 @ZSTD_highbit32(i64 %84)
  %86 = add nsw i32 %85, 1
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %82
  %89 = phi i32 [ %86, %82 ], [ 1, %87 ]
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ult i64 %91, 2147483648
  br i1 %92, label %93, label %134

93:                                               ; preds = %88
  %94 = load i64, i64* %7, align 8
  %95 = add nsw i64 %94, 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @wlog_ind, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %95, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %93
  %104 = load i64*, i64** @mintable, align 8
  %105 = load i64, i64* @wlog_ind, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @MAX(i64 %107, i64 %108)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @wlog_ind, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %110, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %103
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @wlog_ind, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 %119, i64* %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @wlog_ind, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %118, %103
  br label %134

134:                                              ; preds = %133, %93, %88
  br label %135

135:                                              ; preds = %134, %70
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @wlog_ind, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PARAM_UNSET, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %211

144:                                              ; preds = %135
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @clog_ind, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PARAM_UNSET, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %211

153:                                              ; preds = %144
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @strt_ind, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PARAM_UNSET, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %171, label %162

162:                                              ; preds = %153
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @strt_ind, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ZSTD_btlazy2, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %162, %153
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @wlog_ind, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %9, align 8
  br label %186

179:                                              ; preds = %162
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* @wlog_ind, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %9, align 8
  br label %186

186:                                              ; preds = %179, %171
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @clog_ind, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %186
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @clog_ind, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %196, i64* %201, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* @clog_ind, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %195, %186
  br label %211

211:                                              ; preds = %210, %144, %135
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* @wlog_ind, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PARAM_UNSET, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %266

220:                                              ; preds = %211
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i64*, i64** %222, align 8
  %224 = load i64, i64* @hlog_ind, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @PARAM_UNSET, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %266

229:                                              ; preds = %220
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = load i64, i64* @wlog_ind, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = load i64, i64* @hlog_ind, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %236, %242
  br i1 %243, label %244, label %265

244:                                              ; preds = %229
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i64, i64* @wlog_ind, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @hlog_ind, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  store i64 %251, i64* %256, align 8
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = load i64, i64* @hlog_ind, align 8
  %261 = getelementptr inbounds i64, i64* %259, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %244, %229
  br label %266

266:                                              ; preds = %265, %220, %211
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* @slog_ind, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @PARAM_UNSET, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %319

275:                                              ; preds = %266
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i64*, i64** %277, align 8
  %279 = load i64, i64* @clog_ind, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @PARAM_UNSET, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %319

284:                                              ; preds = %275
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* @slog_ind, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* @clog_ind, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = icmp sgt i64 %290, %296
  br i1 %297, label %298, label %318

298:                                              ; preds = %284
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = load i64, i64* @slog_ind, align 8
  %303 = getelementptr inbounds i64, i64* %301, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* @clog_ind, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  store i64 %304, i64* %309, align 8
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = load i64, i64* @slog_ind, align 8
  %314 = getelementptr inbounds i64, i64* %312, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %316)
  br label %318

318:                                              ; preds = %298, %284
  br label %319

319:                                              ; preds = %318, %275, %266
  ret void
}

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @displayParamVal(i32, i64, i64, i32) #1

declare dso_local i32 @ZSTD_highbit32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
