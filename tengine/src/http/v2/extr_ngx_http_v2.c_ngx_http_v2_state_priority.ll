; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_priority.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32*, i32* }

@NGX_HTTP_V2_PRIORITY_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"client sent PRIORITY frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"client sent too many PRIORITY frames\00", align 1
@NGX_HTTP_V2_ENHANCE_YOUR_CALM = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"http2 PRIORITY frame sid:%ui depends on %ui excl:%ui weight:%ui\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"client sent PRIORITY frame with incorrect identifier\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"client sent PRIORITY frame for stream %ui with incorrect dependency\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_19__*, i32*, i32*)* @ngx_http_v2_state_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_priority(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @NGX_LOG_INFO, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %33 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %31, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %228

34:                                               ; preds = %3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @NGX_LOG_INFO, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = load i32, i32* @NGX_HTTP_V2_ENHANCE_YOUR_CALM, align 4
  %50 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %48, i32 %49)
  store i32* %50, i32** %4, align 8
  br label %228

51:                                               ; preds = %34
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @ngx_http_v2_state_save(%struct.TYPE_19__* %62, i32* %63, i32* %64, i32* (%struct.TYPE_19__*, i32*, i32*)* @ngx_http_v2_state_priority)
  store i32* %65, i32** %4, align 8
  br label %228

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @ngx_http_v2_parse_uint32(i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 2147483647
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 31
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @NGX_HTTP_V2_PRIORITY_SIZE, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ngx_log_debug4(i32 %81, i32 %86, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %66
  %101 = load i32, i32* @NGX_LOG_INFO, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %110 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %108, i32 %109)
  store i32* %110, i32** %4, align 8
  br label %228

111:                                              ; preds = %66
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %177

118:                                              ; preds = %111
  %119 = load i32, i32* @NGX_LOG_INFO, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %119, i32 %124, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.TYPE_18__* @ngx_http_v2_get_node_by_id(%struct.TYPE_19__* %130, i32 %134, i32 0)
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %12, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %137 = icmp ne %struct.TYPE_18__* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %118
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %149 = call i64 @ngx_http_v2_terminate_stream(%struct.TYPE_19__* %144, i32* %147, i32 %148)
  %150 = load i64, i64* @NGX_ERROR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %154 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %155 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %153, i32 %154)
  store i32* %155, i32** %4, align 8
  br label %228

156:                                              ; preds = %143
  br label %172

157:                                              ; preds = %138, %118
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %164 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_19__* %158, i32 %162, i32 %163)
  %165 = load i64, i64* @NGX_ERROR, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %170 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %168, i32 %169)
  store i32* %170, i32** %4, align 8
  br label %228

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %156
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_19__* %173, i32* %174, i32* %175)
  store i32* %176, i32** %4, align 8
  br label %228

177:                                              ; preds = %111
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.TYPE_18__* @ngx_http_v2_get_node_by_id(%struct.TYPE_19__* %178, i32 %182, i32 1)
  store %struct.TYPE_18__* %183, %struct.TYPE_18__** %12, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %185 = icmp eq %struct.TYPE_18__* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %188 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %189 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_19__* %187, i32 %188)
  store i32* %189, i32** %4, align 8
  br label %228

190:                                              ; preds = %177
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %218

198:                                              ; preds = %190
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %212

208:                                              ; preds = %198
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = call i32 @ngx_queue_remove(i32* %210)
  br label %212

212:                                              ; preds = %208, %203
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = call i32 @ngx_queue_insert_tail(i32* %214, i32* %216)
  br label %218

218:                                              ; preds = %212, %190
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @ngx_http_v2_set_dependency(%struct.TYPE_19__* %219, %struct.TYPE_18__* %220, i32 %221, i32 %222)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = load i32*, i32** %7, align 8
  %227 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_19__* %224, i32* %225, i32* %226)
  store i32* %227, i32** %4, align 8
  br label %228

228:                                              ; preds = %218, %186, %172, %167, %152, %100, %61, %40, %19
  %229 = load i32*, i32** %4, align 8
  ret i32* %229
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_19__*, i32*, i32*, i32* (%struct.TYPE_19__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_http_v2_get_node_by_id(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @ngx_http_v2_terminate_stream(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_http_v2_set_dependency(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
