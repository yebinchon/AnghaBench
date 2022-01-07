; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_process_start.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_35__, i64, %struct.TYPE_26__*, %struct.TYPE_28__*, i32, i32, i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_33__, %struct.TYPE_31__, i32, %struct.TYPE_30__, i32*, i32*, i32, i64, i64, i64 }
%struct.TYPE_35__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_23__* }

@ngx_http_tfs_batch_process_end = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_tfs_batch_process_next = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"find file hole, size: %uL\00", align 1
@NGX_HTTP_TFS_STATE_READ_READ_DATA = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"block_id: %uD, select data server: %s\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_batch_process_start(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i64 %17
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 21
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 20
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 19
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @ngx_http_tfs_batch_process_end, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 18
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  store %struct.TYPE_23__** %37, %struct.TYPE_23__*** %6, align 8
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %329, %1
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %332

45:                                               ; preds = %38
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = call %struct.TYPE_23__* @ngx_http_tfs_alloc_st(%struct.TYPE_23__* %46)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %5, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = icmp eq %struct.TYPE_23__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @NGX_ERROR, align 8
  store i64 %51, i64* %2, align 8
  br label %354

52:                                               ; preds = %45
  %53 = load i32, i32* @ngx_http_tfs_batch_process_next, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 18
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 17
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 16
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 15
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i64 %69
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 6
  store %struct.TYPE_24__* %70, %struct.TYPE_24__** %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 13
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %52
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 2
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME, align 4
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 8
  br label %239

109:                                              ; preds = %52
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %238

117:                                              ; preds = %109
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 12
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %194

123:                                              ; preds = %117
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %193

133:                                              ; preds = %123
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %137, %143
  br i1 %144, label %145, label %193

145:                                              ; preds = %133
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %155, %159
  %161 = trunc i64 %160 to i32
  %162 = call i64 @ngx_min(i64 %149, i32 %161)
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 3
  store i64 %162, i64* %165, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %169
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %178
  store i64 %183, i64* %181, align 8
  %184 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @ngx_log_error(i32 %184, i32 %187, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %145, %133, %123
  br label %194

194:                                              ; preds = %193, %117
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 5
  store i64 %200, i64* %203, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 2
  store i64 %209, i64* %212, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %218
  store i64 %223, i64* %221, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %233, %229
  store i64 %234, i64* %232, align 8
  %235 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_READ_DATA, align 4
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 11
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %194, %109
  br label %239

239:                                              ; preds = %238, %95
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %242, i32 0, i32 6
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %243, align 8
  %245 = call i32* @ngx_http_tfs_select_data_server(%struct.TYPE_23__* %240, %struct.TYPE_24__* %244)
  store i32* %245, i32** %7, align 8
  %246 = load i32*, i32** %7, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = load i64, i64* @NGX_ERROR, align 8
  store i64 %249, i64* %2, align 8
  br label %354

250:                                              ; preds = %239
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 10
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i64 %254
  store %struct.TYPE_25__* %255, %struct.TYPE_25__** %9, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = call i32 @ngx_http_tfs_peer_set_addr(i32 %258, %struct.TYPE_25__* %259, i32* %260)
  %262 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @ngx_log_debug2(i32 %262, i32 %265, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %272, i32 %275)
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %281 = call i64 @ngx_http_tfs_reinit(i32 %279, %struct.TYPE_23__* %280)
  %282 = load i64, i64* @NGX_OK, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %250
  %285 = load i64, i64* @NGX_ERROR, align 8
  store i64 %285, i64* %2, align 8
  br label %354

286:                                              ; preds = %250
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %288 = call %struct.TYPE_26__* @ngx_http_tfs_select_peer(%struct.TYPE_23__* %287)
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 4
  store %struct.TYPE_26__* %288, %struct.TYPE_26__** %290, align 8
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %292, align 8
  %294 = icmp eq %struct.TYPE_26__* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %286
  %296 = load i64, i64* @NGX_ERROR, align 8
  store i64 %296, i64* %2, align 8
  br label %354

297:                                              ; preds = %286
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 5
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 1
  store i32* %299, i32** %303, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 4
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 5
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 0
  store i32* %307, i32** %313, align 8
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %315 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  store %struct.TYPE_23__* %314, %struct.TYPE_23__** %315, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 1
  store %struct.TYPE_23__** %317, %struct.TYPE_23__*** %6, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %319, align 8
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %297
  br label %332

328:                                              ; preds = %297
  br label %329

329:                                              ; preds = %328
  %330 = load i64, i64* %4, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %4, align 8
  br label %38

332:                                              ; preds = %327, %38
  %333 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %333, align 8
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %335, align 8
  store %struct.TYPE_23__* %336, %struct.TYPE_23__** %5, align 8
  br label %337

337:                                              ; preds = %348, %332
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %339 = icmp ne %struct.TYPE_23__* %338, null
  br i1 %339, label %340, label %352

340:                                              ; preds = %337
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %342, align 8
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 1
  store %struct.TYPE_23__* %343, %struct.TYPE_23__** %345, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %347 = call i32 @ngx_http_tfs_connect(%struct.TYPE_23__* %346)
  br label %348

348:                                              ; preds = %340
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %350, align 8
  store %struct.TYPE_23__* %351, %struct.TYPE_23__** %5, align 8
  br label %337

352:                                              ; preds = %337
  %353 = load i64, i64* @NGX_OK, align 8
  store i64 %353, i64* %2, align 8
  br label %354

354:                                              ; preds = %352, %295, %284, %248, %50
  %355 = load i64, i64* %2, align 8
  ret i64 %355
}

declare dso_local %struct.TYPE_23__* @ngx_http_tfs_alloc_st(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_min(i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

declare dso_local i32* @ngx_http_tfs_select_data_server(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_http_tfs_reinit(i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_26__* @ngx_http_tfs_select_peer(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_tfs_connect(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
