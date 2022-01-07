; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_non_buffered_chunked_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_non_buffered_chunked_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_17__, %struct.TYPE_16__, i32, %struct.TYPE_22__*, %struct.TYPE_23__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@ngx_http_proxy_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"http proxy out buf %p %z\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"upstream sent invalid chunked response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ngx_http_proxy_non_buffered_chunked_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_non_buffered_chunked_filter(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__**, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = load i32, i32* @ngx_http_proxy_module, align 4
  %18 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %16, i32 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %13, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @NGX_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %200

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %12, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 6
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %9, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %10, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 5
  store %struct.TYPE_22__** %43, %struct.TYPE_22__*** %11, align 8
  br label %44

44:                                               ; preds = %50, %23
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = icmp ne %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  store %struct.TYPE_22__** %49, %struct.TYPE_22__*** %11, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %10, align 8
  br label %44

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %150, %54
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = call i64 @ngx_http_parse_chunked(%struct.TYPE_20__* %56, %struct.TYPE_23__* %57, %struct.TYPE_15__* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %168

64:                                               ; preds = %55
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 4
  %70 = call %struct.TYPE_22__* @ngx_chain_get_free_buf(i32 %67, i32* %69)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %10, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %72 = icmp eq %struct.TYPE_22__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %3, align 8
  br label %200

75:                                               ; preds = %64
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %11, align 8
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %77, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  store %struct.TYPE_22__** %79, %struct.TYPE_22__*** %11, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %8, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %104, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %75
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %150

127:                                              ; preds = %75
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %138, %134
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %127, %110
  %151 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = call i32 @ngx_log_debug2(i32 %151, i32 %156, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %159, i64 %166)
  br label %55

168:                                              ; preds = %55
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* @NGX_DONE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  store i64 0, i64* %183, align 8
  br label %198

184:                                              ; preds = %168
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @NGX_AGAIN, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %198

189:                                              ; preds = %184
  %190 = load i32, i32* @NGX_LOG_ERR, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ngx_log_error(i32 %190, i32 %195, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %197 = load i64, i64* @NGX_ERROR, align 8
  store i64 %197, i64* %3, align 8
  br label %200

198:                                              ; preds = %188, %172
  %199 = load i64, i64* @NGX_OK, align 8
  store i64 %199, i64* %3, align 8
  br label %200

200:                                              ; preds = %198, %189, %73, %21
  %201 = load i64, i64* %3, align 8
  ret i64 %201
}

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_parse_chunked(%struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_22__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
