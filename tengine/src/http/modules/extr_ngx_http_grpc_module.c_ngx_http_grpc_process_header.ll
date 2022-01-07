; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_process_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_process_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { %struct.TYPE_60__*, %struct.TYPE_63__* }
%struct.TYPE_60__ = type { %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_63__ = type { i32, %struct.TYPE_59__, %struct.TYPE_58__*, %struct.TYPE_57__, %struct.TYPE_53__ }
%struct.TYPE_59__ = type { i64, i32, i64 }
%struct.TYPE_58__ = type { i64 }
%struct.TYPE_57__ = type { %struct.TYPE_56__* }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_53__ = type { i32, i32, i32 }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_61__ = type { i8*, %struct.TYPE_55__, i32, %struct.TYPE_62__ }
%struct.TYPE_55__ = type { i32, i8* }
%struct.TYPE_52__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i32*, i32*, i64, %struct.TYPE_62__, %struct.TYPE_55__, i32, i64 }
%struct.TYPE_50__ = type { i64 (%struct.TYPE_51__*, %struct.TYPE_61__*, i32)*, i32 }
%struct.TYPE_64__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_module = common dso_local global i32 0, align 4
@ngx_http_grpc_st_payload = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@NGX_HTTP_V2_DATA_FRAME = common dso_local global i64 0, align 8
@NGX_HTTP_V2_CONTINUATION_FRAME = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"upstream sent unexpected http2 frame: %d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"upstream sent frame for unknown stream %ui\00", align 1
@NGX_HTTP_V2_RST_STREAM_FRAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"upstream rejected request with error %ui\00", align 1
@NGX_HTTP_V2_GOAWAY_FRAME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"upstream sent goaway with error %ui\00", align 1
@NGX_HTTP_V2_WINDOW_UPDATE_FRAME = common dso_local global i64 0, align 8
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_HTTP_V2_SETTINGS_FRAME = common dso_local global i64 0, align 8
@NGX_HTTP_V2_PING_FRAME = common dso_local global i64 0, align 8
@NGX_HTTP_V2_PUSH_PROMISE_FRAME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"upstream sent unexpected push promise frame\00", align 1
@NGX_HTTP_V2_HEADERS_FRAME = common dso_local global i64 0, align 8
@ngx_http_grpc_st_start = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"grpc header: \22%V: %V\22\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c":status\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"upstream sent invalid header \22%V: %V\22\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"upstream sent duplicate :status header\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"upstream sent invalid :status \22%V\22\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"upstream sent unexpected :status \22%V\22\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"upstream sent no :status header\00", align 1
@NGX_HTTP_PARSE_HEADER_DONE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"grpc header done\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"upstream sent invalid header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_51__*)* @ngx_http_grpc_process_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_grpc_process_header(%struct.TYPE_51__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_51__*, align 8
  %4 = alloca %struct.TYPE_62__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_53__*, align 8
  %8 = alloca %struct.TYPE_61__*, align 8
  %9 = alloca %struct.TYPE_63__*, align 8
  %10 = alloca %struct.TYPE_52__*, align 8
  %11 = alloca %struct.TYPE_50__*, align 8
  %12 = alloca %struct.TYPE_64__*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %3, align 8
  %13 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_63__*, %struct.TYPE_63__** %14, align 8
  store %struct.TYPE_63__* %15, %struct.TYPE_63__** %9, align 8
  %16 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %16, i32 0, i32 4
  store %struct.TYPE_53__* %17, %struct.TYPE_53__** %7, align 8
  %18 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %19 = call %struct.TYPE_52__* @ngx_http_grpc_get_ctx(%struct.TYPE_51__* %18)
  store %struct.TYPE_52__* %19, %struct.TYPE_52__** %10, align 8
  %20 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %21 = icmp eq %struct.TYPE_52__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @NGX_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %699

24:                                               ; preds = %1
  %25 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %26 = load i32, i32* @ngx_http_upstream_module, align 4
  %27 = call %struct.TYPE_64__* @ngx_http_get_module_main_conf(%struct.TYPE_51__* %25, i32 %26)
  store %struct.TYPE_64__* %27, %struct.TYPE_64__** %12, align 8
  br label %28

28:                                               ; preds = %692, %370, %303, %280, %244, %208, %24
  %29 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ngx_http_grpc_st_payload, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %28
  %35 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %36 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %37 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %38 = call i64 @ngx_http_grpc_parse_frame(%struct.TYPE_51__* %35, %struct.TYPE_52__* %36, %struct.TYPE_53__* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @NGX_AGAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %43, i32 0, i32 14
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %59, i64* %2, align 8
  br label %699

60:                                               ; preds = %34
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @NGX_ERROR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %65, i64* %2, align 8
  br label %699

66:                                               ; preds = %60
  %67 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NGX_HTTP_V2_DATA_FRAME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %94, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %79, i32 0, i32 14
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78, %72
  %84 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %90, i32 0, i32 14
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89, %78, %66
  %95 = load i32, i32* @NGX_LOG_ERR, align 4
  %96 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_60__*, %struct.TYPE_60__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_54__*, %struct.TYPE_54__** %99, align 8
  %101 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %95, %struct.TYPE_54__* %100, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %105, i64* %2, align 8
  br label %699

106:                                              ; preds = %89, %83
  %107 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load i32, i32* @NGX_LOG_ERR, align 4
  %121 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_60__*, %struct.TYPE_60__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_54__*, %struct.TYPE_54__** %124, align 8
  %126 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %120, %struct.TYPE_54__* %125, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %130, i64* %2, align 8
  br label %699

131:                                              ; preds = %111, %106
  br label %132

132:                                              ; preds = %131, %28
  %133 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NGX_HTTP_V2_RST_STREAM_FRAME, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %132
  %139 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %140 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %141 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %142 = call i64 @ngx_http_grpc_parse_rst_stream(%struct.TYPE_51__* %139, %struct.TYPE_52__* %140, %struct.TYPE_53__* %141)
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @NGX_AGAIN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %147, i64* %2, align 8
  br label %699

148:                                              ; preds = %138
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @NGX_ERROR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %153, i64* %2, align 8
  br label %699

154:                                              ; preds = %148
  %155 = load i32, i32* @NGX_LOG_ERR, align 4
  %156 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_60__*, %struct.TYPE_60__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_54__*, %struct.TYPE_54__** %159, align 8
  %161 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %155, %struct.TYPE_54__* %160, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %165, i64* %2, align 8
  br label %699

166:                                              ; preds = %132
  %167 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NGX_HTTP_V2_GOAWAY_FRAME, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %209

172:                                              ; preds = %166
  %173 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %174 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %175 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %176 = call i64 @ngx_http_grpc_parse_goaway(%struct.TYPE_51__* %173, %struct.TYPE_52__* %174, %struct.TYPE_53__* %175)
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i64, i64* @NGX_AGAIN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %181, i64* %2, align 8
  br label %699

182:                                              ; preds = %172
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* @NGX_ERROR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %187, i64* %2, align 8
  br label %699

188:                                              ; preds = %182
  %189 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %188
  %197 = load i32, i32* @NGX_LOG_ERR, align 4
  %198 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_60__*, %struct.TYPE_60__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_54__*, %struct.TYPE_54__** %201, align 8
  %203 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %197, %struct.TYPE_54__* %202, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %207, i64* %2, align 8
  br label %699

208:                                              ; preds = %188
  br label %28

209:                                              ; preds = %166
  %210 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @NGX_HTTP_V2_WINDOW_UPDATE_FRAME, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %245

215:                                              ; preds = %209
  %216 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %217 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %218 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %219 = call i64 @ngx_http_grpc_parse_window_update(%struct.TYPE_51__* %216, %struct.TYPE_52__* %217, %struct.TYPE_53__* %218)
  store i64 %219, i64* %5, align 8
  %220 = load i64, i64* %5, align 8
  %221 = load i64, i64* @NGX_AGAIN, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %224, i64* %2, align 8
  br label %699

225:                                              ; preds = %215
  %226 = load i64, i64* %5, align 8
  %227 = load i64, i64* @NGX_ERROR, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %230, i64* %2, align 8
  br label %699

231:                                              ; preds = %225
  %232 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %232, i32 0, i32 9
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_56__*, %struct.TYPE_56__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ngx_post_event(i32 %242, i32* @ngx_posted_events)
  br label %244

244:                                              ; preds = %236, %231
  br label %28

245:                                              ; preds = %209
  %246 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @NGX_HTTP_V2_SETTINGS_FRAME, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %245
  %252 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %253 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %254 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %255 = call i64 @ngx_http_grpc_parse_settings(%struct.TYPE_51__* %252, %struct.TYPE_52__* %253, %struct.TYPE_53__* %254)
  store i64 %255, i64* %5, align 8
  %256 = load i64, i64* %5, align 8
  %257 = load i64, i64* @NGX_AGAIN, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %251
  %260 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %260, i64* %2, align 8
  br label %699

261:                                              ; preds = %251
  %262 = load i64, i64* %5, align 8
  %263 = load i64, i64* @NGX_ERROR, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %266, i64* %2, align 8
  br label %699

267:                                              ; preds = %261
  %268 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %268, i32 0, i32 9
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_56__*, %struct.TYPE_56__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @ngx_post_event(i32 %278, i32* @ngx_posted_events)
  br label %280

280:                                              ; preds = %272, %267
  br label %28

281:                                              ; preds = %245
  %282 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @NGX_HTTP_V2_PING_FRAME, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %311

287:                                              ; preds = %281
  %288 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %289 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %290 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %291 = call i64 @ngx_http_grpc_parse_ping(%struct.TYPE_51__* %288, %struct.TYPE_52__* %289, %struct.TYPE_53__* %290)
  store i64 %291, i64* %5, align 8
  %292 = load i64, i64* %5, align 8
  %293 = load i64, i64* @NGX_AGAIN, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %287
  %296 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %296, i64* %2, align 8
  br label %699

297:                                              ; preds = %287
  %298 = load i64, i64* %5, align 8
  %299 = load i64, i64* @NGX_ERROR, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %302, i64* %2, align 8
  br label %699

303:                                              ; preds = %297
  %304 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_56__*, %struct.TYPE_56__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @ngx_post_event(i32 %309, i32* @ngx_posted_events)
  br label %28

311:                                              ; preds = %281
  %312 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @NGX_HTTP_V2_PUSH_PROMISE_FRAME, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %311
  %318 = load i32, i32* @NGX_LOG_ERR, align 4
  %319 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_60__*, %struct.TYPE_60__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_54__*, %struct.TYPE_54__** %322, align 8
  %324 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %318, %struct.TYPE_54__* %323, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %325 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %325, i64* %2, align 8
  br label %699

326:                                              ; preds = %311
  %327 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @NGX_HTTP_V2_HEADERS_FRAME, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %386

332:                                              ; preds = %326
  %333 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @NGX_HTTP_V2_CONTINUATION_FRAME, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %386

338:                                              ; preds = %332
  %339 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %341, %344
  %346 = sext i32 %345 to i64
  %347 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = icmp slt i64 %346, %349
  br i1 %350, label %351, label %370

351:                                              ; preds = %338
  %352 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = sub nsw i32 %354, %357
  %359 = sext i32 %358 to i64
  %360 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = sub nsw i64 %362, %359
  store i64 %363, i64* %361, align 8
  %364 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %367, i32 0, i32 1
  store i32 %366, i32* %368, align 4
  %369 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %369, i64* %2, align 8
  br label %699

370:                                              ; preds = %338
  %371 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, %373
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %375, align 4
  %380 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %380, i32 0, i32 4
  store i64 0, i64* %381, align 8
  %382 = load i8*, i8** @ngx_http_grpc_st_start, align 8
  %383 = ptrtoint i8* %382 to i64
  %384 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %384, i32 0, i32 0
  store i64 %383, i64* %385, align 8
  br label %28

386:                                              ; preds = %332, %326
  br label %387

387:                                              ; preds = %624, %538, %386
  %388 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %389 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %390 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %391 = call i64 @ngx_http_grpc_parse_header(%struct.TYPE_51__* %388, %struct.TYPE_52__* %389, %struct.TYPE_53__* %390)
  store i64 %391, i64* %5, align 8
  %392 = load i64, i64* %5, align 8
  %393 = load i64, i64* @NGX_AGAIN, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %387
  br label %687

396:                                              ; preds = %387
  %397 = load i64, i64* %5, align 8
  %398 = load i64, i64* @NGX_OK, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %625

400:                                              ; preds = %396
  %401 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %402 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_60__*, %struct.TYPE_60__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_54__*, %struct.TYPE_54__** %405, align 8
  %407 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %407, i32 0, i32 12
  %409 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %409, i32 0, i32 11
  %411 = call i32 @ngx_log_debug2(i32 %401, %struct.TYPE_54__* %406, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_55__* %408, %struct.TYPE_62__* %410)
  %412 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %412, i32 0, i32 12
  %414 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %541

417:                                              ; preds = %400
  %418 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %418, i32 0, i32 12
  %420 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %419, i32 0, i32 1
  %421 = load i8*, i8** %420, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 0
  %423 = load i8, i8* %422, align 1
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 58
  br i1 %425, label %426, label %541

426:                                              ; preds = %417
  %427 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %427, i32 0, i32 12
  %429 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = icmp ne i64 %431, 7
  br i1 %432, label %440, label %433

433:                                              ; preds = %426
  %434 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %434, i32 0, i32 12
  %436 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %435, i32 0, i32 1
  %437 = load i8*, i8** %436, align 8
  %438 = call i64 @ngx_strncmp(i8* %437, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %453

440:                                              ; preds = %433, %426
  %441 = load i32, i32* @NGX_LOG_ERR, align 4
  %442 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_60__*, %struct.TYPE_60__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_54__*, %struct.TYPE_54__** %445, align 8
  %447 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %447, i32 0, i32 12
  %449 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %450 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %449, i32 0, i32 11
  %451 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %441, %struct.TYPE_54__* %446, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_55__* %448, %struct.TYPE_62__* %450)
  %452 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %452, i64* %2, align 8
  br label %699

453:                                              ; preds = %433
  %454 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 8
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %467

458:                                              ; preds = %453
  %459 = load i32, i32* @NGX_LOG_ERR, align 4
  %460 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_60__*, %struct.TYPE_60__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_54__*, %struct.TYPE_54__** %463, align 8
  %465 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %459, %struct.TYPE_54__* %464, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %466 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %466, i64* %2, align 8
  br label %699

467:                                              ; preds = %453
  %468 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %469 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %468, i32 0, i32 11
  store %struct.TYPE_62__* %469, %struct.TYPE_62__** %4, align 8
  %470 = load %struct.TYPE_62__*, %struct.TYPE_62__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, 3
  br i1 %473, label %474, label %484

474:                                              ; preds = %467
  %475 = load i32, i32* @NGX_LOG_ERR, align 4
  %476 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %476, i32 0, i32 0
  %478 = load %struct.TYPE_60__*, %struct.TYPE_60__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_54__*, %struct.TYPE_54__** %479, align 8
  %481 = load %struct.TYPE_62__*, %struct.TYPE_62__** %4, align 8
  %482 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %475, %struct.TYPE_54__* %480, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_62__* %481)
  %483 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %483, i64* %2, align 8
  br label %699

484:                                              ; preds = %467
  %485 = load %struct.TYPE_62__*, %struct.TYPE_62__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = call i64 @ngx_atoi(i32 %487, i32 3)
  store i64 %488, i64* %6, align 8
  %489 = load i64, i64* %6, align 8
  %490 = load i64, i64* @NGX_ERROR, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %502

492:                                              ; preds = %484
  %493 = load i32, i32* @NGX_LOG_ERR, align 4
  %494 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_60__*, %struct.TYPE_60__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %496, i32 0, i32 0
  %498 = load %struct.TYPE_54__*, %struct.TYPE_54__** %497, align 8
  %499 = load %struct.TYPE_62__*, %struct.TYPE_62__** %4, align 8
  %500 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %493, %struct.TYPE_54__* %498, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_62__* %499)
  %501 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %501, i64* %2, align 8
  br label %699

