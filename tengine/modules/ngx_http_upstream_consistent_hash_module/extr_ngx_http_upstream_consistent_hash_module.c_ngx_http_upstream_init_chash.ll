; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_init_chash.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_init_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { i32, i32, i8*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_27__*, %struct.TYPE_27__***, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32, i32, i32)* }
%struct.TYPE_22__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_consistent_hash_module = common dso_local global i32 0, align 4
@ngx_http_upstream_init_chash_peer = common dso_local global i32 0, align 4
@NGX_CHASH_VIRTUAL_NODE_NUMBER = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"server id %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%V%Z\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"weigth[%d] is too large, is must be less than %d\00", align 1
@ngx_http_upstream_chash_cmp = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, %struct.TYPE_23__*)* @ngx_http_upstream_init_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_chash(%struct.TYPE_28__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = call i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_28__* %20, %struct.TYPE_23__* %21)
  %23 = load i64, i64* @NGX_ERROR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @NGX_ERROR, align 8
  store i64 %26, i64* %3, align 8
  br label %407

27:                                               ; preds = %2
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = load i32, i32* @ngx_http_upstream_consistent_hash_module, align 4
  %30 = call %struct.TYPE_26__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_23__* %28, i32 %29)
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %19, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %32 = icmp eq %struct.TYPE_26__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %3, align 8
  br label %407

35:                                               ; preds = %27
  %36 = load i32, i32* @ngx_http_upstream_init_chash_peer, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %17, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %46 = icmp eq %struct.TYPE_24__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %3, align 8
  br label %407

