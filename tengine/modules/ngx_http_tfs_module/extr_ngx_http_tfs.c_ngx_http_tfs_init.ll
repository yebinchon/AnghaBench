; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i32, {}*, %struct.TYPE_54__*, %struct.TYPE_56__*, i32, i32, %struct.TYPE_46__, %struct.TYPE_49__*, %struct.TYPE_61__, i32, i64, i32, i32, i32, %struct.TYPE_58__*, %struct.TYPE_55__, i32, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_52__*, %struct.TYPE_41__*, i32, i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_56__ = type { %struct.TYPE_63__*, i32* }
%struct.TYPE_63__ = type { i32* }
%struct.TYPE_46__ = type { %struct.TYPE_45__, i32, i32, i64, i64 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_61__ = type { i64, i32, %struct.TYPE_60__*, i64 }
%struct.TYPE_60__ = type { i8*, i64, %struct.TYPE_59__, i32 }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_58__ = type { i64 }
%struct.TYPE_55__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { i32, %struct.TYPE_44__*, i32, %struct.TYPE_42__, i32 }
%struct.TYPE_42__ = type { i64, i32 }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { %struct.TYPE_50__*, %struct.TYPE_57__*, i32 }
%struct.TYPE_50__ = type { %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_57__ = type { i64 }
%struct.TYPE_53__ = type { i32, i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }

@ngx_http_tfs_read_handler = common dso_local global i32 0, align 4
@ngx_http_tfs_send_handler = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_KEEPALIVE = common dso_local global i32 0, align 4
@ngx_http_tfs_rd_check_broken_connection = common dso_local global i32 0, align 4
@ngx_http_tfs_wr_check_broken_connection = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@ngx_chain_writer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tfs peer init failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"tfs alloc chains failed\00", align 1
@NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"tfs get meta segment failed\00", align 1
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_READ_FILE_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_GET_APPID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"tfs set output appid failed\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"tfs select peer failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_init(%struct.TYPE_48__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_48__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_52__*, align 8
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_49__*, align 8
  %8 = alloca %struct.TYPE_47__*, align 8
  %9 = alloca %struct.TYPE_53__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %3, align 8
  %10 = load i32, i32* @ngx_http_tfs_read_handler, align 4
  %11 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 22
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ngx_http_tfs_send_handler, align 4
  %14 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %14, i32 0, i32 21
  store i32 %13, i32* %15, align 8
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %5, align 8
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %7, align 8
  store %struct.TYPE_50__* null, %struct.TYPE_50__** %6, align 8
  %16 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 20
  %18 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_47__*, %struct.TYPE_47__** %19, align 8
  store %struct.TYPE_47__* %20, %struct.TYPE_47__** %8, align 8
  %21 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %1
  %29 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %29, i32 0, i32 19
  %31 = load %struct.TYPE_52__*, %struct.TYPE_52__** %30, align 8
  store %struct.TYPE_52__* %31, %struct.TYPE_52__** %5, align 8
  %32 = load i32, i32* @ngx_http_tfs_rd_check_broken_connection, align 4
  %33 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ngx_http_tfs_wr_check_broken_connection, align 4
  %36 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %39 = load i32, i32* @ngx_http_core_module, align 4
  %40 = call %struct.TYPE_53__* @ngx_http_get_module_loc_conf(%struct.TYPE_52__* %38, i32 %39)
  store %struct.TYPE_53__* %40, %struct.TYPE_53__** %9, align 8
  %41 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %42 = icmp eq %struct.TYPE_53__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* @NGX_ERROR, align 8
  store i64 %44, i64* %2, align 8
  br label %516

45:                                               ; preds = %28
  %46 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %55, i32 0, i32 18
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  br label %69

59:                                               ; preds = %1
  %60 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %60, i32 0, i32 18
  %62 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %61, i32 0, i32 0
  store i32 512, i32* %62, align 8
  %63 = load i64, i64* @ngx_pagesize, align 8
  %64 = mul i64 2, %63
  %65 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %65, i32 0, i32 18
  %67 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %45
  %70 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %73, i32 0, i32 18
  %75 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %76, i32 0, i32 18
  %78 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @ngx_chain_writer, align 4
  %81 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %81, i32 0, i32 18
  %83 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %84, i32 0, i32 17
  %86 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %86, i32 0, i32 18
  %88 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %87, i32 0, i32 1
  store %struct.TYPE_44__* %85, %struct.TYPE_44__** %88, align 8
  %89 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %91, i32 0, i32 16
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %94, i32 0, i32 17
  %96 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %98 = call i64 @ngx_http_tfs_peer_init(%struct.TYPE_48__* %97)
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @NGX_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %69
  %103 = load i32, i32* @NGX_LOG_ERR, align 4
  %104 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ngx_log_error(i32 %103, i32 %106, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %108 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %108, i64* %2, align 8
  br label %516

109:                                              ; preds = %69
  %110 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %110, i32 0, i32 16
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_56__* @ngx_http_tfs_alloc_chains(i32 %112, i32 2)
  %114 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %114, i32 0, i32 3
  store %struct.TYPE_56__* %113, %struct.TYPE_56__** %115, align 8
  %116 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_56__*, %struct.TYPE_56__** %117, align 8
  %119 = icmp eq %struct.TYPE_56__* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load i32, i32* @NGX_LOG_ERR, align 4
  %122 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ngx_log_error(i32 %121, i32 %124, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %126, i64* %2, align 8
  br label %516

127:                                              ; preds = %109
  %128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %480

135:                                              ; preds = %127
  %136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %389, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  switch i32 %145, label %162 [
    i32 130, label %146
    i32 129, label %150
    i32 131, label %154
    i32 128, label %158
  ]

146:                                              ; preds = %140
  %147 = load i32, i32* @NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO, align 4
  %148 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %148, i32 0, i32 13
  store i32 %147, i32* %149, align 8
  br label %169

150:                                              ; preds = %140
  %151 = load i32, i32* @NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO, align 4
  %152 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %152, i32 0, i32 13
  store i32 %151, i32* %153, align 8
  br label %169

154:                                              ; preds = %140
  %155 = load i32, i32* @NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO, align 4
  %156 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %156, i32 0, i32 13
  store i32 %155, i32* %157, align 8
  br label %169

158:                                              ; preds = %140
  %159 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS, align 4
  %160 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 8
  br label %169

162:                                              ; preds = %140
  %163 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_62__*, %struct.TYPE_62__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %165, i32 0, i32 0
  %167 = call i32 @ngx_shmtx_unlock(i32* %166)
  %168 = load i64, i64* @NGX_ERROR, align 8
  store i64 %168, i64* %2, align 8
  br label %516

169:                                              ; preds = %158, %154, %150, %146
  %170 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_57__*, %struct.TYPE_57__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.sockaddr_in*
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.sockaddr_in*
  %188 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ntohs(i32 %189)
  %191 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 128
  br i1 %199, label %200, label %234

200:                                              ; preds = %169
  %201 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %201, i32 0, i32 14
  %203 = load %struct.TYPE_58__*, %struct.TYPE_58__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %200
  %208 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %208, i32 0, i32 14
  %210 = load %struct.TYPE_58__*, %struct.TYPE_58__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %214, i32 0, i32 0
  store i64 %212, i64* %215, align 8
  %216 = load i32, i32* @NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO, align 4
  %217 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %207, %200
  %220 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %220, i32 0, i32 10
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %226 = call i64 @ngx_http_tfs_get_segment_for_write(%struct.TYPE_48__* %225)
  store i64 %226, i64* %4, align 8
  %227 = load i64, i64* %4, align 8
  %228 = load i64, i64* @NGX_ERROR, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = load i64, i64* @NGX_ERROR, align 8
  store i64 %231, i64* %2, align 8
  br label %516

232:                                              ; preds = %224
  br label %233

233:                                              ; preds = %232, %219
  br label %234

234:                                              ; preds = %233, %169
  %235 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %234
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 128
  br i1 %245, label %246, label %388

246:                                              ; preds = %239, %234
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %248 = call i64 @ngx_http_tfs_get_meta_segment(%struct.TYPE_48__* %247)
  store i64 %248, i64* %4, align 8
  %249 = load i64, i64* %4, align 8
  %250 = load i64, i64* @NGX_ERROR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load i32, i32* @NGX_LOG_ERR, align 4
  %254 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ngx_log_error(i32 %253, i32 %256, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %258 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %258, i64* %2, align 8
  br label %516

259:                                              ; preds = %246
  %260 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 128
  br i1 %265, label %266, label %333

266:                                              ; preds = %259
  %267 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %289

272:                                              ; preds = %266
  %273 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %274 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %274, i32 0, i32 11
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @ngx_http_tfs_parse_meta_segment(%struct.TYPE_48__* %273, i32 %276)
  store i64 %277, i64* %4, align 8
  %278 = load i64, i64* %4, align 8
  %279 = load i64, i64* @NGX_ERROR, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %272
  %282 = load i64, i64* @NGX_ERROR, align 8
  store i64 %282, i64* %2, align 8
  br label %516

283:                                              ; preds = %272
  %284 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %284, i32 0, i32 12
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %287, i32 0, i32 11
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %283, %266
  %290 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %290, i32 0, i32 11
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %293, i32 0, i32 8
  %295 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_60__*, %struct.TYPE_60__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %297, i32 0, i32 3
  store i32 %292, i32* %298, align 4
  %299 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %299, i32 0, i32 11
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @ngx_http_tfs_get_chain_buf_size(i32 %301)
  %303 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_60__*, %struct.TYPE_60__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %308, i32 0, i32 0
  store i32 %302, i32* %309, align 8
  %310 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %310, i32 0, i32 8
  %312 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_60__*, %struct.TYPE_60__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %318, i32 0, i32 8
  %320 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %319, i32 0, i32 1
  store i32 %317, i32* %320, align 8
  %321 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %321, i32 0, i32 8
  %323 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %326 = call i8* @ngx_min(i32 %324, i32 %325)
  %327 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %327, i32 0, i32 8
  %329 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_60__*, %struct.TYPE_60__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %331, i32 0, i32 0
  store i8* %326, i8** %332, align 8
  br label %387

333:                                              ; preds = %259
  %334 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %334, i32 0, i32 10
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %333
  %339 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %340 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 8
  %342 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %342, i32 0, i32 8
  %344 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %343, i32 0, i32 3
  store i64 0, i64* %344, align 8
  %345 = load i32, i32* @NGX_HTTP_TFS_MAX_SIZE, align 4
  %346 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %346, i32 0, i32 8
  %348 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %347, i32 0, i32 1
  store i32 %345, i32* %348, align 8
  br label %364

349:                                              ; preds = %333
  %350 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %350, i32 0, i32 6
  %352 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %354, i32 0, i32 8
  %356 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %355, i32 0, i32 3
  store i64 %353, i64* %356, align 8
  %357 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %357, i32 0, i32 6
  %359 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %361, i32 0, i32 8
  %363 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %362, i32 0, i32 1
  store i32 %360, i32* %363, align 8
  br label %364

364:                                              ; preds = %349, %338
  %365 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %365, i32 0, i32 8
  %367 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %369, i32 0, i32 8
  %371 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_60__*, %struct.TYPE_60__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %373, i32 0, i32 1
  store i64 %368, i64* %374, align 8
  %375 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %375, i32 0, i32 8
  %377 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @NGX_HTTP_TFS_MAX_READ_FILE_SIZE, align 4
  %380 = call i8* @ngx_min(i32 %378, i32 %379)
  %381 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_60__*, %struct.TYPE_60__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %385, i32 0, i32 0
  store i8* %380, i8** %386, align 8
  br label %387

387:                                              ; preds = %364, %289
  br label %388

388:                                              ; preds = %387, %239
  br label %479

389:                                              ; preds = %135
  %390 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_50__*, %struct.TYPE_50__** %391, align 8
  store %struct.TYPE_50__* %392, %struct.TYPE_50__** %6, align 8
  %393 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_62__*, %struct.TYPE_62__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %395, i32 0, i32 0
  %397 = call i32 @ngx_shmtx_lock(i32* %396)
  %398 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %399 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call %struct.TYPE_49__* @ngx_http_tfs_rcs_lookup(%struct.TYPE_50__* %398, i32 %402)
  store %struct.TYPE_49__* %403, %struct.TYPE_49__** %7, align 8
  %404 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_62__*, %struct.TYPE_62__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %406, i32 0, i32 0
  %408 = call i32 @ngx_shmtx_unlock(i32* %407)
  %409 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %410 = icmp ne %struct.TYPE_49__* %409, null
  br i1 %410, label %411, label %478

411:                                              ; preds = %389
  %412 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %413 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %413, i32 0, i32 7
  store %struct.TYPE_49__* %412, %struct.TYPE_49__** %414, align 8
  %415 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @NGX_HTTP_TFS_ACTION_GET_APPID, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %443

422:                                              ; preds = %411
  %423 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %424 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i64 @ngx_http_tfs_set_output_appid(%struct.TYPE_48__* %423, i32 %426)
  store i64 %427, i64* %4, align 8
  %428 = load i64, i64* %4, align 8
  %429 = load i64, i64* @NGX_ERROR, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %438

431:                                              ; preds = %422
  %432 = load i32, i32* @NGX_LOG_ERR, align 4
  %433 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @ngx_log_error(i32 %432, i32 %435, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %437 = load i64, i64* @NGX_ERROR, align 8
  store i64 %437, i64* %2, align 8
  br label %516

438:                                              ; preds = %422
  %439 = load %struct.TYPE_52__*, %struct.TYPE_52__** %5, align 8
  %440 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %441 = call i32 @ngx_http_tfs_send_response(%struct.TYPE_52__* %439, %struct.TYPE_48__* %440)
  %442 = load i64, i64* @NGX_OK, align 8
  store i64 %442, i64* %2, align 8
  br label %516

443:                                              ; preds = %411
  %444 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %445 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %446 = call i64 @ngx_http_tfs_misc_ctx_init(%struct.TYPE_48__* %444, %struct.TYPE_49__* %445)
  store i64 %446, i64* %4, align 8
  %447 = load i64, i64* %4, align 8
  %448 = load i64, i64* @NGX_DECLINED, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %471

450:                                              ; preds = %443
  %451 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %451, i32 0, i32 1
  %453 = bitcast {}** %452 to i64 (%struct.TYPE_48__*)**
  %454 = load i64 (%struct.TYPE_48__*)*, i64 (%struct.TYPE_48__*)** %453, align 8
  %455 = icmp ne i64 (%struct.TYPE_48__*)* %454, null
  br i1 %455, label %456, label %469

456:                                              ; preds = %450
  %457 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %457, i32 0, i32 1
  %459 = bitcast {}** %458 to i64 (%struct.TYPE_48__*)**
  %460 = load i64 (%struct.TYPE_48__*)*, i64 (%struct.TYPE_48__*)** %459, align 8
  %461 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %462 = call i64 %460(%struct.TYPE_48__* %461)
  store i64 %462, i64* %4, align 8
  %463 = load i64, i64* %4, align 8
  %464 = load i64, i64* @NGX_ERROR, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %456
  %467 = load i64, i64* %4, align 8
  store i64 %467, i64* %2, align 8
  br label %516

468:                                              ; preds = %456
  br label %469

469:                                              ; preds = %468, %450
  %470 = load i64, i64* @NGX_OK, align 8
  store i64 %470, i64* %2, align 8
  br label %516

471:                                              ; preds = %443
  %472 = load i64, i64* %4, align 8
  %473 = load i64, i64* @NGX_OK, align 8
  %474 = icmp ne i64 %472, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %471
  %476 = load i64, i64* %4, align 8
  store i64 %476, i64* %2, align 8
  br label %516

477:                                              ; preds = %471
  br label %478

478:                                              ; preds = %477, %389
  br label %479

479:                                              ; preds = %478, %388
  br label %480

480:                                              ; preds = %479, %127
  %481 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %482 = call %struct.TYPE_54__* @ngx_http_tfs_select_peer(%struct.TYPE_48__* %481)
  %483 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %483, i32 0, i32 2
  store %struct.TYPE_54__* %482, %struct.TYPE_54__** %484, align 8
  %485 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_54__*, %struct.TYPE_54__** %486, align 8
  %488 = icmp eq %struct.TYPE_54__* %487, null
  br i1 %488, label %489, label %496

489:                                              ; preds = %480
  %490 = load i32, i32* @NGX_LOG_ERR, align 4
  %491 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %491, i32 0, i32 5
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @ngx_log_error(i32 %490, i32 %493, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %495 = load i64, i64* @NGX_ERROR, align 8
  store i64 %495, i64* %2, align 8
  br label %516

496:                                              ; preds = %480
  %497 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %497, i32 0, i32 4
  %499 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %499, i32 0, i32 3
  %501 = load %struct.TYPE_56__*, %struct.TYPE_56__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %501, i32 0, i32 1
  store i32* %498, i32** %502, align 8
  %503 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %503, i32 0, i32 2
  %505 = load %struct.TYPE_54__*, %struct.TYPE_54__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %505, i32 0, i32 0
  %507 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %507, i32 0, i32 3
  %509 = load %struct.TYPE_56__*, %struct.TYPE_56__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_63__*, %struct.TYPE_63__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %511, i32 0, i32 0
  store i32* %506, i32** %512, align 8
  %513 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %514 = call i32 @ngx_http_tfs_connect(%struct.TYPE_48__* %513)
  %515 = load i64, i64* @NGX_OK, align 8
  store i64 %515, i64* %2, align 8
  br label %516

516:                                              ; preds = %496, %489, %475, %469, %466, %438, %431, %281, %252, %230, %162, %120, %102, %43
  %517 = load i64, i64* %2, align 8
  ret i64 %517
}

declare dso_local %struct.TYPE_53__* @ngx_http_get_module_loc_conf(%struct.TYPE_52__*, i32) #1

declare dso_local i64 @ngx_http_tfs_peer_init(%struct.TYPE_48__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_56__* @ngx_http_tfs_alloc_chains(i32, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ngx_http_tfs_get_segment_for_write(%struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_tfs_get_meta_segment(%struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_tfs_parse_meta_segment(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @ngx_http_tfs_get_chain_buf_size(i32) #1

declare dso_local i8* @ngx_min(i32, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local %struct.TYPE_49__* @ngx_http_tfs_rcs_lookup(%struct.TYPE_50__*, i32) #1

declare dso_local i64 @ngx_http_tfs_set_output_appid(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @ngx_http_tfs_send_response(%struct.TYPE_52__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_tfs_misc_ctx_init(%struct.TYPE_48__*, %struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_54__* @ngx_http_tfs_select_peer(%struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_tfs_connect(%struct.TYPE_48__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
