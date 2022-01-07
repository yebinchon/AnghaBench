; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_optimize_servers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_optimize_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_cmp_conf_addrs = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_16__*)* @ngx_http_optimize_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_optimize_servers(i32* %0, i32* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @NGX_OK, align 8
  store i64 %15, i64* %4, align 8
  br label %96

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %91, %16
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ngx_http_cmp_conf_addrs, align 4
  %40 = call i32 @ngx_sort(%struct.TYPE_15__* %32, i64 %38, i32 16, i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %77, %26
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %48, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %68
  %70 = call i64 @ngx_http_server_names(i32* %65, i32* %66, %struct.TYPE_15__* %69)
  %71 = load i64, i64* @NGX_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %4, align 8
  br label %96

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %47

80:                                               ; preds = %47
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %83
  %85 = call i64 @ngx_http_init_listening(i32* %81, %struct.TYPE_14__* %84)
  %86 = load i64, i64* @NGX_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %4, align 8
  br label %96

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %20

94:                                               ; preds = %20
  %95 = load i64, i64* @NGX_OK, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %88, %73, %14
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @ngx_sort(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i64 @ngx_http_server_names(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_http_init_listening(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
