; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_org_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_org_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_14__ = type { i32*, i64 }

@ngx_http_geoip_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i64)* @ngx_http_geoip_org_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_geoip_org_variable(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = load i32, i32* @ngx_http_geoip_module, align 4
  %13 = call %struct.TYPE_14__* @ngx_http_get_module_main_conf(%struct.TYPE_13__* %11, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %10, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %67

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = call i32 @ngx_http_geoip_addr(%struct.TYPE_13__* %23, %struct.TYPE_14__* %24)
  %26 = call i8* @GeoIP_name_by_ipnum(i32* %22, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %67

30:                                               ; preds = %19
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @ngx_strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32* @ngx_pnalloc(i32 %35, i64 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @ngx_free(i8* %45)
  %47 = load i32, i32* @NGX_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %71

48:                                               ; preds = %30
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @ngx_memcpy(i32* %51, i8* %52, i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @ngx_free(i8* %64)
  %66 = load i32, i32* @NGX_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %71

67:                                               ; preds = %29, %18
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @NGX_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %48, %44
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_main_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @GeoIP_name_by_ipnum(i32*, i32) #1

declare dso_local i32 @ngx_http_geoip_addr(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @ngx_strlen(i8*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_free(i8*) #1

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
