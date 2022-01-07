; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_upstream_session_sticky_get_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_upstream_session_sticky_get_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_19__, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__, %struct.TYPE_22__*, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_24__*, %struct.TYPE_18__*)*, %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { i32 }

@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_FALLBACK_OFF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"session sticky failed, sid[%V]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, i8*)* @ngx_http_upstream_session_sticky_get_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_session_sticky_get_peer(%struct.TYPE_24__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %13, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %12, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %30 = call %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_17__* %28, i32 %29)
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %9, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %2
  br label %149

42:                                               ; preds = %35
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NGX_HTTP_SESSION_STICKY_FALLBACK_OFF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %149

57:                                               ; preds = %47, %42
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %145, %57
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %148

62:                                               ; preds = %58
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %66, %72
  br i1 %73, label %74, label %144

74:                                               ; preds = %62
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @ngx_strncmp(i32 %78, i32 %84, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %74
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %98, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, -1
  store i64 %142, i64* %140, align 8
  %143 = load i64, i64* @NGX_OK, align 8
  store i64 %143, i64* %3, align 8
  br label %253

144:                                              ; preds = %74, %62
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %7, align 8
  br label %58

148:                                              ; preds = %58
  br label %149

149:                                              ; preds = %148, %56, %41
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @NGX_HTTP_SESSION_STICKY_FALLBACK_OFF, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i64, i64* @NGX_BUSY, align 8
  store i64 %164, i64* %3, align 8
  br label %253

165:                                              ; preds = %154, %149
  %166 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 2
  %174 = call i32 @ngx_log_debug1(i32 %166, i32 %171, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %173)
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i64 (%struct.TYPE_24__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_24__*, %struct.TYPE_18__*)** %176, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = call i64 %177(%struct.TYPE_24__* %178, %struct.TYPE_18__* %180)
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* @NGX_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %165
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %3, align 8
  br label %253

187:                                              ; preds = %165
  store i64 0, i64* %7, align 8
  br label %188

188:                                              ; preds = %246, %187
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* %8, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %249

192:                                              ; preds = %188
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %194 = load i64, i64* %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %199, %204
  br i1 %205, label %206, label %245

206:                                              ; preds = %192
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @ngx_strncmp(i32 %213, i32 %218, i64 %223)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %206
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %228 = load i64, i64* %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  store i64 %232, i64* %235, align 8
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %237 = load i64, i64* %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  br label %249

245:                                              ; preds = %206, %192
  br label %246

246:                                              ; preds = %245
  %247 = load i64, i64* %7, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %7, align 8
  br label %188

249:                                              ; preds = %226, %188
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  store i32 1, i32* %251, align 8
  %252 = load i64, i64* %6, align 8
  store i64 %252, i64* %3, align 8
  br label %253

253:                                              ; preds = %249, %185, %163, %91
  %254 = load i64, i64* %3, align 8
  ret i64 %254
}

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
