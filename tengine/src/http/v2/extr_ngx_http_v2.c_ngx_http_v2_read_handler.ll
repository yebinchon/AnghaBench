; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*, i32*, i64)*, i32, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32* (%struct.TYPE_20__*, i32*, i32*)*, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"http2 read handler\00", align 1
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_STATE_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @ngx_http_v2_read_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_v2_read_handler(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @NGX_LOG_INFO, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %26 = call i32 @ngx_log_error(i32 %21, i32 %24, i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %29 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %27, i32 %28)
  br label %232

30:                                               ; preds = %1
  %31 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_log_debug0(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %30
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %54 = call i64 @ngx_http_v2_send_goaway(%struct.TYPE_20__* %52, i32 %53)
  %55 = load i64, i64* @NGX_ERROR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %58, i32 0)
  br label %232

60:                                               ; preds = %49
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__* %61)
  %63 = load i64, i64* @NGX_ERROR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %66, i32 0)
  br label %232

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %232

72:                                               ; preds = %30
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ngx_http_v2_module, align 4
  %79 = call %struct.TYPE_19__* @ngx_http_get_module_main_conf(i32 %77, i32 %78)
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %8, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NGX_HTTP_V2_STATE_BUFFER_SIZE, align 4
  %84 = mul nsw i32 2, %83
  %85 = sub nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %181, %72
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %3, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NGX_HTTP_V2_STATE_BUFFER_SIZE, align 4
  %97 = call i32 @ngx_memcpy(i32* %91, i32 %95, i32 %96)
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32* %104, i32** %4, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64 (%struct.TYPE_22__*, i32*, i64)*, i64 (%struct.TYPE_22__*, i32*, i64)** %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i64 %107(%struct.TYPE_22__* %108, i32* %109, i64 %110)
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @NGX_AGAIN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %87
  br label %186

116:                                              ; preds = %87
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %119
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130, %125, %119
  %136 = load i32, i32* @NGX_LOG_INFO, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ngx_log_error(i32 %136, i32 %139, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %135, %130, %116
  %142 = load i64, i64* %6, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @NGX_ERROR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144, %141
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %152 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %151, i32 0)
  br label %232

153:                                              ; preds = %144
  %154 = load i64, i64* %6, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %4, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %176, %153
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i32* (%struct.TYPE_20__*, i32*, i32*)*, i32* (%struct.TYPE_20__*, i32*, i32*)** %166, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = call i32* %167(%struct.TYPE_20__* %168, i32* %169, i32* %170)
  store i32* %171, i32** %3, align 8
  %172 = load i32*, i32** %3, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %232

175:                                              ; preds = %163
  br label %176

176:                                              ; preds = %175
  %177 = load i32*, i32** %3, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = icmp ne i32* %177, %178
  br i1 %179, label %163, label %180

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %87, label %186

186:                                              ; preds = %181, %115
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %188 = call i64 @ngx_handle_read_event(%struct.TYPE_21__* %187, i32 0)
  %189 = load i64, i64* @NGX_OK, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %193 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %194 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %192, i32 %193)
  br label %232

195:                                              ; preds = %186
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %202 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__* %201)
  %203 = load i64, i64* @NGX_ERROR, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %207 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %206, i32 0)
  br label %232

208:                                              ; preds = %200, %195
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %208
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %215, %208
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %227 = call i32 @ngx_del_timer(%struct.TYPE_21__* %226)
  br label %228

228:                                              ; preds = %225, %220
  br label %232

229:                                              ; preds = %215
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %231 = call i32 @ngx_http_v2_handle_connection(%struct.TYPE_20__* %230)
  br label %232

232:                                              ; preds = %229, %228, %205, %191, %174, %148, %69, %65, %57, %20
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_send_goaway(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_main_conf(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_v2_handle_connection(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
