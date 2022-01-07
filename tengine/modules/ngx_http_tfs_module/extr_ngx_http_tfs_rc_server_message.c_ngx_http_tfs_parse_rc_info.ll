; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_parse_rc_info.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_parse_rc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_14__, i8*, i8*, %struct.TYPE_18__*, i32* }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*)* @ngx_http_tfs_parse_rc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_parse_rc_info(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64* %2, i64** %7, align 8
  %22 = load i64*, i64** %7, align 8
  store i64* %22, i64** %8, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = bitcast i64* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 4
  store i64* %29, i64** %8, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %3
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @ngx_slab_alloc_locked(i32 %37, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 11
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %34
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 11
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ngx_http_tfs_expire_and_alloc(i32* %55, i32 %61)
  br label %63

63:                                               ; preds = %52, %34
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 11
  %66 = load i32*, i32** %65, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ngx_memcpy(i32* %66, i64* %67, i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 8, %78
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 %79
  store i64* %81, i64** %8, align 8
  br label %82

82:                                               ; preds = %63, %3
  %83 = load i64*, i64** %8, align 8
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 4
  store i64* %89, i64** %8, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 10
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %18, align 8
  store i64 0, i64* %15, align 8
  br label %93

93:                                               ; preds = %326, %82
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %94, %98
  br i1 %99, label %100, label %329

100:                                              ; preds = %93
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  store i64* %106, i64** %8, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %150

111:                                              ; preds = %100
  %112 = load i64*, i64** %8, align 8
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  %115 = load i64*, i64** %8, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 4
  store i64* %116, i64** %8, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %13, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i32* %124, i32** %21, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ngx_http_tfs_parse_tair_server_addr_info(i32* %125, i64* %126, i64 %127, i32 %130, i32 1)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @NGX_ERROR, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i64, i64* @NGX_ERROR, align 8
  store i64 %136, i64* %4, align 8
  br label %570

137:                                              ; preds = %119
  %138 = load i64*, i64** %8, align 8
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @ngx_murmur_hash2(i64* %138, i64 %139)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add nsw i64 %143, 1
  %145 = load i64*, i64** %8, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 %144
  store i64* %146, i64** %8, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store i32 1, i32* %148, align 8
  br label %149

149:                                              ; preds = %137, %111
  br label %150

150:                                              ; preds = %149, %100
  %151 = load i64*, i64** %8, align 8
  %152 = bitcast i64* %151 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i64*, i64** %8, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 4
  store i64* %157, i64** %8, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  store %struct.TYPE_17__* %160, %struct.TYPE_17__** %19, align 8
  store i64 0, i64* %16, align 8
  br label %161

161:                                              ; preds = %320, %150
  %162 = load i64, i64* %16, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %162, %166
  br i1 %167, label %168, label %323

168:                                              ; preds = %161
  %169 = load i64*, i64** %8, align 8
  %170 = bitcast i64* %169 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i64*, i64** %8, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 4
  store i64* %175, i64** %8, align 8
  %176 = load i64*, i64** %8, align 8
  %177 = bitcast i64* %176 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i64*, i64** %8, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 4
  store i64* %182, i64** %8, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = bitcast i64* %183 to i32*
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %168
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load i64, i64* @NGX_ERROR, align 8
  store i64 %192, i64* %4, align 8
  br label %570

193:                                              ; preds = %168
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  %199 = load i64*, i64** %8, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 4
  store i64* %200, i64** %8, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @ngx_slab_alloc_locked(i32 %203, i32 %207)
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  store i32* %209, i32** %212, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %228

218:                                              ; preds = %193
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ngx_http_tfs_expire_and_alloc(i32* %222, i32 %226)
  br label %228

228:                                              ; preds = %218, %193
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i64*, i64** %8, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @ngx_memcpy(i32* %232, i64* %233, i32 %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 5
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  %246 = load i64*, i64** %8, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  store i64* %248, i64** %8, align 8
  %249 = load i64*, i64** %8, align 8
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  %253 = icmp sle i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %228
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  store i32 0, i32* %257, align 8
  %258 = load i64, i64* @NGX_ERROR, align 8
  store i64 %258, i64* %4, align 8
  br label %570

259:                                              ; preds = %228
  %260 = load i32, i32* %11, align 4
  %261 = sub nsw i32 %260, 1
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  %265 = load i64*, i64** %8, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 4
  store i64* %266, i64** %8, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i8* @ngx_slab_alloc_locked(i32 %269, i32 %273)
  %275 = bitcast i8* %274 to i32*
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  store i32* %275, i32** %278, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %294

284:                                              ; preds = %259
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ngx_http_tfs_expire_and_alloc(i32* %288, i32 %292)
  br label %294

294:                                              ; preds = %284, %259
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i64*, i64** %8, align 8
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @ngx_memcpy(i32* %298, i64* %299, i32 %303)
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  %310 = load i64*, i64** %8, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  store i64* %312, i64** %8, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 2
  %317 = call i32 @ngx_http_tfs_parse_inet(%struct.TYPE_12__* %314, i32* %316)
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 1
  store %struct.TYPE_17__* %319, %struct.TYPE_17__** %19, align 8
  br label %320

320:                                              ; preds = %294
  %321 = load i64, i64* %16, align 8
  %322 = add nsw i64 %321, 1
  store i64 %322, i64* %16, align 8
  br label %161

323:                                              ; preds = %161
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 1
  store %struct.TYPE_18__* %325, %struct.TYPE_18__** %18, align 8
  br label %326

326:                                              ; preds = %323
  %327 = load i64, i64* %15, align 8
  %328 = add nsw i64 %327, 1
  store i64 %328, i64* %15, align 8
  br label %93

329:                                              ; preds = %93
  %330 = load i64*, i64** %8, align 8
  %331 = bitcast i64* %330 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  %335 = load i64*, i64** %8, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 4
  store i64* %336, i64** %8, align 8
  %337 = load i64*, i64** %8, align 8
  %338 = bitcast i64* %337 to i8**
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 9
  store i8* %339, i8** %341, align 8
  %342 = load i64*, i64** %8, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 8
  store i64* %343, i64** %8, align 8
  %344 = load i64*, i64** %8, align 8
  %345 = bitcast i64* %344 to i8**
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 8
  store i8* %346, i8** %348, align 8
  %349 = load i64*, i64** %8, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 8
  store i64* %350, i64** %8, align 8
  %351 = load i64*, i64** %8, align 8
  %352 = bitcast i64* %351 to i32*
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %11, align 4
  %354 = load i64*, i64** %8, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 4
  store i64* %355, i64** %8, align 8
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  store i32 0, i32* %358, align 8
  %359 = load i32, i32* %11, align 4
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %407

361:                                              ; preds = %329
  %362 = load i32, i32* %11, align 4
  %363 = sub nsw i32 %362, 1
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 7
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 0
  store i32 %363, i32* %366, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i8* @ngx_slab_alloc_locked(i32 %369, i32 %373)
  %375 = bitcast i8* %374 to i32*
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  store i32* %375, i32** %378, align 8
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = icmp eq i32* %382, null
  br i1 %383, label %384, label %394

384:                                              ; preds = %361
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 7
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 7
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @ngx_http_tfs_expire_and_alloc(i32* %388, i32 %392)
  br label %394

394:                                              ; preds = %384, %361
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 7
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = load i64*, i64** %8, align 8
  %400 = load i32, i32* %11, align 4
  %401 = sub nsw i32 %400, 1
  %402 = call i32 @ngx_memcpy(i32* %398, i64* %399, i32 %401)
  %403 = load i32, i32* %11, align 4
  %404 = load i64*, i64** %8, align 8
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i64, i64* %404, i64 %405
  store i64* %406, i64** %8, align 8
  br label %407

407:                                              ; preds = %394, %329
  %408 = load i64*, i64** %8, align 8
  %409 = bitcast i64* %408 to i32*
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %12, align 4
  %411 = load i64*, i64** %8, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 4
  store i64* %412, i64** %8, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 4
  store i64 0, i64* %414, align 8
  store i64 0, i64* %15, align 8
  br label %415

415:                                              ; preds = %560, %407
  %416 = load i64, i64* %15, align 8
  %417 = load i32, i32* %12, align 4
  %418 = sext i32 %417 to i64
  %419 = icmp slt i64 %416, %418
  br i1 %419, label %420, label %563

420:                                              ; preds = %415
  %421 = load i64*, i64** %8, align 8
  %422 = getelementptr inbounds i64, i64* %421, i64 4
  store i64* %422, i64** %8, align 8
  %423 = load i64*, i64** %8, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 4
  store i64* %424, i64** %8, align 8
  %425 = load i64*, i64** %8, align 8
  %426 = bitcast i64* %425 to i32*
  %427 = load i32, i32* %426, align 4
  store i32 %427, i32* %10, align 4
  %428 = load i64*, i64** %8, align 8
  %429 = getelementptr inbounds i64, i64* %428, i64 4
  store i64* %429, i64** %8, align 8
  %430 = load i64*, i64** %8, align 8
  %431 = call i32 @ngx_http_tfs_get_cluster_id(i64* %430)
  store i32 %431, i32* %9, align 4
  %432 = load i32, i32* %10, align 4
  %433 = load i64*, i64** %8, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  store i64* %435, i64** %8, align 8
  store i64 0, i64* %16, align 8
  br label %436

436:                                              ; preds = %459, %420
  %437 = load i64, i64* %16, align 8
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = icmp slt i64 %437, %440
  br i1 %441, label %442, label %462

442:                                              ; preds = %436
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 6
  %445 = load %struct.TYPE_20__*, %struct.TYPE_20__** %444, align 8
  %446 = load i64, i64* %16, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %445, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %9, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %458

452:                                              ; preds = %442
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 6
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %454, align 8
  %456 = load i64, i64* %16, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i64 %456
  store %struct.TYPE_20__* %457, %struct.TYPE_20__** %20, align 8
  br label %462

458:                                              ; preds = %442
  br label %459

459:                                              ; preds = %458
  %460 = load i64, i64* %16, align 8
  %461 = add nsw i64 %460, 1
  store i64 %461, i64* %16, align 8
  br label %436

462:                                              ; preds = %452, %436
  %463 = load i64, i64* %16, align 8
  %464 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = icmp sge i64 %463, %466
  br i1 %467, label %468, label %484

468:                                              ; preds = %462
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 6
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %470, align 8
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 4
  %474 = load i64, i64* %473, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %473, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i64 %474
  store %struct.TYPE_20__* %476, %struct.TYPE_20__** %20, align 8
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %477, i32 0, i32 1
  store i64 0, i64* %478, align 8
  %479 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %479, i32 0, i32 3
  store i64 0, i64* %480, align 8
  %481 = load i32, i32* %9, align 4
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 0
  store i32 %481, i32* %483, align 8
  br label %484

484:                                              ; preds = %468, %462
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_19__*, %struct.TYPE_19__** %486, align 8
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = add nsw i64 %490, 1
  store i64 %491, i64* %489, align 8
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %487, i64 %490
  store %struct.TYPE_19__* %492, %struct.TYPE_19__** %17, align 8
  %493 = load i64*, i64** %8, align 8
  %494 = bitcast i64* %493 to i32*
  %495 = load i32, i32* %494, align 4
  store i32 %495, i32* %11, align 4
  %496 = load i32, i32* %11, align 4
  %497 = icmp sle i32 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %484
  %499 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 0
  store i32 0, i32* %501, align 8
  %502 = load i64, i64* @NGX_ERROR, align 8
  store i64 %502, i64* %4, align 8
  br label %570

503:                                              ; preds = %484
  %504 = load i32, i32* %11, align 4
  %505 = sub nsw i32 %504, 1
  %506 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 2
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 0
  store i32 %505, i32* %508, align 8
  %509 = load i64*, i64** %8, align 8
  %510 = getelementptr inbounds i64, i64* %509, i64 4
  store i64* %510, i64** %8, align 8
  %511 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i8* @ngx_slab_alloc_locked(i32 %513, i32 %517)
  %519 = bitcast i8* %518 to i32*
  %520 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %521 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %521, i32 0, i32 1
  store i32* %519, i32** %522, align 8
  %523 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %524 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = icmp eq i32* %526, null
  br i1 %527, label %528, label %538

528:                                              ; preds = %503
  %529 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %530 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %530, i32 0, i32 1
  %532 = load i32*, i32** %531, align 8
  %533 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %534 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @ngx_http_tfs_expire_and_alloc(i32* %532, i32 %536)
  br label %538

538:                                              ; preds = %528, %503
  %539 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %540, i32 0, i32 1
  %542 = load i32*, i32** %541, align 8
  %543 = load i64*, i64** %8, align 8
  %544 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = call i32 @memcpy(i32* %542, i64* %543, i32 %547)
  %549 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %550 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %549, i32 0, i32 0
  store i32 -1, i32* %550, align 8
  %551 = load i32, i32* %11, align 4
  %552 = load i64*, i64** %8, align 8
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i64, i64* %552, i64 %553
  store i64* %554, i64** %8, align 8
  %555 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %556 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %555, i32 0, i32 2
  %557 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %558 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %557, i32 0, i32 1
  %559 = call i32 @ngx_http_tfs_parse_inet(%struct.TYPE_12__* %556, i32* %558)
  br label %560

560:                                              ; preds = %538
  %561 = load i64, i64* %15, align 8
  %562 = add nsw i64 %561, 1
  store i64 %562, i64* %15, align 8
  br label %415

563:                                              ; preds = %415
  %564 = load i64*, i64** %8, align 8
  %565 = bitcast i64* %564 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %567, i32 0, i32 5
  store i32 %566, i32* %568, align 8
  %569 = load i64, i64* @NGX_OK, align 8
  store i64 %569, i64* %4, align 8
  br label %570

570:                                              ; preds = %563, %498, %254, %188, %135
  %571 = load i64, i64* %4, align 8
  ret i64 %571
}

declare dso_local i8* @ngx_slab_alloc_locked(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_expire_and_alloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i64*, i32) #1

declare dso_local i64 @ngx_http_tfs_parse_tair_server_addr_info(i32*, i64*, i64, i32, i32) #1

declare dso_local i32 @ngx_murmur_hash2(i64*, i64) #1

declare dso_local i32 @ngx_http_tfs_parse_inet(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_get_cluster_id(i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
