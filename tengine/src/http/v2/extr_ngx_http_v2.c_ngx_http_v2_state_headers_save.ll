; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers_save.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i32*, i32*, i32)* @ngx_http_v2_state_headers_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_headers_save(%struct.TYPE_16__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %10, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %9, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %17
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = load i32, i32* @ngx_http_core_module, align 4
  %36 = call %struct.TYPE_18__* @ngx_http_get_module_srv_conf(%struct.TYPE_17__* %34, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %11, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ngx_add_timer(%struct.TYPE_19__* %37, i32 %40)
  br label %42

42:                                               ; preds = %33, %17
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32* @ngx_http_v2_state_save(%struct.TYPE_16__* %44, i32* %45, i32* %46, i32 %47)
  ret i32* %48
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_srv_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_16__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
