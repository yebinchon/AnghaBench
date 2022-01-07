; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_send_chain_link.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_send_chain_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"ctx->eof already set or raw req socket already acquired\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i32 0, align 4
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_11 = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"last buf to be sent\00", align 1
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"lua sending last buf of the response body\00", align 1
@NGX_HTTP_LAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"lua buffering output bufs for the HTTP 1.0 request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_send_chain_link(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__**, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %3
  %22 = call i32 @dd(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @NGX_OK, align 8
  store i64 %23, i64* %4, align 8
  br label %233

24:                                               ; preds = %16
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NGX_HTTP_HEAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31, %24
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = load i32, i32* @ngx_http_lua_module, align 4
  %42 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %40, i32 %41)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %11, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NGX_HTTP_VERSION_11, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %68, %62, %57, %52, %47, %39
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = call i64 @ngx_http_lua_send_header_if_needed(%struct.TYPE_22__* %78, %struct.TYPE_24__* %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @NGX_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @NGX_OK, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %77
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %4, align 8
  br label %233

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = call i64 @ngx_http_lua_send_http10_headers(%struct.TYPE_22__* %103, %struct.TYPE_24__* %104)
  store i64 %105, i64* %4, align 8
  br label %233

106:                                              ; preds = %95
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %4, align 8
  br label %233

108:                                              ; preds = %90
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %110 = icmp eq %struct.TYPE_25__* %109, null
  br i1 %110, label %111, label %197

111:                                              ; preds = %108
  %112 = call i32 @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = icmp eq %struct.TYPE_22__* %118, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = call i64 @ngx_http_discard_request_body(%struct.TYPE_22__* %124)
  %126 = load i64, i64* @NGX_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %4, align 8
  br label %233

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %117, %111
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %131
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = call i64 @ngx_http_lua_send_http10_headers(%struct.TYPE_22__* %137, %struct.TYPE_24__* %138)
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @NGX_ERROR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %136
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143, %136
  %148 = load i64, i64* %8, align 8
  store i64 %148, i64* %4, align 8
  br label %233

149:                                              ; preds = %143
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %151, align 8
  %153 = icmp ne %struct.TYPE_25__* %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = call i64 @ngx_http_lua_output_filter(%struct.TYPE_22__* %155, %struct.TYPE_25__* %158)
  store i64 %159, i64* %8, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* @NGX_ERROR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %154
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163, %154
  %168 = load i64, i64* %8, align 8
  store i64 %168, i64* %4, align 8
  br label %233

169:                                              ; preds = %163
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %171, align 8
  br label %172

172:                                              ; preds = %169, %149
  br label %173

173:                                              ; preds = %172, %131
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ngx_log_debug0(i32 %176, i32 %181, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = load i32, i32* @NGX_HTTP_LAST, align 4
  %185 = call i64 @ngx_http_lua_send_special(%struct.TYPE_22__* %183, i32 %184)
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @NGX_ERROR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %173
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189, %173
  %194 = load i64, i64* %8, align 8
  store i64 %194, i64* %4, align 8
  br label %233

195:                                              ; preds = %189
  %196 = load i64, i64* @NGX_OK, align 8
  store i64 %196, i64* %4, align 8
  br label %233

197:                                              ; preds = %108
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %229

202:                                              ; preds = %197
  %203 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ngx_log_debug0(i32 %203, i32 %208, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %211, align 8
  store %struct.TYPE_25__* %212, %struct.TYPE_25__** %9, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 2
  store %struct.TYPE_25__** %214, %struct.TYPE_25__*** %10, align 8
  br label %215

215:                                              ; preds = %221, %202
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %217 = icmp ne %struct.TYPE_25__* %216, null
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  store %struct.TYPE_25__** %220, %struct.TYPE_25__*** %10, align 8
  br label %221

221:                                              ; preds = %218
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %223, align 8
  store %struct.TYPE_25__* %224, %struct.TYPE_25__** %9, align 8
  br label %215

225:                                              ; preds = %215
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %227 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %227, align 8
  %228 = load i64, i64* @NGX_OK, align 8
  store i64 %228, i64* %4, align 8
  br label %233

229:                                              ; preds = %197
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %232 = call i64 @ngx_http_lua_output_filter(%struct.TYPE_22__* %230, %struct.TYPE_25__* %231)
  store i64 %232, i64* %4, align 8
  br label %233

233:                                              ; preds = %229, %225, %195, %193, %167, %147, %128, %106, %102, %88, %21
  %234 = load i64, i64* %4, align 8
  ret i64 %234
}

declare dso_local i32 @dd(i8*) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_lua_send_header_if_needed(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_http_lua_send_http10_headers(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_22__*) #1

declare dso_local i64 @ngx_http_lua_output_filter(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_lua_send_special(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
