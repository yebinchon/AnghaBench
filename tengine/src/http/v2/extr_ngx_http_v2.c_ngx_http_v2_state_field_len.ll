; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_field_len.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_field_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@NGX_HTTP_V2_END_HEADERS_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INT_OCTETS = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"client sent header block with incorrect length\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"client sent header field with too long length value\00", align 1
@NGX_HTTP_V2_COMP_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"http2 %s string, len:%i\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"encoded\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@ngx_http_v2_module = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"client exceeded http2_max_field_size limit\00", align 1
@NGX_HTTP_V2_ENHANCE_YOUR_CALM = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_field_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_field_len(%struct.TYPE_21__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NGX_HTTP_V2_END_HEADERS_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @ngx_http_v2_handle_continuation(%struct.TYPE_21__* %27, i32* %28, i32* %29, i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_field_len)
  store i32* %30, i32** %4, align 8
  br label %215

31:                                               ; preds = %19, %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @NGX_LOG_INFO, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ngx_log_error(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %47 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %45, i32 %46)
  store i32* %47, i32** %4, align 8
  br label %215

48:                                               ; preds = %31
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = icmp slt i64 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @ngx_http_v2_state_headers_save(%struct.TYPE_21__* %57, i32* %58, i32* %59, i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_field_len)
  store i32* %60, i32** %4, align 8
  br label %215

61:                                               ; preds = %48
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 7
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @ngx_http_v2_prefix(i32 7)
  %68 = call i32 @ngx_http_v2_parse_int(%struct.TYPE_21__* %65, i32** %6, i32* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NGX_AGAIN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32* @ngx_http_v2_state_headers_save(%struct.TYPE_21__* %76, i32* %77, i32* %78, i32* (%struct.TYPE_21__*, i32*, i32*)* @ngx_http_v2_state_field_len)
  store i32* %79, i32** %4, align 8
  br label %215

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NGX_DECLINED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* @NGX_LOG_INFO, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ngx_log_error(i32 %85, i32 %90, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load i32, i32* @NGX_HTTP_V2_COMP_ERROR, align 4
  %94 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %92, i32 %93)
  store i32* %94, i32** %4, align 8
  br label %215

95:                                               ; preds = %80
  %96 = load i32, i32* @NGX_LOG_INFO, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ngx_log_error(i32 %96, i32 %101, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %105 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %103, i32 %104)
  store i32* %105, i32** %4, align 8
  br label %215

106:                                              ; preds = %61
  %107 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @ngx_log_debug2(i32 %107, i32 %112, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %116, i32 %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ngx_http_v2_module, align 4
  %125 = call %struct.TYPE_20__* @ngx_http_get_module_srv_conf(i32 %123, i32 %124)
  store %struct.TYPE_20__* %125, %struct.TYPE_20__** %11, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ugt i64 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %106
  %133 = load i32, i32* @NGX_LOG_INFO, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ngx_log_error(i32 %133, i32 %138, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = load i32, i32* @NGX_HTTP_V2_ENHANCE_YOUR_CALM, align 4
  %142 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %140, i32 %141)
  store i32* %142, i32** %4, align 8
  br label %215

143:                                              ; preds = %106
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = call i32* @ngx_http_v2_state_field_skip(%struct.TYPE_21__* %160, i32* %161, i32* %162)
  store i32* %163, i32** %4, align 8
  br label %215

164:                                              ; preds = %153, %143
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 %168, 8
  %170 = sdiv i32 %169, 5
  br label %173

171:                                              ; preds = %164
  %172 = load i32, i32* %9, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %170, %167 ], [ %172, %171 ]
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %8, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32* @ngx_pnalloc(i32 %180, i64 %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  store i32* %182, i32** %185, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %173
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %194 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_21__* %192, i32 %193)
  store i32* %194, i32** %4, align 8
  br label %215

195:                                              ; preds = %173
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 4
  store i32* %199, i32** %202, align 8
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %195
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = call i32* @ngx_http_v2_state_field_huff(%struct.TYPE_21__* %206, i32* %207, i32* %208)
  store i32* %209, i32** %4, align 8
  br label %215

210:                                              ; preds = %195
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = call i32* @ngx_http_v2_state_field_raw(%struct.TYPE_21__* %211, i32* %212, i32* %213)
  store i32* %214, i32** %4, align 8
  br label %215

215:                                              ; preds = %210, %205, %191, %159, %132, %95, %84, %75, %56, %37, %26
  %216 = load i32*, i32** %4, align 8
  ret i32* %216
}

declare dso_local i32* @ngx_http_v2_handle_continuation(%struct.TYPE_21__*, i32*, i32*, i32* (%struct.TYPE_21__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_headers_save(%struct.TYPE_21__*, i32*, i32*, i32* (%struct.TYPE_21__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_int(%struct.TYPE_21__*, i32**, i32*, i32) #1

declare dso_local i32 @ngx_http_v2_prefix(i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i32* @ngx_http_v2_state_field_skip(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_http_v2_state_field_huff(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32* @ngx_http_v2_state_field_raw(%struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
