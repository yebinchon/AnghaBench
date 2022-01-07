; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_length_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_length_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i32, i32, i32, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"http request body content length filter\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_http_read_client_request_body = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @ngx_http_request_body_length_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_request_body_length_filter(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__**, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %13, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_log_debug0(i32 %22, i32 %27, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %21, %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__** %11, %struct.TYPE_18__*** %12, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %9, align 8
  br label %37

37:                                               ; preds = %161, %35
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %40, label %165

40:                                               ; preds = %37
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %165

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = call %struct.TYPE_18__* @ngx_chain_get_free_buf(i32 %49, i32* %51)
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %10, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = icmp eq %struct.TYPE_18__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %178

57:                                               ; preds = %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %8, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = call i32 @ngx_memzero(%struct.TYPE_19__* %61, i32 56)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 7
  store i64 ptrtoint (i32* @ngx_http_read_client_request_body to i64), i64* %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %104, %109
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %57
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  br label %156

134:                                              ; preds = %57
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %138
  store i64 %144, i64* %142, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %134, %117
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %158 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  store %struct.TYPE_18__* %157, %struct.TYPE_18__** %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  store %struct.TYPE_18__** %160, %struct.TYPE_18__*** %12, align 8
  br label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %9, align 8
  br label %37

165:                                              ; preds = %45, %37
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %168 = call i32 @ngx_http_top_request_body_filter(%struct.TYPE_16__* %166, %struct.TYPE_18__* %167)
  store i32 %168, i32* %7, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = call i32 @ngx_chain_update_chains(i32 %171, i32* %173, i32* %175, %struct.TYPE_18__** %11, i64 ptrtoint (i32* @ngx_http_read_client_request_body to i64))
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %165, %55
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_http_top_request_body_filter(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32*, %struct.TYPE_18__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
