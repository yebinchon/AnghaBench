; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_write_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_create_write_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_22__*, i64, i32, i32, %struct.TYPE_32__ }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_25__, i64, i32, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i32, i32, i32, i32 }

@NGX_HTTP_TFS_WRITE_DATA_MESSAGE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_PACKET_VERSION = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"write segment index %uD, block id: %uD, file id: %uL, offset: %D, length: %uD, crc: %uD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_28__*, %struct.TYPE_29__*)* @ngx_http_tfs_create_write_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @ngx_http_tfs_create_write_message(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_31__, align 4
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 5
  store %struct.TYPE_32__* %22, %struct.TYPE_32__** %19, align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 68, %27
  %29 = add i64 %28, 12
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32 %32, i64 %33)
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %13, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %36 = icmp eq %struct.TYPE_23__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %299

38:                                               ; preds = %2
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %20, align 8
  %43 = load i32, i32* @NGX_HTTP_TFS_WRITE_DATA_MESSAGE, align 4
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* @NGX_HTTP_TFS_PACKET_VERSION, align 4
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 4
  %58 = call i32 (...) @ngx_http_tfs_generate_packet_id()
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 64
  store i32* %92, i32** %6, align 8
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 3, %95
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %6, align 8
  store i64 0, i64* %14, align 8
  br label %100

100:                                              ; preds = %117, %38
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 %101, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  store i32* %116, i32** %6, align 8
  br label %117

117:                                              ; preds = %107
  %118 = load i64, i64* %14, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %14, align 8
  br label %100

120:                                              ; preds = %100
  %121 = load i32*, i32** %6, align 8
  store i32 -1, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  store i32* %123, i32** %6, align 8
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %6, align 8
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @NGX_HTTP_TFS_PACKET_FLAG, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i64 1
  %149 = bitcast %struct.TYPE_24__* %148 to i8*
  %150 = load i64, i64* %8, align 8
  %151 = sub i64 %150, 4
  %152 = call i32 @ngx_http_tfs_crc(i32 %144, i8* %149, i64 %151)
  store i32 %152, i32* %11, align 4
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @ngx_alloc_chain_link(i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %15, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %159 = icmp eq %struct.TYPE_22__* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %120
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %299

161:                                              ; preds = %120
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %17, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %165, align 8
  store i64 0, i64* %9, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  store %struct.TYPE_22__* %168, %struct.TYPE_22__** %16, align 8
  %169 = load i32, i32* %11, align 4
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %245, %161
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %178 = icmp ne %struct.TYPE_22__* %177, null
  br i1 %178, label %179, label %249

179:                                              ; preds = %176
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = call i64 @ngx_buf_size(%struct.TYPE_23__* %182)
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %9, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %9, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call %struct.TYPE_23__* @ngx_alloc_buf(i32 %189)
  store %struct.TYPE_23__* %190, %struct.TYPE_23__** %13, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %192 = icmp eq %struct.TYPE_23__* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %179
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %299

194:                                              ; preds = %179
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  %199 = call i32 @ngx_memcpy(%struct.TYPE_23__* %195, %struct.TYPE_23__* %198, i32 16)
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %202 = icmp ugt i64 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %194
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* %9, align 8
  %206 = sub i64 %205, %204
  store i64 %206, i64* %9, align 8
  %207 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %208 = load i64, i64* %9, align 8
  %209 = sub i64 %207, %208
  store i64 %209, i64* %10, align 8
  %210 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  store i64 %210, i64* %9, align 8
  store i32 1, i32* %7, align 4
  br label %211

211:                                              ; preds = %203, %194
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @ngx_http_tfs_compute_buf_crc(%struct.TYPE_31__* %18, %struct.TYPE_23__* %212, i64 %213, i32 %216)
  store i64 %217, i64* %12, align 8
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* @NGX_ERROR, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %299

222:                                              ; preds = %211
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @ngx_alloc_chain_link(i32 %225)
  %227 = bitcast i8* %226 to %struct.TYPE_22__*
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 0
  store %struct.TYPE_22__* %227, %struct.TYPE_22__** %229, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = icmp eq %struct.TYPE_22__* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %299

235:                                              ; preds = %222
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  store %struct.TYPE_22__* %238, %struct.TYPE_22__** %15, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 1
  store %struct.TYPE_23__* %239, %struct.TYPE_23__** %241, align 8
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %249

245:                                              ; preds = %235
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %247, align 8
  store %struct.TYPE_22__* %248, %struct.TYPE_22__** %16, align 8
  br label %176

249:                                              ; preds = %244, %176
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %251, align 8
  %252 = load i32, i32* @NGX_LOG_INFO, align 4
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @ngx_log_error(i32 %252, i32 %255, i32 0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %259, i32 %263, i32 %267, i32 %270, i64 %273, i32 %275)
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  %282 = load i64, i64* %8, align 8
  %283 = sub i64 %282, 4
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %283, %286
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 1
  store i64 %287, i64* %291, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 0
  store i32 %293, i32* %297, align 8
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %298, %struct.TYPE_22__** %3, align 8
  br label %299

299:                                              ; preds = %249, %234, %221, %193, %160, %37
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %300
}

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_generate_packet_id(...) #1

declare dso_local i32 @ngx_http_tfs_crc(i32, i8*, i64) #1

declare dso_local i8* @ngx_alloc_chain_link(i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @ngx_alloc_buf(i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_http_tfs_compute_buf_crc(%struct.TYPE_31__*, %struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
