; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_tunnel.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i64, i64, i32, i32*, i32* }
%struct.TYPE_29__ = type { i64 (%struct.TYPE_29__*, i32*, i64)*, i64 (%struct.TYPE_29__*, i32*, i64)*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i64 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__*, %struct.TYPE_30__, %struct.TYPE_30__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_29__* }

@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"proxy_connect: tunnel fu:%ui write:%ui\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"proxy_connect: tunnel done\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, i32)* @ngx_http_proxy_connect_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_tunnel(%struct.TYPE_25__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %20 = call %struct.TYPE_27__* @ngx_http_get_module_ctx(%struct.TYPE_25__* %18, i32 %19)
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %16, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  store %struct.TYPE_29__* %23, %struct.TYPE_29__** %10, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %17, align 8
  %27 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ngx_log_debug2(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %11, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %37, align 8
  store %struct.TYPE_29__* %38, %struct.TYPE_29__** %12, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %42, %struct.TYPE_29__** %14, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %13, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  store %struct.TYPE_30__* %45, %struct.TYPE_30__** %9, align 8
  br label %126

46:                                               ; preds = %3
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %14, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %48, %struct.TYPE_29__** %13, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  store %struct.TYPE_30__* %50, %struct.TYPE_30__** %9, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %46
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %64, align 8
  store %struct.TYPE_30__* %65, %struct.TYPE_30__** %9, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %62, %46
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %125

77:                                               ; preds = %72
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @ngx_palloc(i32 %80, i32 %85)
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 4
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %96 = load i64, i64* @NGX_ERROR, align 8
  %97 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %94, %struct.TYPE_26__* %95, i64 %96)
  br label %524

98:                                               ; preds = %77
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = ptrtoint i32* %101 to i64
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = ptrtoint i32* %107 to i64
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 3
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %98, %72
  br label %126

126:                                              ; preds = %125, %41
  br label %127

127:                                              ; preds = %243, %126
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %203

130:                                              ; preds = %127
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %7, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %202

140:                                              ; preds = %130
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %202

147:                                              ; preds = %140
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = load i64 (%struct.TYPE_29__*, i32*, i64)*, i64 (%struct.TYPE_29__*, i32*, i64)** %149, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load i64, i64* %7, align 8
  %157 = call i64 %150(%struct.TYPE_29__* %151, i32* %155, i64 %156)
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @NGX_AGAIN, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  br label %260

162:                                              ; preds = %147
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* @NGX_ERROR, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %169 = load i64, i64* @NGX_ERROR, align 8
  %170 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %167, %struct.TYPE_26__* %168, i64 %169)
  br label %524

171:                                              ; preds = %162
  %172 = load i64, i64* %8, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %171
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %174
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = ptrtoint i32* %190 to i64
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = ptrtoint i32* %196 to i64
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %187, %174
  br label %201

201:                                              ; preds = %200, %171
  br label %202

202:                                              ; preds = %201, %140, %130
  br label %203

203:                                              ; preds = %202, %127
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = sub i64 0, %209
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = ptrtoint i32* %211 to i64
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %259

215:                                              ; preds = %203
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %259

222:                                              ; preds = %215
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 1
  %225 = load i64 (%struct.TYPE_29__*, i32*, i64)*, i64 (%struct.TYPE_29__*, i32*, i64)** %224, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  %231 = load i64, i64* %7, align 8
  %232 = call i64 %225(%struct.TYPE_29__* %226, i32* %230, i64 %231)
  store i64 %232, i64* %8, align 8
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* @NGX_AGAIN, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %239, label %236

236:                                              ; preds = %222
  %237 = load i64, i64* %8, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %222
  br label %260

240:                                              ; preds = %236
  %241 = load i64, i64* %8, align 8
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  store i32 1, i32* %6, align 4
  %244 = load i64, i64* %8, align 8
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, %244
  store i64 %248, i64* %246, align 8
  br label %127

249:                                              ; preds = %240
  %250 = load i64, i64* %8, align 8
  %251 = load i64, i64* @NGX_ERROR, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  store i32 1, i32* %257, align 8
  br label %258

258:                                              ; preds = %253, %249
  br label %259

259:                                              ; preds = %258, %215, %203
  br label %260

260:                                              ; preds = %259, %239, %161
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %260
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %271, %275
  br i1 %276, label %308, label %277

277:                                              ; preds = %267, %260
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 2
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %277
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %288, %292
  br i1 %293, label %308, label %294

294:                                              ; preds = %284, %277
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %317

301:                                              ; preds = %294
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %301, %284, %267
  %309 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @ngx_log_debug0(i32 %309, i32 %312, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %316 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %314, %struct.TYPE_26__* %315, i64 0)
  br label %524

317:                                              ; preds = %301, %294
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %319 = load i32, i32* @ngx_http_core_module, align 4
  %320 = call %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %318, i32 %319)
  store %struct.TYPE_28__* %320, %struct.TYPE_28__** %15, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %322, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @ngx_handle_write_event(%struct.TYPE_22__* %323, i32 %328)
  %330 = load i64, i64* @NGX_OK, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %337