49:                                               ; preds = %35
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i8* @ngx_pcalloc(i32 %57, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_27__***
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 4
  store %struct.TYPE_27__*** %63, %struct.TYPE_27__**** %65, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_27__***, %struct.TYPE_27__**** %67, align 8
  %69 = icmp eq %struct.TYPE_27__*** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %49
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %3, align 8
  br label %407

72:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %128, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %131

77:                                               ; preds = %73
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NGX_CHASH_VIRTUAL_NODE_NUMBER, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NGX_CHASH_VIRTUAL_NODE_NUMBER, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = call i8* @ngx_pcalloc(i32 %94, i32 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_27__**
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_27__***, %struct.TYPE_27__**** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_27__**, %struct.TYPE_27__*** %113, i64 %115
  store %struct.TYPE_27__** %110, %struct.TYPE_27__*** %116, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_27__***, %struct.TYPE_27__**** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_27__**, %struct.TYPE_27__*** %119, i64 %121
  %123 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %122, align 8
  %124 = icmp eq %struct.TYPE_27__** %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %77
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %3, align 8
  br label %407

127:                                              ; preds = %77
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %73

131:                                              ; preds = %73
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 24
  %141 = trunc i64 %140 to i32
  %142 = call i8* @ngx_pcalloc(i32 %134, i32 %141)
  %143 = bitcast i8* %142 to %struct.TYPE_27__*
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 3
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %145, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = icmp eq %struct.TYPE_27__* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i64, i64* @NGX_ERROR, align 8
  store i64 %151, i64* %3, align 8
  br label %407

152:                                              ; preds = %131
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i8* @ngx_pcalloc(i32 %155, i32 %162)
  %164 = bitcast i8* %163 to %struct.TYPE_22__*
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 5
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %166, align 8
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = icmp eq %struct.TYPE_22__* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %152
  %172 = load i64, i64* @NGX_ERROR, align 8
  store i64 %172, i64* %3, align 8
  br label %407

173:                                              ; preds = %152
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %276, %173
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %279

180:                                              ; preds = %176
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i64 %185
  store %struct.TYPE_25__* %186, %struct.TYPE_25__** %16, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ngx_atoi(i32 %190, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load i64, i64* @NGX_ERROR, align 8
  %198 = trunc i64 %197 to i32
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %180
  %201 = load i32, i32* %9, align 4
  %202 = icmp sgt i32 %201, 65535
  br i1 %202, label %203, label %220

203:                                              ; preds = %200, %180
  %204 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ngx_log_debug1(i32 %204, i32 %207, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %208)
  %210 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  %213 = call i32 @ngx_snprintf(i32* %210, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %212)
  %214 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %215 = call i32 @ngx_strlen(i32* %214)
  store i32 %215, i32* %11, align 4
  %216 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %217 = load i32, i32* %11, align 4
  %218 = call i8* @ngx_murmur_hash2(i32* %216, i32 %217)
  %219 = ptrtoint i8* %218 to i32
  store i32 %219, i32* %9, align 4
  br label %220

220:                                              ; preds = %203, %200
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @NGX_CHASH_VIRTUAL_NODE_NUMBER, align 4
  %225 = mul nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %8, align 8
  %227 = load i64, i64* %8, align 8
  %228 = icmp sge i64 %227, 16384
  br i1 %228, label %229, label %241

229:                                              ; preds = %220
  %230 = load i32, i32* @NGX_LOG_WARN, align 4
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i64, i64* %8, align 8
  %235 = load i32, i32* @NGX_CHASH_VIRTUAL_NODE_NUMBER, align 4
  %236 = sext i32 %235 to i64
  %237 = sdiv i64 %234, %236
  %238 = load i32, i32* @NGX_CHASH_VIRTUAL_NODE_NUMBER, align 4
  %239 = sdiv i32 16384, %238
  %240 = call i32 @ngx_log_error(i32 %230, i32 %233, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %237, i32 %239)
  store i64 16384, i64* %8, align 8
  br label %241

241:                                              ; preds = %229, %220
  store i64 0, i64* %7, align 8
  br label %242

242:                                              ; preds = %272, %241
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %242
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %248, align 8
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i64 %254
  store %struct.TYPE_27__* %255, %struct.TYPE_27__** %18, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 3
  store %struct.TYPE_25__* %256, %struct.TYPE_25__** %258, align 8
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %9, align 4
  %263 = mul nsw i32 %262, 256
  %264 = mul nsw i32 %263, 16
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %7, align 8
  %267 = add nsw i64 %265, %266
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %10, align 4
  %269 = call i8* @ngx_murmur_hash2(i32* %10, i32 4)
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 2
  store i8* %269, i8** %271, align 8
  br label %272

272:                                              ; preds = %246
  %273 = load i64, i64* %7, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %7, align 8
  br label %242

275:                                              ; preds = %242
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %176

279:                                              ; preds = %176
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i64 1
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* @ngx_http_upstream_chash_cmp, align 8
  %289 = inttoptr i64 %288 to i8*
  %290 = call i32 @ngx_qsort(%struct.TYPE_27__* %283, i64 %287, i32 24, i8* %289)
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = trunc i64 %293 to i32
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32* @ngx_calloc(i32 %294, i32 %297)
  store i32* %298, i32** %14, align 8
  %299 = load i32*, i32** %14, align 8
  %300 = icmp eq i32* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %279
  %302 = load i64, i64* @NGX_ERROR, align 8
  store i64 %302, i64* %3, align 8
  br label %407

303:                                              ; preds = %279
  store i32 1, i32* %12, align 4
  br label %304

304:                                              ; preds = %361, %303
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp sle i32 %305, %308
  br i1 %309, label %310, label %364

310:                                              ; preds = %304
  %311 = load i32, i32* %12, align 4
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 1
  store i32 %311, i32* %318, align 4
  %319 = load i32, i32* %12, align 4
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 0
  store i32 %319, i32* %326, align 4
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %328, align 8
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  store i32 %334, i32* %15, align 4
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %336, align 8
  %338 = load i32, i32* %12, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i64 %339
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_27__***, %struct.TYPE_27__**** %342, align 8
  %344 = load i32, i32* %15, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_27__**, %struct.TYPE_27__*** %343, i64 %345
  %347 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %346, align 8
  %348 = load i32*, i32** %14, align 8
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %347, i64 %353
  store %struct.TYPE_27__* %340, %struct.TYPE_27__** %354, align 8
  %355 = load i32*, i32** %14, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %310
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %12, align 4
  br label %304

364:                                              ; preds = %304
  %365 = load i32*, i32** %14, align 8
  %366 = call i32 @ngx_free(i32* %365)
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i8* @ngx_pcalloc(i32 %369, i32 4)
  %371 = bitcast i8* %370 to %struct.TYPE_19__*
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 2
  store %struct.TYPE_19__* %371, %struct.TYPE_19__** %373, align 8
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %375, align 8
  %377 = icmp eq %struct.TYPE_19__* %376, null
  br i1 %377, label %378, label %380

378:                                              ; preds = %364
  %379 = load i64, i64* @NGX_ERROR, align 8
  store i64 %379, i64* %3, align 8
  br label %407

380:                                              ; preds = %364
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %382, align 8
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @ngx_segment_tree_init(%struct.TYPE_19__* %383, i32 %386, i32 %389)
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 2
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 0
  %395 = load i32 (%struct.TYPE_19__*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32)** %394, align 8
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 2
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %397, align 8
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 %395(%struct.TYPE_19__* %398, i32 1, i32 1, i32 %401)
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 1
  %405 = call i32 @ngx_queue_init(i32* %404)
  %406 = load i64, i64* @NGX_OK, align 8
  store i64 %406, i64* %3, align 8
  br label %407

407:                                              ; preds = %380, %378, %301, %171, %150, %125, %70, %47, %33, %25
  %408 = load i64, i64* %3, align 8
  ret i64 %408
}

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_28__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_26__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_atoi(i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_snprintf(i32*, i32, i8*, i32*) #1

declare dso_local i32 @ngx_strlen(i32*) #1

declare dso_local i8* @ngx_murmur_hash2(i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @ngx_qsort(%struct.TYPE_27__*, i64, i32, i8*) #1

declare dso_local i32* @ngx_calloc(i32, i32) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i32 @ngx_segment_tree_init(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
