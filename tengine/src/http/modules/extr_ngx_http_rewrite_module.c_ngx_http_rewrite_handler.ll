; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i32, i64, i64, i32, %struct.TYPE_22__*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_rewrite_module = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @ngx_http_rewrite_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_rewrite_handler(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32 (%struct.TYPE_20__*)*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = load i32, i32* @ngx_http_core_module, align 4
  %12 = call %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_22__* %10, i32 %11)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %8, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = load i32, i32* @ngx_http_core_module, align 4
  %15 = call %struct.TYPE_23__* @ngx_http_get_module_srv_conf(%struct.TYPE_22__* %13, i32 %14)
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %7, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %36, i64* %2, align 8
  br label %118

37:                                               ; preds = %25, %1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = load i32, i32* @ngx_http_rewrite_module, align 4
  %40 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %38, i32 %39)
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %9, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = icmp eq %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %46, i64* %2, align 8
  br label %118

47:                                               ; preds = %37
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @ngx_pcalloc(i32 %50, i32 48)
  %52 = bitcast i8* %51 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = icmp eq %struct.TYPE_20__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %56, i64* %2, align 8
  br label %118

57:                                               ; preds = %47
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i8* @ngx_pcalloc(i32 %60, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %76, i64* %2, align 8
  br label %118

77:                                               ; preds = %57
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 4
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* @NGX_DECLINED, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %105, %77
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32 (%struct.TYPE_20__*)**
  %110 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %109, align 8
  store i32 (%struct.TYPE_20__*)* %110, i32 (%struct.TYPE_20__*)** %5, align 8
  %111 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %5, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = call i32 %111(%struct.TYPE_20__* %112)
  br label %98

114:                                              ; preds = %98
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %114, %75, %55, %45, %35
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_srv_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
