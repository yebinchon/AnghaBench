; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_send_response.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i32 (%struct.TYPE_29__*)*, %struct.TYPE_27__*, i32, %struct.TYPE_31__*, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i64, %struct.TYPE_28__*, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_30__ = type { i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_YES = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"curr output segment is [%uD], [%uD] is ready, wait for call...\00", align 1
@ngx_http_tfs_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"segment[%uD] output...\00", align 1
@NGX_INVALID_FILE = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_TCP_NODELAY_UNSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"tcp_nodelay\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"setsockopt(TCP_NODELAY) failed\00", align 1
@NGX_TCP_NODELAY_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*)* @ngx_http_tfs_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_send_response(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %13 = icmp ne %struct.TYPE_28__* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %2
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = load i64, i64* @NGX_ERROR, align 8
  %24 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_29__* %21, %struct.TYPE_28__* %22, i64 %23)
  br label %219

25:                                               ; preds = %14
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %36 = load i64, i64* @NGX_DONE, align 8
  %37 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_29__* %34, %struct.TYPE_28__* %35, i64 %36)
  br label %219

38:                                               ; preds = %25
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %38
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load i32, i32* @NGX_HTTP_TFS_YES, align 4
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ngx_log_debug2(i32 %60, i32 %63, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %71)
  br label %219

73:                                               ; preds = %46
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = load i32, i32* @ngx_http_tfs_module, align 4
  %77 = call i32 @ngx_http_set_ctx(%struct.TYPE_29__* %74, %struct.TYPE_28__* %75, i32 %76)
  %78 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ngx_log_debug1(i32 %78, i32 %81, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %73, %38
  br label %87

87:                                               ; preds = %86, %2
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %89, align 8
  %91 = icmp eq %struct.TYPE_28__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_28__* %93, %struct.TYPE_28__** %7, align 8
  br label %98

94:                                               ; preds = %87
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  store %struct.TYPE_28__* %97, %struct.TYPE_28__** %7, align 8
  br label %98

98:                                               ; preds = %94, %92
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %137, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %105 = call i32 @ngx_http_tfs_set_header_line(%struct.TYPE_28__* %104)
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %107 = call i64 @ngx_http_send_header(%struct.TYPE_29__* %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @NGX_ERROR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @NGX_OK, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115, %111, %103
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_28__* %121, i64 %122)
  br label %219

124:                                              ; preds = %115
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_29__* %132, %struct.TYPE_28__* %133, i64 %134)
  br label %219

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %98
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %139, align 8
  store %struct.TYPE_31__* %140, %struct.TYPE_31__** %8, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %142, align 8
  %144 = icmp ne %struct.TYPE_27__* %143, null
  br i1 %144, label %145, label %173

145:                                              ; preds = %137
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = icmp ne %struct.TYPE_26__* %150, null
  br i1 %151, label %152, label %173

152:                                              ; preds = %145
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ngx_pool_run_cleanup_file(i32 %155, i32 %163)
  %165 = load i32, i32* @NGX_INVALID_FILE, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  br label %173

173:                                              ; preds = %152, %145, %137
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %175 = load i32, i32* @ngx_http_core_module, align 4
  %176 = call %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__* %174, i32 %175)
  store %struct.TYPE_30__* %176, %struct.TYPE_30__** %9, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  store i32 (%struct.TYPE_29__*)* @ngx_http_tfs_process_non_buffered_downstream, i32 (%struct.TYPE_29__*)** %178, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %216

185:                                              ; preds = %173
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NGX_TCP_NODELAY_UNSET, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ngx_log_debug0(i32 %192, i32 %195, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @IPPROTO_TCP, align 4
  %201 = load i32, i32* @TCP_NODELAY, align 4
  %202 = bitcast i32* %5 to i8*
  %203 = call i32 @setsockopt(i32 %199, i32 %200, i32 %201, i8* %202, i32 4)
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %212

205:                                              ; preds = %191
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %207 = load i32, i32* @ngx_socket_errno, align 4
  %208 = call i32 @ngx_connection_error(%struct.TYPE_31__* %206, i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %211 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_29__* %209, %struct.TYPE_28__* %210, i64 0)
  br label %219

212:                                              ; preds = %191
  %213 = load i64, i64* @NGX_TCP_NODELAY_SET, align 8
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %212, %185, %173
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %218 = call i32 @ngx_http_tfs_process_non_buffered_downstream(%struct.TYPE_29__* %217)
  br label %219

219:                                              ; preds = %216, %205, %131, %120, %56, %33, %20
  ret void
}

declare dso_local i32 @ngx_http_tfs_finalize_request(%struct.TYPE_29__*, %struct.TYPE_28__*, i64) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_29__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_tfs_set_header_line(%struct.TYPE_28__*) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @ngx_pool_run_cleanup_file(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_http_tfs_process_non_buffered_downstream(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_31__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
