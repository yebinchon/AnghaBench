; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_misc_ctx_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_misc_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i64, i32, %struct.TYPE_31__, %struct.TYPE_29__*, i8*, i8*, i32, %struct.TYPE_25__, i64, %struct.TYPE_37__, %struct.TYPE_36__*, i8*, i32*, i32, %struct.TYPE_35__*, %struct.TYPE_33__, i8*, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64, i64, i32, %struct.TYPE_39__, i32, i64, i64, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__*, i64 }
%struct.TYPE_32__ = type { i8*, i64, %struct.TYPE_30__, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_28__*, i64, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }

@NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_UNLINK_DELETE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_READ_STAT_FORCE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tfs get meta segment failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_READ_FILE_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_LS_DIR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_LS_FILE = common dso_local global i32 0, align 4
@NGX_HTTP_UNAUTHORIZED = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_META_SERVER = common dso_local global i64 0, align 8
@NGX_CONF_UNSET = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"get remote block cache instance failed.\00", align 1
@ngx_http_tfs_lookup_block_cache = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"get dedup instance failed.\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_tfs_get_duplicate_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_misc_ctx_init(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %272

15:                                               ; preds = %2
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %70 [
    i32 129, label %21
    i32 131, label %25
    i32 128, label %29
    i32 130, label %33
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %70

25:                                               ; preds = %15
  %26 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %70

29:                                               ; preds = %15
  %30 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %70

33:                                               ; preds = %15
  %34 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 10
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NGX_HTTP_TFS_UNLINK_DELETE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 13
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @NGX_HTTP_TFS_READ_STAT_FORCE, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 1
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %67, align 8
  br label %68

68:                                               ; preds = %53, %46
  br label %69

69:                                               ; preds = %68, %41, %33
  br label %70

70:                                               ; preds = %15, %69, %29, %25, %21
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 21
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 22
  %77 = call i64 @ngx_http_tfs_select_name_server(%struct.TYPE_26__* %71, %struct.TYPE_27__* %72, i32* %74, i32* %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @NGX_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %82, i64* %3, align 8
  br label %594

83:                                               ; preds = %70
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 14
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 21
  %94 = call i32 @ngx_http_tfs_peer_set_addr(i32 %86, i32* %91, i32* %93)
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 10
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %83
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 128
  br i1 %105, label %106, label %271

106:                                              ; preds = %99, %83
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = call i64 @ngx_http_tfs_get_meta_segment(%struct.TYPE_26__* %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @NGX_ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* @NGX_LOG_ERR, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ngx_log_error(i32 %113, i32 %116, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %118 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %118, i64* %3, align 8
  br label %594

119:                                              ; preds = %106
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %216

126:                                              ; preds = %119
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 19
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @ngx_http_tfs_parse_meta_segment(%struct.TYPE_26__* %133, i32 %136)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @NGX_ERROR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i64, i64* @NGX_ERROR, align 8
  store i64 %142, i64* %3, align 8
  br label %594

143:                                              ; preds = %132
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 20
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 19
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %143, %126
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 19
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 17
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 3
  store i32 %152, i32* %158, align 4
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 15
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 17
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 17
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @ngx_chain_add_copy_with_buf(i32 %161, i32* %167, i32 %174)
  store i64 %175, i64* %6, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @NGX_ERROR, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %149
  %180 = load i64, i64* @NGX_ERROR, align 8
  store i64 %180, i64* %3, align 8
  br label %594

181:                                              ; preds = %149
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 19
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ngx_http_tfs_get_chain_buf_size(i32 %184)
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 17
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 0
  store i32 %185, i32* %192, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 17
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 17
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 17
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %209 = call i8* @ngx_min(i32 %207, i32 %208)
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 17
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 0
  store i8* %209, i8** %215, align 8
  br label %270

216:                                              ; preds = %119
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 10
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 18
  store i8* %222, i8** %224, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 17
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 2
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* @NGX_HTTP_TFS_MAX_SIZE, align 4
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 17
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  store i32 %228, i32* %231, align 8
  br label %247

232:                                              ; preds = %216
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 9
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 17
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 2
  store i64 %236, i64* %239, align 8
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 9
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 17
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  br label %247

247:                                              ; preds = %232, %221
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 17
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 17
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %256, i32 0, i32 1
  store i64 %251, i64* %257, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 17
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @NGX_HTTP_TFS_MAX_READ_FILE_SIZE, align 4
  %263 = call i8* @ngx_min(i32 %261, i32 %262)
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 17
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 0
  store i8* %263, i8** %269, align 8
  br label %270

270:                                              ; preds = %247, %181
  br label %271

271:                                              ; preds = %270, %99
  br label %388

272:                                              ; preds = %2
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 9
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %387

278:                                              ; preds = %272
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 131
  br i1 %284, label %285, label %313

285:                                              ; preds = %278
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @NGX_HTTP_TFS_ACTION_LS_DIR, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %313

293:                                              ; preds = %285
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 9
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @NGX_HTTP_TFS_ACTION_LS_FILE, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %293
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 9
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %305, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %301
  %311 = load i64, i64* @NGX_HTTP_UNAUTHORIZED, align 8
  store i64 %311, i64* %3, align 8
  br label %594

312:                                              ; preds = %301
  br label %313

313:                                              ; preds = %312, %293, %285, %278
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %319, i64* %3, align 8
  br label %594

320:                                              ; preds = %313
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 16
  %323 = load %struct.TYPE_35__*, %struct.TYPE_35__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %325, %328
  br i1 %329, label %330, label %355

330:                                              ; preds = %320
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 16
  %336 = load %struct.TYPE_35__*, %struct.TYPE_35__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %336, i32 0, i32 0
  store i64 %333, i64* %337, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 16
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %341, i32 0, i32 0
  store i64 0, i64* %342, align 8
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 15
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 14
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 1
  %353 = bitcast i64* %352 to i32*
  %354 = call i32 @ngx_http_tfs_peer_set_addr(i32 %345, i32* %350, i32* %353)
  br label %355

355:                                              ; preds = %330, %320
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 16
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %386

367:                                              ; preds = %355
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 8
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %373 = call i32 @ngx_http_tfs_set_custom_initial_parameters(%struct.TYPE_26__* %372)
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %375 = call i32* @ngx_http_tfs_select_meta_server(%struct.TYPE_26__* %374)
  store i32* %375, i32** %8, align 8
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 15
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i32 0, i32 14
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32*, i32** %8, align 8
  %385 = call i32 @ngx_http_tfs_peer_set_addr(i32 %378, i32* %383, i32* %384)
  br label %386

386:                                              ; preds = %367, %355
  br label %387

387:                                              ; preds = %386, %272
  br label %388

388:                                              ; preds = %387, %271
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  switch i32 %393, label %503 [
    i32 130, label %394
    i32 129, label %415
    i32 131, label %415
    i32 128, label %480
  ]

394:                                              ; preds = %388
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 1
  store i32 -1, i32* %396, align 4
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 9
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp eq i32 %400, 2
  br i1 %401, label %413, label %402

402:                                              ; preds = %394
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 13
  %405 = load i8*, i8** %404, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %413

407:                                              ; preds = %402
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %407, %402, %394
  br label %503

414:                                              ; preds = %407
  br label %415

415:                                              ; preds = %388, %388, %414
  %416 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %416, i32 0, i32 12
  %418 = load %struct.TYPE_36__*, %struct.TYPE_36__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @NGX_CONF_UNSET, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %436

423:                                              ; preds = %415
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %423
  %429 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %430, i32 0, i32 11
  %432 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %429
  store i32 %434, i32* %432, align 8
  br label %435

435:                                              ; preds = %428, %423
  br label %436

436:                                              ; preds = %435, %415
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 11
  %439 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %468

444:                                              ; preds = %436
  %445 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %445, i32 0, i32 11
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %448, i32 0, i32 4
  %450 = call i64 @ngx_http_tfs_get_remote_block_cache_instance(i32* %447, i32* %449)
  store i64 %450, i64* %6, align 8
  %451 = load i64, i64* %6, align 8
  %452 = load i64, i64* @NGX_ERROR, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %467

454:                                              ; preds = %444
  %455 = load i32, i32* @NGX_LOG_ERR, align 4
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 8
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @ngx_log_error(i32 %455, i32 %458, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %460 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %461 = xor i32 %460, -1
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 11
  %464 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, %461
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %454, %444
  br label %468

468:                                              ; preds = %467, %436
  %469 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %469, i32 0, i32 9
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %474, label %479

474:                                              ; preds = %468
  %475 = load i32, i32* @ngx_http_tfs_lookup_block_cache, align 4
  %476 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %476, i32 0, i32 3
  store i32 %475, i32* %477, align 8
  %478 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %478, i64* %3, align 8
  br label %594

479:                                              ; preds = %468
  br label %503

480:                                              ; preds = %388
  %481 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %481, i32 0, i32 1
  store i32 -1, i32* %482, align 4
  %483 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %483, i32 0, i32 10
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %493, label %487

487:                                              ; preds = %480
  %488 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %488, i32 0, i32 9
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = icmp eq i32 %491, 2
  br i1 %492, label %493, label %502

493:                                              ; preds = %487, %480
  %494 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %495 = call i64 @ngx_http_tfs_get_segment_for_write(%struct.TYPE_26__* %494)
  store i64 %495, i64* %6, align 8
  %496 = load i64, i64* %6, align 8
  %497 = load i64, i64* @NGX_ERROR, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = load i64, i64* @NGX_ERROR, align 8
  store i64 %500, i64* %3, align 8
  br label %594

501:                                              ; preds = %493
  br label %502

502:                                              ; preds = %501, %487
  br label %503

503:                                              ; preds = %502, %388, %479, %413
  %504 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %504, i32 0, i32 9
  %506 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %592

509:                                              ; preds = %503
  %510 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %510, i32 0, i32 9
  %512 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %511, i32 0, i32 4
  %513 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = icmp eq i32 %514, 128
  br i1 %515, label %516, label %592

516:                                              ; preds = %509
  %517 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %517, i32 0, i32 10
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %592, label %521

521:                                              ; preds = %516
  %522 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %522, i32 0, i32 3
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %592

526:                                              ; preds = %521
  %527 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %527, i32 0, i32 9
  %529 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 8
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %592, label %532

532:                                              ; preds = %526
  %533 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %533, i32 0, i32 9
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 2
  %536 = load i64, i64* %535, align 8
  %537 = icmp sgt i64 %536, 0
  br i1 %537, label %538, label %540

538:                                              ; preds = %532
  %539 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %539, i64* %3, align 8
  br label %594

540:                                              ; preds = %532
  %541 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %542 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %543 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %543, i32 0, i32 1
  store %struct.TYPE_26__* %541, %struct.TYPE_26__** %544, align 8
  %545 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %545, i32 0, i32 2
  %547 = load %struct.TYPE_28__*, %struct.TYPE_28__** %546, align 8
  %548 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %548, i32 0, i32 2
  %550 = load i64, i64* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %547, i64 %550
  store %struct.TYPE_28__* %551, %struct.TYPE_28__** %9, align 8
  %552 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %552, i32 0, i32 4
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %555 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %554, i32 0, i32 1
  %556 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %557 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = call i64 @ngx_http_tfs_get_dedup_instance(%struct.TYPE_31__* %553, i32* %555, i32 %558)
  store i64 %559, i64* %6, align 8
  %560 = load i64, i64* %6, align 8
  %561 = load i64, i64* @NGX_ERROR, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %570

563:                                              ; preds = %540
  %564 = load i32, i32* @NGX_LOG_ERR, align 4
  %565 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %565, i32 0, i32 8
  %567 = load i32, i32* %566, align 8
  %568 = call i32 @ngx_log_error(i32 %564, i32 %567, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %569 = load i64, i64* @NGX_OK, align 8
  store i64 %569, i64* %3, align 8
  br label %594

570:                                              ; preds = %540
  %571 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %572 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %572, i32 0, i32 7
  store i8* %571, i8** %573, align 8
  %574 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %575 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %575, i32 0, i32 6
  store i8* %574, i8** %576, align 8
  %577 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %577, i32 0, i32 5
  %579 = load %struct.TYPE_29__*, %struct.TYPE_29__** %578, align 8
  store %struct.TYPE_29__* %579, %struct.TYPE_29__** %7, align 8
  %580 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %581 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %580, i32 0, i32 0
  %582 = load %struct.TYPE_38__*, %struct.TYPE_38__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %586 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %585, i32 0, i32 4
  %587 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %586, i32 0, i32 0
  store i32 %584, i32* %587, align 8
  %588 = load i32, i32* @ngx_http_tfs_get_duplicate_info, align 4
  %589 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %589, i32 0, i32 3
  store i32 %588, i32* %590, align 8
  %591 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %591, i64* %3, align 8
  br label %594

592:                                              ; preds = %526, %521, %516, %509, %503
  %593 = load i64, i64* @NGX_OK, align 8
  store i64 %593, i64* %3, align 8
  br label %594

594:                                              ; preds = %592, %570, %563, %538, %499, %474, %318, %310, %179, %141, %112, %81
  %595 = load i64, i64* %3, align 8
  ret i64 %595
}

declare dso_local i64 @ngx_http_tfs_select_name_server(%struct.TYPE_26__*, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i64 @ngx_http_tfs_get_meta_segment(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_tfs_parse_meta_segment(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_chain_add_copy_with_buf(i32, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_get_chain_buf_size(i32) #1

declare dso_local i8* @ngx_min(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_set_custom_initial_parameters(%struct.TYPE_26__*) #1

declare dso_local i32* @ngx_http_tfs_select_meta_server(%struct.TYPE_26__*) #1

declare dso_local i64 @ngx_http_tfs_get_remote_block_cache_instance(i32*, i32*) #1

declare dso_local i64 @ngx_http_tfs_get_segment_for_write(%struct.TYPE_26__*) #1

declare dso_local i64 @ngx_http_tfs_get_dedup_instance(%struct.TYPE_31__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
