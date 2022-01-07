; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_retry_ds.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_retry_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { {}*, i32, i32*, i32, %struct.TYPE_28__*, %struct.TYPE_25__*, i32, %struct.TYPE_23__, i32, i8*, i32, i8*, i8*, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_19__*, i32, i32)* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_22__, i32, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_retry_ds(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %10, %struct.TYPE_28__** %7, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32)** %13, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %14(%struct.TYPE_19__* %16, i32 %20, i32 0)
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i64 %29
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %6, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %33 = call i32* @ngx_http_tfs_select_data_server(%struct.TYPE_26__* %31, %struct.TYPE_27__* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %211

36:                                               ; preds = %1
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %165 [
    i32 129, label %42
    i32 131, label %46
    i32 130, label %50
    i32 128, label %64
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %167

46:                                               ; preds = %36
  %47 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  br label %167

50:                                               ; preds = %36
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND, align 8
  store i64 %61, i64* %2, align 8
  br label %235

62:                                               ; preds = %55, %50
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %2, align 8
  br label %235

64:                                               ; preds = %36
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %2, align 8
  br label %235

72:                                               ; preds = %64
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 12
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %72
  %78 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 4
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  %101 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 9
  store i8* %101, i8** %103, align 8
  br label %164

104:                                              ; preds = %72
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @NGX_HTTP_TFS_MAX_RETRY_COUNT, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 9
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %104
  %116 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 3
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 6
  store i32 0, i32* %126, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 5
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @ngx_chain_add_copy_with_buf(i32 %134, i32** %136, i32 %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @NGX_ERROR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %115
  %145 = load i64, i64* @NGX_ERROR, align 8
  store i64 %145, i64* %2, align 8
  br label %235

146:                                              ; preds = %115
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 2
  store i32 0, i32* %155, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %161 = call i32 @ngx_min(i32 %159, i32 %160)
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %146, %77
  br label %167

165:                                              ; preds = %36
  %166 = load i64, i64* @NGX_ERROR, align 8
  store i64 %166, i64* %2, align 8
  br label %235

167:                                              ; preds = %164, %46, %42
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %169 = call %struct.TYPE_28__* @ngx_http_tfs_select_peer(%struct.TYPE_26__* %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 4
  store %struct.TYPE_28__* %169, %struct.TYPE_28__** %171, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  %175 = icmp eq %struct.TYPE_28__* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i64, i64* @NGX_ERROR, align 8
  store i64 %177, i64* %2, align 8
  br label %235

178:                                              ; preds = %167
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  store i32* %180, i32** %184, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  store i32* %188, i32** %194, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  %199 = bitcast {}** %198 to i64 (%struct.TYPE_26__*)**
  %200 = load i64 (%struct.TYPE_26__*)*, i64 (%struct.TYPE_26__*)** %199, align 8
  %201 = icmp eq i64 (%struct.TYPE_26__*)* %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %178
  %203 = load i64, i64* @NGX_ERROR, align 8
  store i64 %203, i64* %2, align 8
  br label %235

204:                                              ; preds = %178
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = bitcast {}** %206 to i64 (%struct.TYPE_26__*)**
  %208 = load i64 (%struct.TYPE_26__*)*, i64 (%struct.TYPE_26__*)** %207, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %210 = call i64 %208(%struct.TYPE_26__* %209)
  store i64 %210, i64* %2, align 8
  br label %235

211:                                              ; preds = %1
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @ngx_http_tfs_peer_set_addr(i32 %214, i32* %219, i32* %220)
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %226 = call i64 @ngx_http_tfs_reinit(i32 %224, %struct.TYPE_26__* %225)
  %227 = load i64, i64* @NGX_OK, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %211
  %230 = load i64, i64* @NGX_ERROR, align 8
  store i64 %230, i64* %2, align 8
  br label %235

231:                                              ; preds = %211
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %233 = call i32 @ngx_http_tfs_connect(%struct.TYPE_26__* %232)
  %234 = load i64, i64* @NGX_OK, align 8
  store i64 %234, i64* %2, align 8
  br label %235

235:                                              ; preds = %231, %229, %204, %202, %176, %165, %144, %70, %62, %60
  %236 = load i64, i64* %2, align 8
  ret i64 %236
}

declare dso_local i32* @ngx_http_tfs_select_data_server(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i64 @ngx_chain_add_copy_with_buf(i32, i32**, i32) #1

declare dso_local i32 @ngx_min(i32, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_http_tfs_select_peer(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i64 @ngx_http_tfs_reinit(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_http_tfs_connect(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