502:                                              ; preds = %484
  %503 = load i64, i64* %6, align 8
  %504 = load i64, i64* @NGX_HTTP_OK, align 8
  %505 = icmp slt i64 %503, %504
  br i1 %505, label %506, label %516

506:                                              ; preds = %502
  %507 = load i32, i32* @NGX_LOG_ERR, align 4
  %508 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_60__*, %struct.TYPE_60__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %510, i32 0, i32 0
  %512 = load %struct.TYPE_54__*, %struct.TYPE_54__** %511, align 8
  %513 = load %struct.TYPE_62__*, %struct.TYPE_62__** %4, align 8
  %514 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %507, %struct.TYPE_54__* %512, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_62__* %513)
  %515 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %515, i64* %2, align 8
  br label %699

516:                                              ; preds = %502
  %517 = load i64, i64* %6, align 8
  %518 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %519 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %519, i32 0, i32 2
  store i64 %517, i64* %520, align 8
  %521 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %522 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %521, i32 0, i32 2
  %523 = load %struct.TYPE_58__*, %struct.TYPE_58__** %522, align 8
  %524 = icmp ne %struct.TYPE_58__* %523, null
  br i1 %524, label %525, label %538

525:                                              ; preds = %516
  %526 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %527 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %526, i32 0, i32 2
  %528 = load %struct.TYPE_58__*, %struct.TYPE_58__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %538