332:                                              ; preds = %317
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %335 = load i64, i64* @NGX_ERROR, align 8
  %336 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %333, %struct.TYPE_26__* %334, i64 %335)
  br label %524

337:                                              ; preds = %317
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %337
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %359, label %351

351:                                              ; preds = %344
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %353, align 8
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @ngx_add_timer(%struct.TYPE_22__* %354, i32 %357)
  br label %372

359:                                              ; preds = %344, %337
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i32 0, i32 3
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %359
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %368, align 8
  %370 = call i32 @ngx_del_timer(%struct.TYPE_22__* %369)
  br label %371

371:                                              ; preds = %366, %359
  br label %372

372:                                              ; preds = %371, %351
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %374, align 8
  %376 = call i64 @ngx_handle_read_event(%struct.TYPE_22__* %375, i32 0)
  %377 = load i64, i64* @NGX_OK, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %384

379:                                              ; preds = %372
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %382 = load i64, i64* @NGX_ERROR, align 8
  %383 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %380, %struct.TYPE_26__* %381, i64 %382)
  br label %524

384:                                              ; preds = %372
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 2
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %410

391:                                              ; preds = %384
  %392 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %410, label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %5, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %398
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %403, align 8
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @ngx_add_timer(%struct.TYPE_22__* %404, i32 %407)
  br label %409

409:                                              ; preds = %401, %398
  br label %423

410:                                              ; preds = %391, %384
  %411 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %410
  %418 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %419, align 8
  %421 = call i32 @ngx_del_timer(%struct.TYPE_22__* %420)
  br label %422

422:                                              ; preds = %417, %410
  br label %423

423:                                              ; preds = %422, %409
  %424 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %425 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %424, i32 0, i32 3
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %425, align 8
  %427 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @ngx_handle_write_event(%struct.TYPE_22__* %426, i32 %429)
  %431 = load i64, i64* @NGX_OK, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %433, label %438

433:                                              ; preds = %423
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %436 = load i64, i64* @NGX_ERROR, align 8
  %437 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %434, %struct.TYPE_26__* %435, i64 %436)
  br label %524

438:                                              ; preds = %423
  %439 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %440, align 8
  %442 = call i64 @ngx_handle_read_event(%struct.TYPE_22__* %441, i32 0)
  %443 = load i64, i64* @NGX_OK, align 8
  %444 = icmp ne i64 %442, %443
  br i1 %444, label %445, label %450

445:                                              ; preds = %438
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %447 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %448 = load i64, i64* @NGX_ERROR, align 8
  %449 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__* %446, %struct.TYPE_26__* %447, i64 %448)
  br label %524

450:                                              ; preds = %438
  %451 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 3
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %453, i32 0, i32 3
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %472

457:                                              ; preds = %450
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 3
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %472, label %464

464:                                              ; preds = %457
  %465 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %466 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %465, i32 0, i32 3
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %466, align 8
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @ngx_add_timer(%struct.TYPE_22__* %467, i32 %470)
  br label %485

472:                                              ; preds = %457, %450
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 3
  %475 = load %struct.TYPE_22__*, %struct.TYPE_22__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %472
  %480 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %481 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %480, i32 0, i32 3
  %482 = load %struct.TYPE_22__*, %struct.TYPE_22__** %481, align 8
  %483 = call i32 @ngx_del_timer(%struct.TYPE_22__* %482)
  br label %484

484:                                              ; preds = %479, %472
  br label %485

485:                                              ; preds = %484, %464
  %486 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %487 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %486, i32 0, i32 2
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %511

492:                                              ; preds = %485
  %493 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %494 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %493, i32 0, i32 2
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 2
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %511, label %499

499:                                              ; preds = %492
  %500 = load i32, i32* %5, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %510, label %502

502:                                              ; preds = %499
  %503 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %504 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %503, i32 0, i32 2
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %504, align 8
  %506 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %507 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @ngx_add_timer(%struct.TYPE_22__* %505, i32 %508)
  br label %510

510:                                              ; preds = %502, %499
  br label %524

511:                                              ; preds = %492, %485
  %512 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %513 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %512, i32 0, i32 2
  %514 = load %struct.TYPE_22__*, %struct.TYPE_22__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %514, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %511
  %519 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %520 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %519, i32 0, i32 2
  %521 = load %struct.TYPE_22__*, %struct.TYPE_22__** %520, align 8
  %522 = call i32 @ngx_del_timer(%struct.TYPE_22__* %521)
  br label %523

523:                                              ; preds = %518, %511
  br label %524

524:                                              ; preds = %93, %166, %308, %332, %379, %433, %445, %523, %510
  ret void
}

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_ctx(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_25__*, %struct.TYPE_26__*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_22__*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
