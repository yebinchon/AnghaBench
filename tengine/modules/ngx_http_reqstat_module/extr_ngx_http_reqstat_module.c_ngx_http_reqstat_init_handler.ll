; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_init_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ngx_http_reqstat_init_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_reqstat_init_handler(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = load i32, i32* @ngx_http_reqstat_module, align 4
  %9 = call i32* @ngx_http_get_module_ctx(%struct.TYPE_15__* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = load i32, i32* @ngx_http_reqstat_module, align 4
  %12 = call %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__* %10, i32 %11)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = load i32, i32* @ngx_http_reqstat_module, align 4
  %15 = call %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_15__* %13, i32 %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %18
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = call i32* @ngx_http_reqstat_create_store(%struct.TYPE_15__* %32, %struct.TYPE_16__* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %31
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ngx_http_reqstat_module, align 4
  %43 = call i32 @ngx_http_set_ctx(%struct.TYPE_15__* %40, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @ngx_http_get_indexed_variable(%struct.TYPE_15__* %45, i64 %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @NGX_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %37, %29
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_main_conf(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ngx_http_reqstat_create_store(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32* @ngx_http_get_indexed_variable(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
