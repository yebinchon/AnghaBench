; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_upstream_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_process_upstream_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64 (%struct.TYPE_29__*)*, %struct.TYPE_27__*, %struct.TYPE_32__*, i32, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__*, %struct.TYPE_32__* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_28__, i32, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_31__*, %struct.TYPE_32__*, i32)*, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"http tfs process request body for %V, addr: %s\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"tfs alloc buf failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"tfs handle read event failed\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"tfs prematurely closed connection\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"recv chain error\00", align 1
@NGX_HTTP_TFS_HEADER = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_BODY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_29__*)* @ngx_http_tfs_process_upstream_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_process_upstream_request(i32* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_30__* %12, %struct.TYPE_30__** %9, align 8
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  store %struct.TYPE_31__* %16, %struct.TYPE_31__** %8, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_log_debug2(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = call i64 @ngx_http_tfs_test_connect(%struct.TYPE_31__* %34)
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %41 = call i32 @ngx_http_tfs_handle_connection_failure(%struct.TYPE_29__* %39, %struct.TYPE_30__* %40)
  br label %232

42:                                               ; preds = %33, %2
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %44 = call i64 @ngx_http_tfs_alloc_buf(%struct.TYPE_29__* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @NGX_ERROR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* @NGX_LOG_ERR, align 4
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ngx_log_error(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %56 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %57 = call i32 @ngx_http_tfs_finalize_request(i32* %54, %struct.TYPE_29__* %55, i32 %56)
  br label %232

58:                                               ; preds = %42
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = call i32 @ngx_del_timer(%struct.TYPE_25__* %68)
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %226, %195, %70
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %73, align 8
  store %struct.TYPE_32__* %74, %struct.TYPE_32__** %7, align 8
  br label %75

75:                                               ; preds = %92, %71
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %77 = icmp ne %struct.TYPE_32__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %96

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %94, align 8
  store %struct.TYPE_32__* %95, %struct.TYPE_32__** %7, align 8
  br label %75

96:                                               ; preds = %90, %75
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %98 = icmp eq %struct.TYPE_32__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %102 = call i32 @ngx_http_tfs_process_buf_overflow(i32* %100, %struct.TYPE_29__* %101)
  br label %232

103:                                              ; preds = %96
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i64 (%struct.TYPE_31__*, %struct.TYPE_32__*, i32)*, i64 (%struct.TYPE_31__*, %struct.TYPE_32__*, i32)** %105, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %109 = call i64 %106(%struct.TYPE_31__* %107, %struct.TYPE_32__* %108, i32 0)
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @NGX_AGAIN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %103
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %118, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %128 = call i32 @ngx_http_tfs_process_buf_overflow(i32* %126, %struct.TYPE_29__* %127)
  br label %232

129:                                              ; preds = %113
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ngx_add_timer(%struct.TYPE_25__* %132, i32 %137)
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = call i64 @ngx_handle_read_event(%struct.TYPE_25__* %141, i32 0)
  %143 = load i64, i64* @NGX_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %129
  %146 = load i32, i32* @NGX_LOG_ERR, align 4
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ngx_log_error(i32 %146, i32 %149, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32*, i32** %3, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %153 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %154 = call i32 @ngx_http_tfs_finalize_request(i32* %151, %struct.TYPE_29__* %152, i32 %153)
  br label %232

155:                                              ; preds = %129
  br label %232

156:                                              ; preds = %103
  %157 = load i64, i64* %5, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* @NGX_LOG_ERR, align 4
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ngx_log_error(i32 %160, i32 %163, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %159, %156
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @NGX_ERROR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %5, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169, %165
  %173 = load i32, i32* @NGX_LOG_ERR, align 4
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ngx_log_error(i32 %173, i32 %176, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32*, i32** %3, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %180 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %181 = call i32 @ngx_http_tfs_finalize_request(i32* %178, %struct.TYPE_29__* %179, i32 %180)
  br label %232

182:                                              ; preds = %169
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @NGX_HTTP_TFS_HEADER, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %182
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %190 = load i64, i64* %5, align 8
  %191 = call i64 @ngx_http_tfs_process_header(%struct.TYPE_29__* %189, i64 %190)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @NGX_AGAIN, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %71

196:                                              ; preds = %188
  %197 = load i64, i64* %6, align 8
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* %6, align 8
  %201 = load i64, i64* @NGX_DONE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %196
  br label %228

204:                                              ; preds = %199
  %205 = load i64, i64* @NGX_HTTP_TFS_BODY, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %217

208:                                              ; preds = %182
  %209 = load i64, i64* %5, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %209
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 8
  br label %217

217:                                              ; preds = %208, %204
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 1
  %220 = load i64 (%struct.TYPE_29__*)*, i64 (%struct.TYPE_29__*)** %219, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %222 = call i64 %220(%struct.TYPE_29__* %221)
  store i64 %222, i64* %6, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* @NGX_AGAIN, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %217
  br label %71

227:                                              ; preds = %217
  br label %228

228:                                              ; preds = %227, %203
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %229, i64 %230)
  br label %232

232:                                              ; preds = %228, %172, %155, %145, %125, %99, %48, %38
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_http_tfs_test_connect(%struct.TYPE_31__*) #1

declare dso_local i32 @ngx_http_tfs_handle_connection_failure(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i64 @ngx_http_tfs_alloc_buf(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_tfs_process_buf_overflow(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_http_tfs_process_header(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
