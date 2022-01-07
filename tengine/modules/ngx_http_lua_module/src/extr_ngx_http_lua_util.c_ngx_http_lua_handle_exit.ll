; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_handle_exit.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_handle_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"lua thread aborting request with status %d\00", align 1
@NGX_HTTP_LUA_CO_DEAD = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_CLOSE = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @ngx_http_lua_handle_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_handle_exit(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @ngx_log_debug1(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = call i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ngx_http_lua_probe_coroutine_done(%struct.TYPE_17__* %23, i32 %28, i32 1)
  %30 = load i32, i32* @NGX_HTTP_LUA_CO_DEAD, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = load i32, i32* @ngx_http_lua_module, align 4
  %43 = call i32 @ngx_http_set_ctx(%struct.TYPE_17__* %40, %struct.TYPE_18__* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %3
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = call i32 @ngx_http_lua_request_cleanup(%struct.TYPE_18__* %45, i32 0)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %236

57:                                               ; preds = %44
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NGX_HTTP_OK, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %73, %67, %62, %57
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %86
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %146

97:                                               ; preds = %91
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NGX_ERROR, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %146

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %109
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NGX_HTTP_CLOSE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %115
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_17__* %122, %struct.TYPE_18__* %123, i32* null)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @NGX_ERROR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %121
  %133 = load i64, i64* %8, align 8
  store i64 %133, i64* %4, align 8
  br label %236

134:                                              ; preds = %128
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NGX_HTTP_OK, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %141, i64* %4, align 8
  br label %236

142:                                              ; preds = %134
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %4, align 8
  br label %236

146:                                              ; preds = %115, %109, %103, %97, %91, %86
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @NGX_OK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %152, %146
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NGX_HTTP_OK, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %157
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %163
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169, %152
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %178 = call i64 @ngx_http_lua_send_chain_link(%struct.TYPE_17__* %176, %struct.TYPE_18__* %177, i32* null)
  store i64 %178, i64* %8, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* @NGX_ERROR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182, %175
  %187 = load i64, i64* %8, align 8
  store i64 %187, i64* %4, align 8
  br label %236

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %169, %163, %157
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %232

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @NGX_OK, align 8
  %204 = icmp sgt i64 %202, %203
  br i1 %204, label %205, label %232

205:                                              ; preds = %199
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %232

211:                                              ; preds = %205
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %232

217:                                              ; preds = %211
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @NGX_HTTP_CLOSE, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i64, i64* @NGX_OK, align 8
  store i64 %229, i64* %4, align 8
  br label %236

230:                                              ; preds = %223
  %231 = load i64, i64* @NGX_HTTP_OK, align 8
  store i64 %231, i64* %4, align 8
  br label %236

232:                                              ; preds = %217, %211, %205, %199, %194
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %4, align 8
  br label %236

236:                                              ; preds = %232, %230, %228, %186, %142, %140, %132, %53
  %237 = load i64, i64* %4, align 8
  ret i64 %237
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_lua_cleanup_pending_operation(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_http_lua_probe_coroutine_done(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_lua_request_cleanup(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
