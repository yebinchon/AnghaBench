; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_chash.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_upstream_consistent_hash_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_upstream_init_chash = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_HTTP_UPSTREAM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_http_upstream_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_chash(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = load i32, i32* @ngx_http_upstream_module, align 4
  %14 = call %struct.TYPE_16__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_19__* %12, i32 %13)
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %10, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %18, i8** %4, align 8
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = load i32, i32* @ngx_http_upstream_consistent_hash_module, align 4
  %22 = call %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__* %20, i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %11, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = icmp eq %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %26, i8** %4, align 8
  br label %74

27:                                               ; preds = %19
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %36, i8** %4, align 8
  br label %74

37:                                               ; preds = %27
  %38 = call i32 @ngx_memzero(%struct.TYPE_18__* %9, i32 40)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32* %48, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = call i64 @ngx_http_script_compile(%struct.TYPE_18__* %9)
  %53 = load i64, i64* @NGX_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %56, i8** %4, align 8
  br label %74

57:                                               ; preds = %37
  %58 = load i32, i32* @ngx_http_upstream_init_chash, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @NGX_HTTP_UPSTREAM_CREATE, align 4
  %63 = load i32, i32* @NGX_HTTP_UPSTREAM_WEIGHT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NGX_HTTP_UPSTREAM_MAX_FAILS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NGX_HTTP_UPSTREAM_FAIL_TIMEOUT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NGX_HTTP_UPSTREAM_DOWN, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %57, %55, %35, %25, %17
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local %struct.TYPE_16__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
