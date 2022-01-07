; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_write_meta_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_create_write_meta_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_30__, i32, %struct.TYPE_27__*, %struct.TYPE_20__ }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_25__, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_31__, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, i32, i32, i32, i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"last_write_segment_index: %uD, segment_index: %uD\00", align 1
@NGX_HTTP_TFS_WRITE_FILEPATH_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_32__*)* @ngx_http_tfs_create_write_meta_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @ngx_http_tfs_create_write_meta_message(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 4
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %11, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %21, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ngx_log_debug2(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 24, %43
  store i64 %44, i64* %6, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 56, %49
  %51 = add i64 %50, 1
  %52 = add i64 %51, 4
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call %struct.TYPE_24__* @ngx_create_temp_buf(i32 %57, i64 %58)
  store %struct.TYPE_24__* %59, %struct.TYPE_24__** %7, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %61 = icmp eq %struct.TYPE_24__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %1
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %239

63:                                               ; preds = %1
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %14, align 8
  %68 = load i32, i32* @NGX_HTTP_TFS_WRITE_FILEPATH_MESSAGE, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32* @ngx_cpymem(i32 %103, i32 %107, i32 %112)
  store i32* %113, i32** %4, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = bitcast i32* %122 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %13, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %135, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i64 %140
  store %struct.TYPE_33__* %141, %struct.TYPE_33__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %193, %63
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %196

146:                                              ; preds = %142
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 3
  store i32 %150, i32* %157, align 4
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  store i32 %161, i32* %168, align 4
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  store i32 %172, i32* %179, align 4
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  store i32 %183, i32* %190, align 4
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 1
  store %struct.TYPE_33__* %192, %struct.TYPE_33__** %12, align 8
  br label %193

193:                                              ; preds = %146
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %142

196:                                              ; preds = %142
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %198
  store i64 %203, i64* %201, align 8
  %204 = load i64, i64* %5, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %204
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %5, align 8
  %210 = sub i64 %209, 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 0
  store i64 %210, i64* %213, align 8
  %214 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i64 1
  %218 = bitcast %struct.TYPE_31__* %217 to i8*
  %219 = load i64, i64* %5, align 8
  %220 = sub i64 %219, 4
  %221 = call i32 @ngx_http_tfs_crc(i32 %214, i8* %218, i64 %220)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 1
  store i32 %221, i32* %224, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call %struct.TYPE_23__* @ngx_alloc_chain_link(i32 %227)
  store %struct.TYPE_23__* %228, %struct.TYPE_23__** %10, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %230 = icmp eq %struct.TYPE_23__* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %196
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %239

232:                                              ; preds = %196
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 1
  store %struct.TYPE_24__* %233, %struct.TYPE_24__** %235, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  store i32* null, i32** %237, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %238, %struct.TYPE_23__** %2, align 8
  br label %239

239:                                              ; preds = %232, %231, %62
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  ret %struct.TYPE_23__* %240
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32* @ngx_cpymem(i32, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local %struct.TYPE_23__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
