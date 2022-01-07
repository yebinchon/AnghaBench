; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_source_charset.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_source_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }

@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_CHARSET_OFF = common dso_local global i64 0, align 8
@NGX_HTTP_CHARSET_VAR = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_21__*)* @ngx_http_source_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_source_charset(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = bitcast %struct.TYPE_21__* %18 to i8*
  %23 = bitcast %struct.TYPE_21__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = call i64 @ngx_http_get_charset(%struct.TYPE_23__* %24, %struct.TYPE_21__* %25)
  store i64 %26, i64* %3, align 8
  br label %90

27:                                               ; preds = %2
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %30 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %28, i32 %29)
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %9, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %90

41:                                               ; preds = %27
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %48 = call %struct.TYPE_25__* @ngx_http_get_module_main_conf(%struct.TYPE_23__* %46, i32 %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %10, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = bitcast %struct.TYPE_21__* %53 to i8*
  %59 = bitcast %struct.TYPE_21__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  br label %90

61:                                               ; preds = %41
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %65 = sub i64 %63, %64
  %66 = call %struct.TYPE_22__* @ngx_http_get_indexed_variable(%struct.TYPE_23__* %62, i64 %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %8, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = icmp eq %struct.TYPE_22__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %61
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %3, align 8
  br label %90

76:                                               ; preds = %69
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = call i64 @ngx_http_get_charset(%struct.TYPE_23__* %87, %struct.TYPE_21__* %88)
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %76, %74, %45, %37, %17
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ngx_http_get_charset(%struct.TYPE_23__*, %struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #2

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_main_conf(%struct.TYPE_23__*, i32) #2

declare dso_local %struct.TYPE_22__* @ngx_http_get_indexed_variable(%struct.TYPE_23__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
