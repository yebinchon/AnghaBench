; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ns.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i64, i64, i32, i32*, i32, %struct.TYPE_31__, i32, i32*, %struct.TYPE_32__, i32, i32, i32, i32, %struct.TYPE_35__*, i8*, i32, i32, i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_31__ = type { i64, i32*, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32, i32 (%struct.TYPE_26__*, i32, i32)* }
%struct.TYPE_25__ = type { i64 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_STAT_STAT_FILE = common dso_local global i32 0, align 4
@ngx_http_tfs_batch_process_start = common dso_local global i8* null, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_READ_DATA = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"error, cluster id conflict: %uD(ns) <> %uD(rcs)\00", align 1
@NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_UNLINK_DELETE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_ns(%struct.TYPE_34__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 23
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %9, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 22
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %11, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @ngx_buf_size(i32* %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %30, i64* %2, align 8
  br label %407

31:                                               ; preds = %1
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %33 = call i64 @ngx_http_tfs_name_server_parse_message(%struct.TYPE_34__* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ngx_http_tfs_clear_buf(i32* %34)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NGX_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %2, align 8
  br label %407

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @NGX_HTTP_TFS_AGAIN, align 8
  store i64 %46, i64* %2, align 8
  br label %407

47:                                               ; preds = %41
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %379 [
    i32 136, label %53
    i32 138, label %57
    i32 135, label %87
    i32 137, label %276
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* @NGX_HTTP_TFS_STATE_STAT_STAT_FILE, align 4
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %379

57:                                               ; preds = %47
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 17
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 16
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73, %62
  %79 = load i8*, i8** @ngx_http_tfs_batch_process_start, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 15
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %82, i64* %2, align 8
  br label %407

83:                                               ; preds = %73, %68, %57
  %84 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_READ_DATA, align 4
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %379

87:                                               ; preds = %47
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %275 [
    i32 131, label %91
    i32 129, label %162
    i32 128, label %174
    i32 130, label %225
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 21
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %91
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 14
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %102, align 8
  store %struct.TYPE_35__* %103, %struct.TYPE_35__** %10, align 8
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i64 %109
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %12, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i64 %116
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %13, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  store %struct.TYPE_33__* %119, %struct.TYPE_33__** %7, align 8
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ngx_http_tfs_get_cluster_id(i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %100
  %131 = load i32, i32* @NGX_LOG_ERR, align 4
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 20
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @ngx_log_error(i32 %131, i32 %134, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i64, i64* @NGX_ERROR, align 8
  store i64 %141, i64* %2, align 8
  br label %407

142:                                              ; preds = %100
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %158

149:                                              ; preds = %91
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 19
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %142
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 0
  store i32 130, i32* %160, align 8
  %161 = load i64, i64* %6, align 8
  store i64 %161, i64* %2, align 8
  br label %407

162:                                              ; preds = %87
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 0
  store i32 128, i32* %169, align 8
  %170 = load i64, i64* %6, align 8
  store i64 %170, i64* %2, align 8
  br label %407

171:                                              ; preds = %162
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 13
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %87, %171
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 14
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** %176, align 8
  store %struct.TYPE_35__* %177, %struct.TYPE_35__** %10, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 13
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ngx_http_tfs_rcs_set_group_info_by_addr(%struct.TYPE_35__* %178, i32 %181, i32 %184, i32 %187)
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 11
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 12
  %195 = call i64 @ngx_http_tfs_select_name_server(%struct.TYPE_34__* %189, %struct.TYPE_35__* %190, i32* %192, i32* %194)
  store i64 %195, i64* %6, align 8
  %196 = load i64, i64* %6, align 8
  %197 = load i64, i64* @NGX_ERROR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %174
  %200 = load i64, i64* @NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND, align 8
  store i64 %200, i64* %2, align 8
  br label %407

201:                                              ; preds = %174
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load i32 (%struct.TYPE_26__*, i32, i32)*, i32 (%struct.TYPE_26__*, i32, i32)** %204, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %205(%struct.TYPE_26__* %207, i32 %211, i32 0)
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i32 0, i32 4
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 11
  %223 = call i32 @ngx_http_tfs_peer_set_addr(i32 %215, i32* %220, i32* %222)
  %224 = load i64, i64* %6, align 8
  store i64 %224, i64* %2, align 8
  br label %407

225:                                              ; preds = %87
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE, align 4
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %274

234:                                              ; preds = %225
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %235, i32 0, i32 18
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA, align 4
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %273

243:                                              ; preds = %234
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 17
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %269, label %248

248:                                              ; preds = %243
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 9
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %264, label %254

254:                                              ; preds = %248
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %254
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 16
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %259, %248
  %265 = load i8*, i8** @ngx_http_tfs_batch_process_start, align 8
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 15
  store i8* %265, i8** %267, align 8
  %268 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %268, i64* %2, align 8
  br label %407

269:                                              ; preds = %259, %254, %243
  %270 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME, align 4
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  br label %273

273:                                              ; preds = %269, %239
  br label %274

274:                                              ; preds = %273, %230
  br label %275

275:                                              ; preds = %87, %274
  br label %379

276:                                              ; preds = %47
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  switch i32 %279, label %378 [
    i32 133, label %280
    i32 132, label %291
    i32 134, label %342
  ]

280:                                              ; preds = %276
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 1
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 0
  store i32 132, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %280
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 13
  store i32 0, i32* %290, align 8
  br label %291

291:                                              ; preds = %276, %288
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 14
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %293, align 8
  store %struct.TYPE_35__* %294, %struct.TYPE_35__** %10, align 8
  %295 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 13
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 11
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @ngx_http_tfs_rcs_set_group_info_by_addr(%struct.TYPE_35__* %295, i32 %298, i32 %301, i32 %304)
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 11
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 12
  %312 = call i64 @ngx_http_tfs_select_name_server(%struct.TYPE_34__* %306, %struct.TYPE_35__* %307, i32* %309, i32* %311)
  store i64 %312, i64* %6, align 8
  %313 = load i64, i64* %6, align 8
  %314 = load i64, i64* @NGX_ERROR, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %291
  %317 = load i64, i64* @NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND, align 8
  store i64 %317, i64* %2, align 8
  br label %407

318:                                              ; preds = %291
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 1
  %322 = load i32 (%struct.TYPE_26__*, i32, i32)*, i32 (%struct.TYPE_26__*, i32, i32)** %321, align 8
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i32 %322(%struct.TYPE_26__* %324, i32 %328, i32 0)
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 11
  %340 = call i32 @ngx_http_tfs_peer_set_addr(i32 %332, i32* %337, i32* %339)
  %341 = load i64, i64* %6, align 8
  store i64 %341, i64* %2, align 8
  br label %407

342:                                              ; preds = %276
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %363

347:                                              ; preds = %342
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 9
  %350 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @NGX_HTTP_TFS_UNLINK_DELETE, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %363

354:                                              ; preds = %347
  %355 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %355, i32 0, i32 8
  %357 = load i32*, i32** %356, align 8
  %358 = icmp eq i32* %357, null
  br i1 %358, label %359, label %363

359:                                              ; preds = %354
  %360 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT, align 4
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 8
  br label %377

363:                                              ; preds = %354, %347, %342
  %364 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 7
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE, align 4
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  br label %376

372:                                              ; preds = %363
  %373 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA, align 4
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  br label %376

376:                                              ; preds = %372, %368
  br label %377

377:                                              ; preds = %376, %359
  br label %378

378:                                              ; preds = %377, %276
  br label %379

379:                                              ; preds = %47, %378, %275, %83, %53
  %380 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds i32, i32* %384, i64 %388
  %390 = call i32* @ngx_http_tfs_select_data_server(%struct.TYPE_34__* %380, i32* %389)
  store i32* %390, i32** %8, align 8
  %391 = load i32*, i32** %8, align 8
  %392 = icmp eq i32* %391, null
  br i1 %392, label %393, label %395

393:                                              ; preds = %379
  %394 = load i64, i64* @NGX_ERROR, align 8
  store i64 %394, i64* %2, align 8
  br label %407

395:                                              ; preds = %379
  %396 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %399, i32 0, i32 4
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32*, i32** %8, align 8
  %405 = call i32 @ngx_http_tfs_peer_set_addr(i32 %398, i32* %403, i32* %404)
  %406 = load i64, i64* %6, align 8
  store i64 %406, i64* %2, align 8
  br label %407

407:                                              ; preds = %395, %393, %318, %316, %264, %201, %199, %167, %158, %130, %78, %45, %39, %29
  %408 = load i64, i64* %2, align 8
  ret i64 %408
}

declare dso_local i64 @ngx_buf_size(i32*) #1

declare dso_local i64 @ngx_http_tfs_name_server_parse_message(%struct.TYPE_34__*) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(i32*) #1

declare dso_local i32 @ngx_http_tfs_get_cluster_id(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_rcs_set_group_info_by_addr(%struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i64 @ngx_http_tfs_select_name_server(%struct.TYPE_34__*, %struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32* @ngx_http_tfs_select_data_server(%struct.TYPE_34__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
