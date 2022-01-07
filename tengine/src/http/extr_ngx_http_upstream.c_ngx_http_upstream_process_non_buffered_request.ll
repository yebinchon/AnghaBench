; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_non_buffered_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_non_buffered_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i64 (%struct.TYPE_29__*, i64, i64)*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_27__*, i32, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_26__ = type { i32, i64 (i32, i64)*, %struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32*, %struct.TYPE_23__, i64, i32, %struct.TYPE_30__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"upstream prematurely closed connection\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, i32)* @ngx_http_upstream_process_non_buffered_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_non_buffered_request(%struct.TYPE_27__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %12, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %10, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %11, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 9
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ true, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %219, %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %150

39:                                               ; preds = %36
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %49, %44, %39
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @ngx_http_output_filter(%struct.TYPE_27__* %55, i64 %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @NGX_ERROR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %66 = load i64, i64* @NGX_ERROR, align 8
  %67 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %64, %struct.TYPE_26__* %65, i64 %66)
  br label %348

68:                                               ; preds = %54
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ngx_chain_update_chains(i32 %71, i32* %73, i32** %75, i64* %77, i32 %81)
  br label %83

83:                                               ; preds = %68, %49
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %149

88:                                               ; preds = %83
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %88
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %108 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %106, %struct.TYPE_26__* %107, i64 0)
  br label %348

109:                                              ; preds = %100, %93
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load i32, i32* @NGX_LOG_ERR, align 4
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ngx_log_error(i32 %117, i32 %120, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %124 = load i64, i64* @NGX_HTTP_BAD_GATEWAY, align 8
  %125 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %122, %struct.TYPE_26__* %123, i64 %124)
  br label %348

126:                                              ; preds = %109
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %136 = load i64, i64* @NGX_HTTP_BAD_GATEWAY, align 8
  %137 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %134, %struct.TYPE_26__* %135, i64 %136)
  br label %348

138:                                              ; preds = %126
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %138, %83
  br label %150

150:                                              ; preds = %149, %36
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 %153, %156
  store i64 %157, i64* %5, align 8
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %220

160:                                              ; preds = %150
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %220

167:                                              ; preds = %160
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 0
  %170 = load i64 (%struct.TYPE_29__*, i64, i64)*, i64 (%struct.TYPE_29__*, i64, i64)** %169, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %5, align 8
  %176 = call i64 %170(%struct.TYPE_29__* %171, i64 %174, i64 %175)
  store i64 %176, i64* %6, align 8
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* @NGX_AGAIN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %221

181:                                              ; preds = %167
  %182 = load i64, i64* %6, align 8
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %219

184:                                              ; preds = %181
  %185 = load i64, i64* %6, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %185
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load i64, i64* %6, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %194
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load i64 (i32, i64)*, i64 (i32, i64)** %204, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i64, i64* %6, align 8
  %210 = call i64 %205(i32 %208, i64 %209)
  %211 = load i64, i64* @NGX_ERROR, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %184
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %216 = load i64, i64* @NGX_ERROR, align 8
  %217 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %214, %struct.TYPE_26__* %215, i64 %216)
  br label %348

218:                                              ; preds = %184
  br label %219

219:                                              ; preds = %218, %181
  store i32 1, i32* %4, align 4
  br label %36

220:                                              ; preds = %160, %150
  br label %221

221:                                              ; preds = %220, %180
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %223 = load i32, i32* @ngx_http_core_module, align 4
  %224 = call %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %222, i32 %223)
  store %struct.TYPE_28__* %224, %struct.TYPE_28__** %13, align 8
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %226, align 8
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %229 = icmp eq %struct.TYPE_27__* %227, %228
  br i1 %229, label %230, label %246

230:                                              ; preds = %221
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @ngx_handle_write_event(%struct.TYPE_21__* %233, i32 %236)
  %238 = load i64, i64* @NGX_OK, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %230
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %243 = load i64, i64* @NGX_ERROR, align 8
  %244 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %241, %struct.TYPE_26__* %242, i64 %243)
  br label %348

245:                                              ; preds = %230
  br label %246

246:                                              ; preds = %245, %221
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %246
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %253
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @ngx_add_timer(%struct.TYPE_21__* %263, i32 %266)
  br label %281

268:                                              ; preds = %253, %246
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %277, align 8
  %279 = call i32 @ngx_del_timer(%struct.TYPE_21__* %278)
  br label %280

280:                                              ; preds = %275, %268
  br label %281

281:                                              ; preds = %280, %260
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %281
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288, %281
  %296 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  store i32 %296, i32* %9, align 4
  br label %298

297:                                              ; preds = %288
  store i32 0, i32* %9, align 4
  br label %298

298:                                              ; preds = %297, %295
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = call i64 @ngx_handle_read_event(%struct.TYPE_21__* %301, i32 %302)
  %304 = load i64, i64* @NGX_OK, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %298
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %309 = load i64, i64* @NGX_ERROR, align 8
  %310 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %307, %struct.TYPE_26__* %308, i64 %309)
  br label %348

311:                                              ; preds = %298
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %335

318:                                              ; preds = %311
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %318
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %327, align 8
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @ngx_add_timer(%struct.TYPE_21__* %328, i32 %333)
  br label %348

335:                                              ; preds = %318, %311
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %335
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %344, align 8
  %346 = call i32 @ngx_del_timer(%struct.TYPE_21__* %345)
  br label %347

347:                                              ; preds = %342, %335
  br label %348

348:                                              ; preds = %63, %105, %116, %133, %213, %240, %306, %347, %325
  ret void
}

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__*, %struct.TYPE_26__*, i64) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32**, i64*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