532:                                              ; preds = %525
  %533 = load i64, i64* %6, align 8
  %534 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %534, i32 0, i32 2
  %536 = load %struct.TYPE_58__*, %struct.TYPE_58__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %536, i32 0, i32 0
  store i64 %533, i64* %537, align 8
  br label %538

538:                                              ; preds = %532, %525, %516
  %539 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %539, i32 0, i32 5
  store i32 1, i32* %540, align 8
  br label %387

541:                                              ; preds = %417, %400
  %542 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %543 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %542, i32 0, i32 5
  %544 = load i32, i32* %543, align 8
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %555, label %546

546:                                              ; preds = %541
  %547 = load i32, i32* @NGX_LOG_ERR, align 4
  %548 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %548, i32 0, i32 0
  %550 = load %struct.TYPE_60__*, %struct.TYPE_60__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %550, i32 0, i32 0
  %552 = load %struct.TYPE_54__*, %struct.TYPE_54__** %551, align 8
  %553 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %547, %struct.TYPE_54__* %552, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %554 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %554, i64* %2, align 8
  br label %699

555:                                              ; preds = %541
  br label %556

556:                                              ; preds = %555
  %557 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %558 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %558, i32 0, i32 1
  %560 = call %struct.TYPE_61__* @ngx_list_push(i32* %559)
  store %struct.TYPE_61__* %560, %struct.TYPE_61__** %8, align 8
  %561 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %562 = icmp eq %struct.TYPE_61__* %561, null
  br i1 %562, label %563, label %565

