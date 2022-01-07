; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_select_name_server.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_select_name_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i64, i8*, i32, %struct.TYPE_31__, %struct.TYPE_29__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_22__*, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_32__, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_32__, i32, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"read/stat, select logical cluster index: %ui, rw_cluster_index: %ui, nameserver: %V\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACCESS_READ_AND_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"write, select logical cluster index: %ui, rw_cluster_index: %ui, nameserver: %V\00", align 1
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"unlink, select nameserver: %V\00", align 1
@NGX_HTTP_TFS_STATE_REMOVE_GET_GROUP_COUNT = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_WRITE_GET_GROUP_COUNT = common dso_local global i8* null, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"unlink, can not select nameserver.\00", align 1
@NGX_HTTP_TFS_STATE_REMOVE_GET_GROUP_SEQ = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_WRITE_GET_GROUP_SEQ = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"can not find logical cluster index of ns: %V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_select_name_server(%struct.TYPE_33__* %0, %struct.TYPE_20__* %1, i32* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @NGX_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %600

25:                                               ; preds = %4
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  br label %49

37:                                               ; preds = %25
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %598 [
    i32 129, label %55
    i32 131, label %55
    i32 128, label %139
    i32 130, label %262
  ]

55:                                               ; preds = %49, %49
  br label %56

56:                                               ; preds = %133, %55
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %138

64:                                               ; preds = %56
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %70
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %18, align 8
  br label %72

72:                                               ; preds = %125, %64
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %72
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 %86
  store %struct.TYPE_21__* %87, %struct.TYPE_21__** %19, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  store %struct.TYPE_32__* %89, %struct.TYPE_32__** %14, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ngx_http_tfs_get_cluster_id(i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %80
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %125

101:                                              ; preds = %96, %80
  %102 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = call i32 @ngx_log_debug3(i32 %102, i32 %105, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %111, %struct.TYPE_32__* %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = bitcast %struct.TYPE_32__* %119 to i8*
  %123 = bitcast %struct.TYPE_32__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i32, i32* @NGX_OK, align 4
  store i32 %124, i32* %5, align 4
  br label %600

125:                                              ; preds = %100
  %126 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %72

130:                                              ; preds = %72
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %56

138:                                              ; preds = %56
  br label %598

139:                                              ; preds = %49
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %261

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %255, %146
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %150, %153
  br i1 %154, label %155, label %260

155:                                              ; preds = %147
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i64 %161
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %18, align 8
  br label %163

163:                                              ; preds = %247, %155
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ult i64 %166, %169
  br i1 %170, label %171, label %252

171:                                              ; preds = %163
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i64 %177
  store %struct.TYPE_21__* %178, %struct.TYPE_21__** %19, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @NGX_HTTP_TFS_ACCESS_READ_AND_WRITE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %246

184:                                              ; preds = %171
  %185 = load i64, i64* %11, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 3
  store %struct.TYPE_32__* %189, %struct.TYPE_32__** %14, align 8
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @ngx_http_tfs_get_cluster_id(i32 %192)
  store i64 %193, i64* %10, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %11, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  br label %247

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %198, %184
  %200 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 2
  %212 = call i32 @ngx_log_debug3(i32 %200, i32 %203, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i64 %206, i64 %209, %struct.TYPE_32__* %211)
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32*, i32** %8, align 8
  store i32 %215, i32* %216, align 4
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = bitcast %struct.TYPE_32__* %217 to i8*
  %221 = bitcast %struct.TYPE_32__* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %220, i8* align 4 %221, i64 4, i1 false)
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %226 = icmp eq i8* %224, %225
  br i1 %226, label %227, label %244

227:                                              ; preds = %199
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 0
  store i64 %235, i64* %238, align 8
  br label %243

239:                                              ; preds = %227
  %240 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 8
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  br label %243

243:                                              ; preds = %239, %232
  br label %244

244:                                              ; preds = %243, %199
  %245 = load i32, i32* @NGX_OK, align 4
  store i32 %245, i32* %5, align 4
  br label %600

246:                                              ; preds = %171
  br label %247

247:                                              ; preds = %246, %197
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %249, align 8
  br label %163

252:                                              ; preds = %163
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 1
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %252
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %257, align 8
  br label %147

260:                                              ; preds = %147
  br label %598

261:                                              ; preds = %139
  br label %262

262:                                              ; preds = %49, %261
  store i64 0, i64* %15, align 8
  br label %263

263:                                              ; preds = %528, %262
  %264 = load i64, i64* %15, align 8
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %531

269:                                              ; preds = %263
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %271, align 8
  %273 = load i64, i64* %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i64 %273
  store %struct.TYPE_24__* %274, %struct.TYPE_24__** %20, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  store %struct.TYPE_23__* %277, %struct.TYPE_23__** %17, align 8
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %10, align 8
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %12, align 8
  %284 = load i64, i64* %11, align 8
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %269
  %287 = load i64, i64* %10, align 8
  %288 = load i64, i64* %11, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %293, label %290

290:                                              ; preds = %286, %269
  %291 = load i64, i64* %12, align 8
  %292 = icmp slt i64 %291, 1
  br i1 %292, label %293, label %294

293:                                              ; preds = %290, %286
  br label %528

294:                                              ; preds = %290
  %295 = load i64, i64* %12, align 8
  %296 = icmp eq i64 %295, 1
  br i1 %296, label %297, label %340

297:                                              ; preds = %294
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %8, align 8
  store i32 %301, i32* %302, align 4
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i64 0
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 0
  %307 = bitcast %struct.TYPE_32__* %303 to i8*
  %308 = bitcast %struct.TYPE_32__* %306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %307, i8* align 4 %308, i64 4, i1 false)
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 130
  br i1 %314, label %315, label %319

