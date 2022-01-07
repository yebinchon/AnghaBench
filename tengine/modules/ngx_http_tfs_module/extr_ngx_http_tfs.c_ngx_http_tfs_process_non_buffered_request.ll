; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_non_buffered_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_non_buffered_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64, i64, i64 (%struct.TYPE_40__*)*, %struct.TYPE_37__*, %struct.TYPE_27__*, i32, i32, %struct.TYPE_39__, i64, i32*, %struct.TYPE_36__, i32, i32, i32, %struct.TYPE_35__*, %struct.TYPE_33__* }
%struct.TYPE_37__ = type { i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 (%struct.TYPE_29__*, i64, i64)*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_27__* }
%struct.TYPE_32__ = type { i64, i64, i64 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_30__ }
%struct.TYPE_34__ = type { %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i32, i32 }

@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_GET_APPID = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_READ_DONE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_STATE_ACTION_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_STAT_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_STAT_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_WRITE_DONE = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%V, output %uL byte\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"process request body failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_40__*, i32)* @ngx_http_tfs_process_non_buffered_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_process_non_buffered_request(%struct.TYPE_40__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %12, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %26, i32 0, i32 15
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %29 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 1
  store %struct.TYPE_30__* %31, %struct.TYPE_30__** %9, align 8
  %32 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %32, i32 0, i32 15
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %35 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  store %struct.TYPE_29__* %39, %struct.TYPE_29__** %11, align 8
  br label %60

40:                                               ; preds = %2
  %41 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NGX_HTTP_TFS_ACTION_GET_APPID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %49, i32 0, i32 14
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 1
  store %struct.TYPE_30__* %52, %struct.TYPE_30__** %9, align 8
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %53, i32 0, i32 14
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  store %struct.TYPE_29__* %58, %struct.TYPE_29__** %11, align 8
  br label %59

59:                                               ; preds = %48, %40
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %295, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %224

64:                                               ; preds = %61
  %65 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %69, %64
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ngx_http_output_filter(%struct.TYPE_27__* %75, i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @NGX_ERROR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %86 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__* %84, %struct.TYPE_40__* %85, i32 0)
  br label %405

87:                                               ; preds = %74
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %88, i32 0, i32 12
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %90, i32 0, i32 9
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %92, i32 0, i32 11
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32*, i32**, i32*, i32, ...) @ngx_chain_update_chains(i32* %89, i32** %91, i32* %93, i32 %97)
  br label %99

99:                                               ; preds = %87, %69
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 9
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %223

104:                                              ; preds = %99
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %109
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NGX_HTTP_TFS_STATE_READ_DONE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %125 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_30__* %124)
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %127 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %128 = load i32, i32* @NGX_DONE, align 4
  %129 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__* %126, %struct.TYPE_40__* %127, i32 %128)
  br label %405

130:                                              ; preds = %117, %109
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NGX_HTTP_TFS_ACTION_GET_APPID, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %204, label %150

150:                                              ; preds = %131
  %151 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NGX_HTTP_TFS_STATE_READ_DONE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %204, label %164

164:                                              ; preds = %158, %150
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @NGX_HTTP_TFS_STATE_ACTION_DONE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %204, label %176

176:                                              ; preds = %170, %164
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NGX_HTTP_TFS_ACTION_STAT_FILE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @NGX_HTTP_TFS_STATE_STAT_DONE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %204, label %190

190:                                              ; preds = %184, %176
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %220

198:                                              ; preds = %190
  %199 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @NGX_HTTP_TFS_STATE_WRITE_DONE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198, %184, %170, %158, %131
  %205 = load i32, i32* @NGX_LOG_INFO, align 4
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %205, i32 %208, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %212, i32 %215)
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %218 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %219 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__* %217, %struct.TYPE_40__* %218, i32 0)
  br label %405

220:                                              ; preds = %198, %190
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %222 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_30__* %221)
  br label %223

223:                                              ; preds = %220, %99
  br label %224

224:                                              ; preds = %223, %61
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %227, %230
  store i64 %231, i64* %5, align 8
  %232 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %296

236:                                              ; preds = %224
  %237 = load i64, i64* %5, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %296

239:                                              ; preds = %236
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %296

