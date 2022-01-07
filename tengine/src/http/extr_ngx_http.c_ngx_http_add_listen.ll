; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_add_listen.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_add_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { %struct.sockaddr* }
%struct.sockaddr = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_23__* }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_add_listen(%struct.TYPE_24__* %0, i32* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = load i32, i32* @ngx_http_core_module, align 4
  %15 = call %struct.TYPE_22__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_24__* %13, i32 %14)
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %12, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = icmp eq %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_19__* @ngx_array_create(i32 %23, i32 2, i32 24)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp eq %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.sockaddr*, %struct.sockaddr** %36, align 8
  store %struct.sockaddr* %37, %struct.sockaddr** %10, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %39 = call i32 @ngx_inet_get_port(%struct.sockaddr* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %80, %34
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %54, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61, %53
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i64 %76
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %79 = call i32 @ngx_http_add_addresses(%struct.TYPE_24__* %73, i32* %74, %struct.TYPE_23__* %77, %struct.TYPE_21__* %78)
  store i32 %79, i32* %4, align 4
  br label %109

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = call %struct.TYPE_23__* @ngx_array_push(%struct.TYPE_19__* %86)
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %11, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %89 = icmp eq %struct.TYPE_23__* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @NGX_ERROR, align 4
  store i32 %91, i32* %4, align 4
  br label %109

92:                                               ; preds = %83
  %93 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %94 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = call i32 @ngx_http_add_address(%struct.TYPE_24__* %104, i32* %105, %struct.TYPE_23__* %106, %struct.TYPE_21__* %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %92, %90, %72, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_22__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_inet_get_port(%struct.sockaddr*) #1

declare dso_local i32 @ngx_http_add_addresses(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @ngx_array_push(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_add_address(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