315:                                              ; preds = %297
  %316 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 8
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %317, i32 0, i32 2
  store i8* %316, i8** %318, align 8
  br label %331

319:                                              ; preds = %297
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 128
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %328 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 2
  store i8* %327, i8** %329, align 8
  br label %330

330:                                              ; preds = %326, %319
  br label %331

331:                                              ; preds = %330, %315
  %332 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = call i32 @ngx_log_debug1(i32 %332, i32 %335, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_32__* %338)
  br label %533

340:                                              ; preds = %294
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp sle i32 %343, 0
  br i1 %344, label %345, label %381

345:                                              ; preds = %340
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %8, align 8
  store i32 %349, i32* %350, align 4
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  %355 = bitcast %struct.TYPE_32__* %351 to i8*
  %356 = bitcast %struct.TYPE_32__* %354 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %355, i8* align 4 %356, i64 4, i1 false)
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp eq i32 %361, 130
  br i1 %362, label %363, label %367

363:                                              ; preds = %345
  %364 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_GET_GROUP_COUNT, align 8
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 2
  store i8* %364, i8** %366, align 8
  br label %379

367:                                              ; preds = %345
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 128
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_GROUP_COUNT, align 8
  %376 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 2
  store i8* %375, i8** %377, align 8
  br label %378

378:                                              ; preds = %374, %367
  br label %379

379:                                              ; preds = %378, %363
  %380 = load i32, i32* @NGX_OK, align 4
  store i32 %380, i32* %5, align 4
  br label %600

381:                                              ; preds = %340
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %393

386:                                              ; preds = %381
  %387 = load i32, i32* @NGX_LOG_ERR, align 4
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %387, i32 %390, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %392 = load i32, i32* @NGX_ERROR, align 4
  store i32 %392, i32* %5, align 4
  br label %600

393:                                              ; preds = %381
  store i64 0, i64* %16, align 8
  br label %394

394:                                              ; preds = %524, %393
  %395 = load i64, i64* %16, align 8
  %396 = load i64, i64* %12, align 8
  %397 = icmp ult i64 %395, %396
  br i1 %397, label %398, label %527

398:                                              ; preds = %394
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %400 = load i64, i64* %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %443

405:                                              ; preds = %398
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %407 = load i64, i64* %16, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %8, align 8
  store i32 %410, i32* %411, align 4
  %412 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %414 = load i64, i64* %16, align 8
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = bitcast %struct.TYPE_32__* %412 to i8*
  %418 = bitcast %struct.TYPE_32__* %416 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %417, i8* align 4 %418, i64 4, i1 false)
  %419 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %423, 130
  br i1 %424, label %425, label %429

425:                                              ; preds = %405
  %426 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_GET_GROUP_SEQ, align 8
  %427 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %427, i32 0, i32 2
  store i8* %426, i8** %428, align 8
  br label %441

429:                                              ; preds = %405
  %430 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i32 0, i32 4
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = icmp eq i32 %434, 128
  br i1 %435, label %436, label %440

436:                                              ; preds = %429
  %437 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_GROUP_SEQ, align 8
  %438 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %438, i32 0, i32 2
  store i8* %437, i8** %439, align 8
  br label %440

440:                                              ; preds = %436, %429
  br label %441

441:                                              ; preds = %440, %425
  %442 = load i32, i32* @NGX_OK, align 4
  store i32 %442, i32* %5, align 4
  br label %600

443:                                              ; preds = %398
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %456

449:                                              ; preds = %443
  %450 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %450, i32 0, i32 4
  %452 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %13, align 8
  br label %465

456:                                              ; preds = %443
  %457 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %457, i32 0, i32 5
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %13, align 8
  br label %465