563:                                              ; preds = %556
  %564 = load i64, i64* @NGX_ERROR, align 8
  store i64 %564, i64* %2, align 8
  br label %699

565:                                              ; preds = %556
  %566 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %567 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %566, i32 0, i32 1
  %568 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %569 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %568, i32 0, i32 12
  %570 = bitcast %struct.TYPE_55__* %567 to i8*
  %571 = bitcast %struct.TYPE_55__* %569 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %570, i8* align 8 %571, i64 16, i1 false)
  %572 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %572, i32 0, i32 3
  %574 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %574, i32 0, i32 11
  %576 = bitcast %struct.TYPE_62__* %573 to i8*
  %577 = bitcast %struct.TYPE_62__* %575 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %576, i8* align 8 %577, i64 8, i1 false)
  %578 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %579, i32 0, i32 1
  %581 = load i8*, i8** %580, align 8
  %582 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %583 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %582, i32 0, i32 0
  store i8* %581, i8** %583, align 8
  %584 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %585 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %585, i32 0, i32 1
  %587 = load i8*, i8** %586, align 8
  %588 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %589 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @ngx_hash_key(i8* %587, i32 %591)
  %593 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %594 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %593, i32 0, i32 2
  store i32 %592, i32* %594, align 8
  %595 = load %struct.TYPE_64__*, %struct.TYPE_64__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %595, i32 0, i32 0
  %597 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %598 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %597, i32 0, i32 2
  %599 = load i32, i32* %598, align 8
  %600 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %601 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %600, i32 0, i32 0
  %602 = load i8*, i8** %601, align 8
  %603 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %604 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %603, i32 0, i32 1
  %605 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = call %struct.TYPE_50__* @ngx_hash_find(i32* %596, i32 %599, i8* %602, i32 %606)
  store %struct.TYPE_50__* %607, %struct.TYPE_50__** %11, align 8
  %608 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %609 = icmp ne %struct.TYPE_50__* %608, null
  br i1 %609, label %610, label %624

