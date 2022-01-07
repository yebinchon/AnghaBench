; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_org_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_org_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_16__ = type { i32*, i64 }

@ngx_stream_geoip_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64)* @ngx_stream_geoip_org_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_geoip_org_variable(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = load i32, i32* @ngx_stream_geoip_module, align 4
  %13 = call %struct.TYPE_16__* @ngx_stream_get_module_main_conf(%struct.TYPE_15__* %11, i32 %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = call i32 @ngx_stream_geoip_addr(%struct.TYPE_15__* %23, %struct.TYPE_16__* %24)
  %26 = call i8* @GeoIP_name_by_ipnum(i32* %22, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %69

30:                                               ; preds = %19
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @ngx_strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32* @ngx_pnalloc(i32 %37, i64 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @ngx_free(i8* %47)
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %73

50:                                               ; preds = %30
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ngx_memcpy(i32* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @ngx_free(i8* %66)
  %68 = load i32, i32* @NGX_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %29, %18
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @NGX_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %50, %46
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_16__* @ngx_stream_get_module_main_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @GeoIP_name_by_ipnum(i32*, i32) #1

declare dso_local i32 @ngx_stream_geoip_addr(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

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