465:                                              ; preds = %456, %449
  %466 = load i64, i64* %13, align 8
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %471 = load i64, i64* %16, align 8
  %472 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @ngx_http_tfs_group_seq_match(i64 %466, i32 %469, i32 %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %523

477:                                              ; preds = %465
  %478 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %479 = load i64, i64* %16, align 8
  %480 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load i32*, i32** %8, align 8
  store i32 %482, i32* %483, align 4
  %484 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %486 = load i64, i64* %16, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %487, i32 0, i32 0
  %489 = bitcast %struct.TYPE_32__* %484 to i8*
  %490 = bitcast %struct.TYPE_32__* %488 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %489, i8* align 4 %490, i64 4, i1 false)
  %491 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %491, i32 0, i32 4
  %493 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = icmp eq i32 %495, 130
  br i1 %496, label %497, label %501

497:                                              ; preds = %477
  %498 = load i8*, i8** @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 8
  %499 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %499, i32 0, i32 2
  store i8* %498, i8** %500, align 8
  br label %513

501:                                              ; preds = %477
  %502 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %502, i32 0, i32 4
  %504 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = icmp eq i32 %506, 128
  br i1 %507, label %508, label %512

508:                                              ; preds = %501
  %509 = load i8*, i8** @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 8
  %510 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %510, i32 0, i32 2
  store i8* %509, i8** %511, align 8
  br label %512

512:                                              ; preds = %508, %501
  br label %513

513:                                              ; preds = %512, %497
  %514 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %515 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %519 = load i64, i64* %16, align 8
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %518, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %520, i32 0, i32 0
  %522 = call i32 @ngx_log_debug1(i32 %514, i32 %517, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_32__* %521)
  br label %533

523:                                              ; preds = %465
  br label %524

524:                                              ; preds = %523
  %525 = load i64, i64* %16, align 8
  %526 = add i64 %525, 1
  store i64 %526, i64* %16, align 8
  br label %394

527:                                              ; preds = %394
  br label %528

528:                                              ; preds = %527, %293
  %529 = load i64, i64* %15, align 8
  %530 = add i64 %529, 1
  store i64 %530, i64* %15, align 8
  br label %263

531:                                              ; preds = %263
  %532 = load i32, i32* @NGX_ERROR, align 4
  store i32 %532, i32* %5, align 4
  br label %600

533:                                              ; preds = %513, %331
  %534 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %534, i32 0, i32 0
  store i64 0, i64* %535, align 8
  br label %536

536:                                              ; preds = %585, %533
  %537 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = icmp ult i64 %539, %542
  br i1 %543, label %544, label %590

544:                                              ; preds = %536
  %545 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 2
  %547 = load %struct.TYPE_22__*, %struct.TYPE_22__** %546, align 8
  %548 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %549 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %547, i64 %550
  store %struct.TYPE_22__* %551, %struct.TYPE_22__** %18, align 8
  %552 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %552, i32 0, i32 1
  store i64 0, i64* %553, align 8
  br label %554

554:                                              ; preds = %579, %544
  %555 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %556 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %555, i32 0, i32 1
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = icmp ult i64 %557, %560
  br i1 %561, label %562, label %584

562:                                              ; preds = %554
  %563 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %563, i32 0, i32 1
  %565 = load %struct.TYPE_21__*, %struct.TYPE_21__** %564, align 8
  %566 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %567 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %566, i32 0, i32 1
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %565, i64 %568
  store %struct.TYPE_21__* %569, %struct.TYPE_21__** %19, align 8
  %570 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = load i32*, i32** %8, align 8
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %572, %574
  br i1 %575, label %576, label %578

576:                                              ; preds = %562
  %577 = load i32, i32* @NGX_OK, align 4
  store i32 %577, i32* %5, align 4
  br label %600

578:                                              ; preds = %562
  br label %579

579:                                              ; preds = %578
  %580 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %581 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %580, i32 0, i32 1
  %582 = load i64, i64* %581, align 8
  %583 = add i64 %582, 1
  store i64 %583, i64* %581, align 8
  br label %554

584:                                              ; preds = %554
  br label %585

585:                                              ; preds = %584
  %586 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %587, align 8
  br label %536

590:                                              ; preds = %536
  %591 = load i32, i32* @NGX_LOG_ERR, align 4
  %592 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %596 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %591, i32 %594, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_32__* %595)
  %597 = load i32, i32* @NGX_ERROR, align 4
  store i32 %597, i32* %5, align 4
  br label %600

598:                                              ; preds = %49, %260, %138
  %599 = load i32, i32* @NGX_ERROR, align 4
  store i32 %599, i32* %5, align 4
  br label %600

600:                                              ; preds = %598, %590, %576, %531, %441, %386, %379, %244, %101, %23
  %601 = load i32, i32* %5, align 4
  ret i32 %601
}

declare dso_local i64 @ngx_http_tfs_get_cluster_id(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, %struct.TYPE_32__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_http_tfs_group_seq_match(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
