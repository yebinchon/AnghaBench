; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_keepalive_module/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_init_keepalive_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_keepalive_module/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_init_keepalive_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_20__, i32, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_17__ = type { {}*, i64, i32, i64 }
%struct.TYPE_14__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"init keepalive peer\00", align 1
@ngx_http_upstream_keepalive_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"init keepalive slice \22%V\22\00", align 1
@ngx_http_upstream_get_keepalive_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_free_keepalive_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_keepalive_save_session = common dso_local global i32 0, align 4
@ngx_http_upstream_keepalive_set_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32*)* @ngx_http_upstream_init_keepalive_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_keepalive_peer(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ngx_log_debug0(i32 %8, i32 %13, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ngx_http_upstream_keepalive_module, align 4
  %17 = call %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(i32* %15, i32 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_18__* @ngx_pcalloc(i32 %20, i32 72)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = icmp eq %struct.TYPE_18__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @NGX_ERROR, align 8
  store i64 %25, i64* %3, align 8
  br label %147

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i64 (%struct.TYPE_19__*, i32*)**
  %30 = load i64 (%struct.TYPE_19__*, i32*)*, i64 (%struct.TYPE_19__*, i32*)** %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 %30(%struct.TYPE_19__* %31, i32* %32)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %147

38:                                               ; preds = %26
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 9
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %41, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 8
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %38
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 6
  %56 = call i64 @ngx_http_complex_value(%struct.TYPE_19__* %50, i32 %53, %struct.TYPE_20__* %55)
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %3, align 8
  br label %147

61:                                               ; preds = %49
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ngx_murmur_hash2(i32 %81, i64 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 6
  %97 = call i32 @ngx_log_debug1(i32 %89, i32 %94, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %96)
  br label %98

98:                                               ; preds = %77, %38
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 5
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  store %struct.TYPE_18__* %109, %struct.TYPE_18__** %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 4
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %133, align 8
  %134 = load i32, i32* @ngx_http_upstream_get_keepalive_peer, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* @ngx_http_upstream_free_keepalive_peer, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  store i32 %140, i32* %145, align 8
  %146 = load i64, i64* @NGX_OK, align 8
  store i64 %146, i64* %3, align 8
  br label %147

147:                                              ; preds = %98, %59, %36, %24
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_19__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_murmur_hash2(i32, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
