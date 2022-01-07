; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_vnswrr_module/extr_ngx_http_upstream_vnswrr_module.c_ngx_http_upstream_get_vnswrr.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_vnswrr_module/extr_ngx_http_upstream_vnswrr_module.c_ngx_http_upstream_get_vnswrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_16__ }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_15__* }

@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_12__*)* @ngx_http_upstream_get_vnswrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ngx_http_upstream_get_vnswrr(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %17 = call i64 (...) @ngx_time()
  store i64 %17, i64* %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %15, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %13, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %16, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %14, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %1
  %35 = call i32 (...) @ngx_random()
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %35, %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %11, align 8
  br label %74

55:                                               ; preds = %34
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %70, %55
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %11, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %59

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %83, align 8
  br label %84

84:                                               ; preds = %74, %1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %156

89:                                               ; preds = %84
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %89
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %97
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %116, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %107
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %122, %107
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %134, %138
  %140 = call i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_14__* %128, %struct.TYPE_11__* %129, i64 %133, i64 %139)
  br label %141

141:                                              ; preds = %127, %97, %89
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = urem i64 %145, %149
  store i64 %150, i64* %10, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %11, align 8
  br label %188

156:                                              ; preds = %84
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = icmp ne %struct.TYPE_15__* %159, null
  br i1 %160, label %161, label %183

161:                                              ; preds = %156
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = icmp ne %struct.TYPE_15__* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %161
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = urem i64 %172, %176
  store i64 %177, i64* %10, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  store %struct.TYPE_15__* %182, %struct.TYPE_15__** %11, align 8
  br label %187

183:                                              ; preds = %161, %156
  store i64 0, i64* %10, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  store %struct.TYPE_15__* %186, %struct.TYPE_15__** %11, align 8
  br label %187

187:                                              ; preds = %183, %168
  br label %188

188:                                              ; preds = %187, %141
  %189 = load i64, i64* %10, align 8
  store i64 %189, i64* %6, align 8
  store i64 1, i64* %9, align 8
  br label %190

190:                                              ; preds = %357, %188
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %9, align 8
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %194, %190
  %198 = phi i1 [ true, %190 ], [ %196, %194 ]
  br i1 %198, label %199, label %359

199:                                              ; preds = %197
  store i64 0, i64* %9, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %253

204:                                              ; preds = %199
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %207, %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = icmp ugt i64 %213, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %204
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %7, align 8
  br label %224

224:                                              ; preds = %219, %204
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %7, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = add i64 %231, %235
  %237 = call i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_14__* %225, %struct.TYPE_11__* %226, i64 %230, i64 %236)
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %239 = load i64, i64* %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = udiv i64 %243, 64
  store i64 %244, i64* %7, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %246 = load i64, i64* %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = urem i64 %250, 64
  %252 = shl i64 1, %251
  store i64 %252, i64* %5, align 8
  br label %259

253:                                              ; preds = %199
  %254 = load i64, i64* %6, align 8
  %255 = udiv i64 %254, 64
  store i64 %255, i64* %7, align 8
  %256 = load i64, i64* %6, align 8
  %257 = urem i64 %256, 64
  %258 = shl i64 1, %257
  store i64 %258, i64* %5, align 8
  br label %259

259:                                              ; preds = %253, %224
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* %7, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %5, align 8
  %267 = and i64 %265, %266
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  br label %309

270:                                              ; preds = %259
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 7
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %309

276:                                              ; preds = %270
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %276
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp sge i64 %284, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %281
  %290 = load i64, i64* %4, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %290, %293
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp sle i64 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %289
  br label %309

300:                                              ; preds = %289, %281, %276
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %301, %struct.TYPE_15__** %12, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 3
  store %struct.TYPE_15__* %302, %struct.TYPE_15__** %304, align 8
  %305 = load i64, i64* %6, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load i64, i64* %6, align 8
  store i64 %308, i64* %8, align 8
  br label %359

309:                                              ; preds = %299, %275, %269
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %309
  %315 = load i64, i64* %6, align 8
  %316 = add i64 %315, 1
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = urem i64 %316, %320
  br label %330

322:                                              ; preds = %309
  %323 = load i64, i64* %6, align 8
  %324 = add i64 %323, 1
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = urem i64 %324, %328
  br label %330

330:                                              ; preds = %322, %314
  %331 = phi i64 [ %321, %314 ], [ %329, %322 ]
  store i64 %331, i64* %6, align 8
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %330
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %338 = load i64, i64* %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %340, align 8
  br label %357

342:                                              ; preds = %330
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %344, align 8
  %346 = icmp ne %struct.TYPE_15__* %345, null
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  br label %355

351:                                              ; preds = %342
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %353, align 8
  br label %355

355:                                              ; preds = %351, %347
  %356 = phi %struct.TYPE_15__* [ %350, %347 ], [ %354, %351 ]
  br label %357

357:                                              ; preds = %355, %336
  %358 = phi %struct.TYPE_15__* [ %341, %336 ], [ %356, %355 ]
  store %struct.TYPE_15__* %358, %struct.TYPE_15__** %11, align 8
  br label %190

359:                                              ; preds = %300, %197
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %361 = icmp eq %struct.TYPE_15__* %360, null
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %417

363:                                              ; preds = %359
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 1
  store %struct.TYPE_15__* %364, %struct.TYPE_15__** %366, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %387

371:                                              ; preds = %363
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %373 = load i64, i64* %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = udiv i64 %377, 64
  store i64 %378, i64* %7, align 8
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %380 = load i64, i64* %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = urem i64 %384, 64
  %386 = shl i64 1, %385
  store i64 %386, i64* %5, align 8
  br label %393

387:                                              ; preds = %363
  %388 = load i64, i64* %8, align 8
  %389 = udiv i64 %388, 64
  store i64 %389, i64* %7, align 8
  %390 = load i64, i64* %8, align 8
  %391 = urem i64 %390, 64
  %392 = shl i64 1, %391
  store i64 %392, i64* %5, align 8
  br label %393

393:                                              ; preds = %387, %371
  %394 = load i64, i64* %5, align 8
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 0
  %397 = load i64*, i64** %396, align 8
  %398 = load i64, i64* %7, align 8
  %399 = getelementptr inbounds i64, i64* %397, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = or i64 %400, %394
  store i64 %401, i64* %399, align 8
  %402 = load i64, i64* %4, align 8
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 2
  %405 = load i64, i64* %404, align 8
  %406 = sub nsw i64 %402, %405
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = icmp sgt i64 %406, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %393
  %412 = load i64, i64* %4, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 2
  store i64 %412, i64* %414, align 8
  br label %415

415:                                              ; preds = %411, %393
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %416, %struct.TYPE_15__** %2, align 8
  br label %417

417:                                              ; preds = %415, %362
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %418
}

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_random(...) #1

declare dso_local i32 @ngx_http_upstream_init_virtual_peers(%struct.TYPE_14__*, %struct.TYPE_11__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
