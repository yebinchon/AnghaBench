; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_refilter.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_refilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i8*, i64, i32, i32, i64, i64, i32, i32*, %struct.TYPE_14__*, i32, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i8*, %struct.TYPE_15__, i32, i32*, i32*, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Filter start\00", align 1
@FALSE = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@filter_elements = common dso_local global i32 0, align 4
@tpool = common dso_local global i32 0, align 4
@lev_sort = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@TRUE = common dso_local global i64 0, align 8
@MENU_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Resize based on re-filter\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Filter done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @rofi_view_refilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_refilter(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %19 = call i32 @TICK_N(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 15
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = call i32 @_rofi_view_reload_row(%struct.TYPE_17__* %25)
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 15
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 12
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 12
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @helper_tokenize_free(i32* %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 12
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %256

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 13
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strlen(i32 %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %256

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 13
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @mode_preprocess_input(i32 %58, i32 %63)
  store i8* %64, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @g_utf8_strlen(i8* %68, i32 -1)
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  store i32 %72, i32* %5, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %75 = call i32* @helper_tokenize(i8* %73, i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 12
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 500
  %82 = call i32 @MAX(i32 1, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %7, align 8
  %86 = alloca %struct.TYPE_16__, i64 %84, align 16
  store i64 %84, i64* %8, align 8
  %87 = call i32 @g_mutex_init(i32* %10)
  %88 = call i32 @g_cond_init(i32* %9)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = udiv i32 %94, %95
  store i32 %96, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %167, %71
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %170

101:                                              ; preds = %97
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 9
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = mul i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 16
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = add i32 %117, 1
  %119 = load i32, i32* %12, align 4
  %120 = mul i32 %118, %119
  %121 = call i32 @MIN(i32 %116, i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 8
  store i32 %121, i32* %125, align 16
  %126 = load i32, i32* %13, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* %13, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 7
  store i32* %9, i32** %133, align 8
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  store i32* %10, i32** %137, align 16
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  store i32* %11, i32** %141, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  store i32 %142, i32* %146, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i8* %147, i8** %151, align 16
  %152 = load i32, i32* @filter_elements, align 4
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i32 %152, i32* %157, align 8
  %158 = load i32, i32* %13, align 4
  %159 = icmp ugt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %101
  %161 = load i32, i32* @tpool, align 4
  %162 = load i32, i32* %13, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %163
  %165 = call i32 @g_thread_pool_push(i32 %161, %struct.TYPE_16__* %164, i32* null)
  br label %166

166:                                              ; preds = %160, %101
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %97

170:                                              ; preds = %97
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 0
  %172 = call i32 @rofi_view_call_thread(%struct.TYPE_16__* %171, i32* null)
  %173 = load i32, i32* %6, align 4
  %174 = icmp ugt i32 %173, 1
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = call i32 @g_mutex_lock(i32* %10)
  br label %177

177:                                              ; preds = %180, %175
  %178 = load i32, i32* %11, align 4
  %179 = icmp ugt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @g_cond_wait(i32* %9, i32* %10)
  br label %177

182:                                              ; preds = %177
  %183 = call i32 @g_mutex_unlock(i32* %10)
  br label %184

184:                                              ; preds = %182, %170
  %185 = call i32 @g_cond_clear(i32* %9)
  %186 = call i32 @g_mutex_clear(i32* %10)
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %233, %184
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %236

191:                                              ; preds = %187
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* %14, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 16
  %198 = icmp ne i32 %192, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %191
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 16
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32, i32* %14, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 4, %221
  %223 = trunc i64 %222 to i32
  %224 = call i32 @memmove(i32* %205, i32* %215, i32 %223)
  br label %225

225:                                              ; preds = %199, %191
  %226 = load i32, i32* %14, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %3, align 4
  %232 = add i32 %231, %230
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %14, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %187

236:                                              ; preds = %187
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %236
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @lev_sort, align 4
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 11
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @g_qsort_with_data(i32* %242, i32 %243, i32 4, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %239, %236
  %250 = load i32, i32* %3, align 4
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = call i32 @g_free(i8* %253)
  %255 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %255)
  br label %280

256:                                              ; preds = %47, %42
  store i32 0, i32* %15, align 4
  br label %257

257:                                              ; preds = %271, %256
  %258 = load i32, i32* %15, align 4
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ult i32 %258, %261
  br i1 %262, label %263, label %274

263:                                              ; preds = %257
  %264 = load i32, i32* %15, align 4
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %15, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  br label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %15, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %15, align 4
  br label %257

274:                                              ; preds = %257
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  br label %280

280:                                              ; preds = %274, %249
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @listview_set_num_elements(i32 %283, i32 %286)
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 10
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %280
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %295)
  store i8* %296, i8** %16, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 10
  %299 = load i64, i64* %298, align 8
  %300 = load i8*, i8** %16, align 8
  %301 = call i32 @textbox_text(i64 %299, i8* %300)
  %302 = load i8*, i8** %16, align 8
  %303 = call i32 @g_free(i8* %302)
  br label %304

304:                                              ; preds = %292, %280
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 9
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %321

309:                                              ; preds = %304
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %312)
  store i8* %313, i8** %17, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 9
  %316 = load i64, i64* %315, align 8
  %317 = load i8*, i8** %17, align 8
  %318 = call i32 @textbox_text(i64 %316, i8* %317)
  %319 = load i8*, i8** %17, align 8
  %320 = call i32 @g_free(i8* %319)
  br label %321

321:                                              ; preds = %309, %304
  %322 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %323 = load i64, i64* @TRUE, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %353

325:                                              ; preds = %321
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %353

330:                                              ; preds = %325
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp sgt i32 %333, 1
  br i1 %334, label %335, label %353

335:                                              ; preds = %330
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @listview_get_selected(i32 %341)
  %343 = getelementptr inbounds i32, i32* %338, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 3
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* @MENU_OK, align 4
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 7
  store i32 %347, i32* %349, align 8
  %350 = load i64, i64* @TRUE, align 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 6
  store i64 %350, i64* %352, align 8
  br label %353

353:                                              ; preds = %335, %330, %325, %321
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %355 = call i32 @rofi_view_calculate_height(%struct.TYPE_17__* %354)
  store i32 %355, i32* %18, align 4
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %356, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %353
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 8
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %366 = call i32 @rofi_view_calculate_window_position(%struct.TYPE_17__* %365)
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %368 = call i32 @rofi_view_window_update_size(%struct.TYPE_17__* %367)
  %369 = call i32 @g_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %370

370:                                              ; preds = %361, %353
  %371 = load i8*, i8** @FALSE, align 8
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 5
  store i8* %371, i8** %373, align 8
  %374 = call i32 @TICK_N(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i32 @_rofi_view_reload_row(%struct.TYPE_17__*) #1

declare dso_local i32 @helper_tokenize_free(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @mode_preprocess_input(i32, i32) #1

declare dso_local i32 @g_utf8_strlen(i8*, i32) #1

declare dso_local i32* @helper_tokenize(i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @g_mutex_init(i32*) #1

declare dso_local i32 @g_cond_init(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @g_thread_pool_push(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @rofi_view_call_thread(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @g_mutex_lock(i32*) #1

declare dso_local i32 @g_cond_wait(i32*, i32*) #1

declare dso_local i32 @g_mutex_unlock(i32*) #1

declare dso_local i32 @g_cond_clear(i32*) #1

declare dso_local i32 @g_mutex_clear(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @g_qsort_with_data(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @listview_set_num_elements(i32, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @textbox_text(i64, i8*) #1

declare dso_local i64 @listview_get_selected(i32) #1

declare dso_local i32 @rofi_view_calculate_height(%struct.TYPE_17__*) #1

declare dso_local i32 @rofi_view_calculate_window_position(%struct.TYPE_17__*) #1

declare dso_local i32 @rofi_view_window_update_size(%struct.TYPE_17__*) #1

declare dso_local i32 @g_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