246:                                              ; preds = %239
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i64 (%struct.TYPE_29__*, i64, i64)*, i64 (%struct.TYPE_29__*, i64, i64)** %248, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* %5, align 8
  %255 = call i64 %249(%struct.TYPE_29__* %250, i64 %253, i64 %254)
  store i64 %255, i64* %6, align 8
  %256 = load i64, i64* %6, align 8
  %257 = load i64, i64* @NGX_AGAIN, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  br label %297

260:                                              ; preds = %246
  %261 = load i64, i64* %6, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %295

263:                                              ; preds = %260
  %264 = load i64, i64* %6, align 8
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, %264
  store i64 %268, i64* %266, align 8
  store i32 1, i32* %4, align 4
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %269, i32 0, i32 2
  %271 = load i64 (%struct.TYPE_40__*)*, i64 (%struct.TYPE_40__*)** %270, align 8
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %273 = call i64 %271(%struct.TYPE_40__* %272)
  store i64 %273, i64* %7, align 8
  %274 = load i64, i64* %7, align 8
  %275 = load i64, i64* @NGX_ERROR, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %289

277:                                              ; preds = %263
  %278 = load i32, i32* @NGX_LOG_ERR, align 4
  %279 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %278, i32 %281, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %283 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %284, align 8
  %286 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %287 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %288 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__* %285, %struct.TYPE_40__* %286, i32 %287)
  br label %405

289:                                              ; preds = %263
  %290 = load i64, i64* %7, align 8
  %291 = load i64, i64* @NGX_AGAIN, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  store i64 1, i64* %8, align 8
  br label %297

294:                                              ; preds = %289
  br label %295

295:                                              ; preds = %294, %260
  br label %61

296:                                              ; preds = %239, %236, %224
  br label %297

297:                                              ; preds = %296, %293, %259
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %299 = load i32, i32* @ngx_http_core_module, align 4
  %300 = call %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %298, i32 %299)
  store %struct.TYPE_28__* %300, %struct.TYPE_28__** %13, align 8
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %302, align 8
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %305 = icmp eq %struct.TYPE_27__* %303, %304
  br i1 %305, label %306, label %321

306:                                              ; preds = %297
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %308, align 8
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i64 @ngx_handle_write_event(%struct.TYPE_32__* %309, i32 %312)
  %314 = load i64, i64* @NGX_OK, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %306
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %318 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %319 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__* %317, %struct.TYPE_40__* %318, i32 0)
  br label %405

320:                                              ; preds = %306
  br label %321

321:                                              ; preds = %320, %297
  %322 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %321
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %328
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %337, align 8
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @ngx_add_timer(%struct.TYPE_32__* %338, i32 %341)
  br label %356

343:                                              ; preds = %328, %321
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_32__*, %struct.TYPE_32__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %343
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %352, align 8
  %354 = call i32 @ngx_del_timer(%struct.TYPE_32__* %353)
  br label %355

355:                                              ; preds = %350, %343
  br label %356

356:                                              ; preds = %355, %335
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = icmp sgt i64 %359, 0
  br i1 %360, label %361, label %385

361:                                              ; preds = %356
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_32__*, %struct.TYPE_32__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %385

368:                                              ; preds = %361
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_32__*, %struct.TYPE_32__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %368
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %377, align 8
  %379 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %379, i32 0, i32 3
  %381 = load %struct.TYPE_37__*, %struct.TYPE_37__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @ngx_add_timer(%struct.TYPE_32__* %378, i32 %383)
  br label %398

385:                                              ; preds = %368, %361, %356
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_32__*, %struct.TYPE_32__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %385
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %394, align 8
  %396 = call i32 @ngx_del_timer(%struct.TYPE_32__* %395)
  br label %397

397:                                              ; preds = %392, %385
  br label %398

398:                                              ; preds = %397, %375
  %399 = load i64, i64* %8, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %398
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  %403 = load i64, i64* %7, align 8
  %404 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_40__* %402, i64 %403)
  br label %405

405:                                              ; preds = %83, %123, %204, %277, %316, %401, %398
  ret void
}

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(%struct.TYPE_27__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32*, i32**, i32*, i32, ...) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_32__*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_40__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
