; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_update_mem.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_update_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64 }

@ngx_http_sysguard_cached_mem_exptime = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_sysguard_cached_swapstat = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_SIZE = common dso_local global i64 0, align 8
@ngx_http_sysguard_cached_free = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64)* @ngx_http_sysguard_update_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_sysguard_update_mem(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i64 (...) @ngx_time()
  %9 = load i64, i64* %5, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* @ngx_http_sysguard_cached_mem_exptime, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ngx_getmeminfo(%struct.TYPE_7__* %7, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NGX_ERROR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  store i32 0, i32* @ngx_http_sysguard_cached_swapstat, align 4
  %21 = load i64, i64* @NGX_CONF_UNSET_SIZE, align 8
  store i64 %21, i64* @ngx_http_sysguard_cached_free, align 8
  %22 = load i64, i64* @NGX_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %49

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  %34 = mul nsw i32 %33, 100
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %34, %36
  br label %38

38:                                               ; preds = %28, %27
  %39 = phi i32 [ 0, %27 ], [ %37, %28 ]
  store i32 %39, i32* @ngx_http_sysguard_cached_swapstat, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %44, %46
  store i64 %47, i64* @ngx_http_sysguard_cached_free, align 8
  %48 = load i64, i64* @NGX_OK, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %38, %20
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_getmeminfo(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
