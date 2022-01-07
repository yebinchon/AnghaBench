; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_check_enable.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_reqstat_module/extr_ngx_http_reqstat_module.c_ngx_http_reqstat_check_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32* }

@ngx_http_reqstat_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__**, %struct.TYPE_23__**)* @ngx_http_reqstat_check_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_reqstat_check_enable(%struct.TYPE_22__* %0, %struct.TYPE_24__** %1, %struct.TYPE_23__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__**, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_24__** %1, %struct.TYPE_24__*** %6, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %7, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %12 = load i32, i32* @ngx_http_reqstat_module, align 4
  %13 = call %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_22__* %11, i32 %12)
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %8, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.TYPE_21__* @ngx_http_get_flushed_variable(%struct.TYPE_22__* %25, i64 %28)
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %10, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 48
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %37, i32* %4, align 4
  br label %81

38:                                               ; preds = %24
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %9, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %8, align 8
  br label %75

49:                                               ; preds = %3
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = load i32, i32* @ngx_http_reqstat_module, align 4
  %52 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %50, i32 %51)
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %8, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = load i32, i32* @ngx_http_reqstat_module, align 4
  %55 = call %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %53, i32 %54)
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %9, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %57 = icmp eq %struct.TYPE_23__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %61 = call %struct.TYPE_23__* @ngx_http_reqstat_create_store(%struct.TYPE_22__* %59, %struct.TYPE_24__* %60)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %9, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = icmp eq %struct.TYPE_23__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %4, align 4
  br label %81

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %73, i32* %4, align 4
  br label %81

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %38
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %77 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %6, align 8
  store %struct.TYPE_24__* %76, %struct.TYPE_24__** %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_23__* %78, %struct.TYPE_23__** %79, align 8
  %80 = load i32, i32* @NGX_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %72, %64, %36
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_flushed_variable(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_reqstat_create_store(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