610:                                              ; preds = %565
  %611 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %612 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %611, i32 0, i32 0
  %613 = load i64 (%struct.TYPE_51__*, %struct.TYPE_61__*, i32)*, i64 (%struct.TYPE_51__*, %struct.TYPE_61__*, i32)** %612, align 8
  %614 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %615 = load %struct.TYPE_61__*, %struct.TYPE_61__** %8, align 8
  %616 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %617 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 8
  %619 = call i64 %613(%struct.TYPE_51__* %614, %struct.TYPE_61__* %615, i32 %618)
  %620 = load i64, i64* @NGX_OK, align 8
  %621 = icmp ne i64 %619, %620
  br i1 %621, label %622, label %624

622:                                              ; preds = %610
  %623 = load i64, i64* @NGX_ERROR, align 8
  store i64 %623, i64* %2, align 8
  br label %699

624:                                              ; preds = %610, %565
  br label %387

625:                                              ; preds = %396
  %626 = load i64, i64* %5, align 8
  %627 = load i64, i64* @NGX_HTTP_PARSE_HEADER_DONE, align 8
  %628 = icmp eq i64 %626, %627
  br i1 %628, label %629, label %678

629:                                              ; preds = %625
  %630 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %631 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %632 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_60__*, %struct.TYPE_60__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %633, i32 0, i32 0
  %635 = load %struct.TYPE_54__*, %struct.TYPE_54__** %634, align 8
  %636 = call i32 @ngx_log_debug0(i32 %630, %struct.TYPE_54__* %635, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %637 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %638 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %637, i32 0, i32 10
  %639 = load i64, i64* %638, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %676

641:                                              ; preds = %629
  %642 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %643 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %643, i32 0, i32 0
  store i64 0, i64* %644, align 8
  %645 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %646 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %645, i32 0, i32 9
  %647 = load i32*, i32** %646, align 8
  %648 = icmp eq i32* %647, null
  br i1 %648, label %649, label %675

649:                                              ; preds = %641
  %650 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %651 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %650, i32 0, i32 8
  %652 = load i32*, i32** %651, align 8
  %653 = icmp eq i32* %652, null
  br i1 %653, label %654, label %675

654:                                              ; preds = %649
  %655 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %656 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %655, i32 0, i32 7
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %675

659:                                              ; preds = %654
  %660 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %661 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %660, i32 0, i32 6
  %662 = load i32, i32* %661, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %675, label %664

664:                                              ; preds = %659
  %665 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %666 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.TYPE_53__*, %struct.TYPE_53__** %7, align 8
  %669 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %668, i32 0, i32 1
  %670 = load i32, i32* %669, align 4
  %671 = icmp eq i32 %667, %670
  br i1 %671, label %672, label %675

672:                                              ; preds = %664
  %673 = load %struct.TYPE_63__*, %struct.TYPE_63__** %9, align 8
  %674 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %673, i32 0, i32 0
  store i32 1, i32* %674, align 8
  br label %675

675:                                              ; preds = %672, %664, %659, %654, %649, %641
  br label %676

676:                                              ; preds = %675, %629
  %677 = load i64, i64* @NGX_OK, align 8
  store i64 %677, i64* %2, align 8
  br label %699

678:                                              ; preds = %625
  %679 = load i32, i32* @NGX_LOG_ERR, align 4
  %680 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %681 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %680, i32 0, i32 0
  %682 = load %struct.TYPE_60__*, %struct.TYPE_60__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %682, i32 0, i32 0
  %684 = load %struct.TYPE_54__*, %struct.TYPE_54__** %683, align 8
  %685 = call i32 (i32, %struct.TYPE_54__*, i32, i8*, ...) @ngx_log_error(i32 %679, %struct.TYPE_54__* %684, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %686 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %686, i64* %2, align 8
  br label %699

687:                                              ; preds = %395
  %688 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %689 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %688, i32 0, i32 4
  %690 = load i64, i64* %689, align 8
  %691 = icmp eq i64 %690, 0
  br i1 %691, label %692, label %697

692:                                              ; preds = %687
  %693 = load i8*, i8** @ngx_http_grpc_st_start, align 8
  %694 = ptrtoint i8* %693 to i64
  %695 = load %struct.TYPE_52__*, %struct.TYPE_52__** %10, align 8
  %696 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %695, i32 0, i32 0
  store i64 %694, i64* %696, align 8
  br label %28

697:                                              ; preds = %687
  %698 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %698, i64* %2, align 8
  br label %699

699:                                              ; preds = %697, %678, %676, %622, %563, %546, %506, %492, %474, %458, %440, %351, %317, %301, %295, %265, %259, %229, %223, %196, %186, %180, %154, %152, %146, %119, %94, %64, %58, %22
  %700 = load i64, i64* %2, align 8
  ret i64 %700
}

declare dso_local %struct.TYPE_52__* @ngx_http_grpc_get_ctx(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_64__* @ngx_http_get_module_main_conf(%struct.TYPE_51__*, i32) #1

declare dso_local i64 @ngx_http_grpc_parse_frame(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_54__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_http_grpc_parse_rst_stream(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i64 @ngx_http_grpc_parse_goaway(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i64 @ngx_http_grpc_parse_window_update(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i32 @ngx_post_event(i32, i32*) #1

declare dso_local i64 @ngx_http_grpc_parse_settings(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i64 @ngx_http_grpc_parse_ping(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i64 @ngx_http_grpc_parse_header(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_53__*) #1

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_54__*, i32, i8*, %struct.TYPE_55__*, %struct.TYPE_62__*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_atoi(i32, i32) #1

declare dso_local %struct.TYPE_61__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_hash_key(i8*, i32) #1

declare dso_local %struct.TYPE_50__* @ngx_hash_find(i32*, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_54__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
