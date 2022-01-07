; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_slice_filter_module.c_ngx_http_slice_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_25__, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32, i64, i64 }

@ngx_http_slice_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_PARTIAL_CONTENT = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unexpected status code %ui in slice response\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"etag mismatch in slice response\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid range in slice response\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"no complete length in slice response\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"http slice response range: %O-%O/%O\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"unexpected range in slice response: %O-%O\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @ngx_http_slice_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_slice_header_filter(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %12 = call %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %10, i32 %11)
  store %struct.TYPE_28__* %12, %struct.TYPE_28__** %7, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %14 = icmp eq %struct.TYPE_28__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %16)
  store i32 %17, i32* %2, align 4
  br label %295

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NGX_HTTP_PARTIAL_CONTENT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp eq %struct.TYPE_20__* %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %34 = call i32 @ngx_http_set_ctx(%struct.TYPE_20__* %32, i32* null, i32 %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %35)
  store i32 %36, i32* %2, align 4
  br label %295

37:                                               ; preds = %25
  %38 = load i32, i32* @NGX_LOG_ERR, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %2, align 4
  br label %295

50:                                               ; preds = %18
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %53, align 8
  store %struct.TYPE_26__* %54, %struct.TYPE_26__** %6, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %50
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %62 = icmp eq %struct.TYPE_26__* %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %63
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @ngx_strncmp(i32 %77, i32 %81, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %73, %63, %60
  %89 = load i32, i32* @NGX_LOG_ERR, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %89, i32 %94, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @NGX_ERROR, align 4
  store i32 %96, i32* %2, align 4
  br label %295

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97, %50
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %100 = icmp ne %struct.TYPE_26__* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = bitcast %struct.TYPE_21__* %103 to i8*
  %107 = bitcast %struct.TYPE_21__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 16, i1 false)
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = call i64 @ngx_http_slice_parse_content_range(%struct.TYPE_20__* %109, %struct.TYPE_29__* %9)
  %111 = load i64, i64* @NGX_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* @NGX_LOG_ERR, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %114, i32 %119, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @NGX_ERROR, align 4
  store i32 %121, i32* %2, align 4
  br label %295

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i32, i32* @NGX_LOG_ERR, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %127, i32 %132, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @NGX_ERROR, align 4
  store i32 %134, i32* %2, align 4
  br label %295

135:                                              ; preds = %122
  %136 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ngx_log_debug3(i32 %136, i32 %141, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %143, i64 %145, i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = load i32, i32* @ngx_http_slice_filter_module, align 4
  %151 = call %struct.TYPE_27__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__* %149, i32 %150)
  store %struct.TYPE_27__* %151, %struct.TYPE_27__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %153, %157
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @ngx_min(i64 %158, i32 %160)
  store i64 %161, i64* %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = icmp ne i64 %163, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %135
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %4, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %169, %135
  %175 = load i32, i32* @NGX_LOG_ERR, align 4
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %175, i32 %180, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %182, i64 %184)
  %186 = load i32, i32* @NGX_ERROR, align 4
  store i32 %186, i32* %2, align 4
  br label %295

187:                                              ; preds = %169
  %188 = load i64, i64* %4, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  %194 = load i64, i64* @NGX_HTTP_OK, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  store i64 %194, i64* %197, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %220, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 2
  store i32 1, i32* %226, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %228 = call i32 @ngx_http_next_header_filter(%struct.TYPE_20__* %227)
  store i32 %228, i32* %5, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 5
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = icmp ne %struct.TYPE_20__* %229, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %187
  %235 = load i32, i32* %5, align 4
  store i32 %235, i32* %2, align 4
  br label %295

236:                                              ; preds = %187
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 3
  store i32 1, i32* %238, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @NGX_HTTP_PARTIAL_CONTENT, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %288

245:                                              ; preds = %236
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %249, %253
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp sle i64 %254, %259
  br i1 %260, label %261, label %276

261:                                              ; preds = %245
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = sdiv i32 %268, %271
  %273 = mul nsw i32 %264, %272
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  br label %276

276:                                              ; preds = %261, %245
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %280, %284
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 8
  br label %293

288:                                              ; preds = %236
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  br label %293

293:                                              ; preds = %288, %276
  %294 = load i32, i32* %5, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %293, %234, %174, %126, %113, %88, %37, %31, %15
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_slice_parse_content_range(%struct.TYPE_20__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
