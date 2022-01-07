; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_init_chash_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_consistent_hash_module/extr_ngx_http_upstream_consistent_hash_module.c_ngx_http_upstream_init_chash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ngx_http_upstream_consistent_hash_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_upstream_get_chash_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_free_chash_peer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@ngx_http_upstream_chash_save_peer_session = common dso_local global i32 0, align 4
@ngx_http_upstream_chash_set_peer_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*)* @ngx_http_upstream_init_chash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_init_chash_peer(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @ngx_http_upstream_consistent_hash_module, align 4
  %11 = call %struct.TYPE_19__* @ngx_http_conf_upstream_srv_conf(i32* %9, i32 %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @NGX_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %19, i32 16)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @NGX_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %16
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @ngx_http_script_run(%struct.TYPE_21__* %29, %struct.TYPE_18__* %6, i32 %34, i32 0, i32 %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_murmur_hash2(i32 %46, i32 %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @ngx_http_upstream_get_chash_peer, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 4
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* @ngx_http_upstream_free_chash_peer, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  store i32 %58, i32* %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %69, align 8
  %70 = load i32, i32* @NGX_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %44, %42, %23, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_19__* @ngx_http_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32* @ngx_http_script_run(%struct.TYPE_21__*, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @ngx_murmur_hash2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
