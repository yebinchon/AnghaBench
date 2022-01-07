; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_connect_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_connect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 (%struct.TYPE_21__*)*, i32, i32, %struct.TYPE_22__, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { {}*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_16__*, i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_event_get_peer = common dso_local global i32 0, align 4
@NGX_ERROR_ERR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_CHECK_CONNECT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_upstream_check_connect_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_connect_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = call i64 (...) @ngx_http_upstream_check_need_exit()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %175

10:                                               ; preds = %1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = icmp ne %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %10
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %4, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = call i64 @ngx_http_upstream_check_peek_one_byte(%struct.TYPE_20__* %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %136

32:                                               ; preds = %22
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = call i32 @ngx_close_connection(%struct.TYPE_20__* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %37, align 8
  br label %38

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 5
  %42 = call i32 @ngx_memzero(%struct.TYPE_22__* %41, i32 4)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 7
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 6
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 5
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* @ngx_event_get_peer, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @NGX_ERROR_ERR, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 5
  %88 = call i64 @ngx_event_connect_peer(%struct.TYPE_22__* %87)
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @NGX_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %39
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @NGX_DECLINED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92, %39
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = call i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__* %97, i32 0)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = call i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_18__* %99)
  br label %175

101:                                              ; preds = %92
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %4, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 5
  store %struct.TYPE_18__* %106, %struct.TYPE_18__** %108, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %101, %31
  %137 = load i32, i32* @NGX_HTTP_CHECK_CONNECT_DONE, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = bitcast {}** %146 to i32 (%struct.TYPE_21__*)**
  store i32 (%struct.TYPE_21__*)* %142, i32 (%struct.TYPE_21__*)** %147, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ngx_add_timer(i32* %156, i32 %159)
  %161 = load i64, i64* %3, align 8
  %162 = load i64, i64* @NGX_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %136
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = bitcast {}** %168 to i32 (%struct.TYPE_21__*)**
  %170 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = call i32 %170(%struct.TYPE_21__* %173)
  br label %175

175:                                              ; preds = %9, %96, %164, %136
  ret void
}

declare dso_local i64 @ngx_http_upstream_check_need_exit(...) #1

declare dso_local i64 @ngx_http_upstream_check_peek_one_byte(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_http_upstream_check_status_update(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_upstream_check_clean_event(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_add_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
