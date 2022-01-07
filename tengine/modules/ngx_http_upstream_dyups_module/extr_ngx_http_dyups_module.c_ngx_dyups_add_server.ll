; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_add_server.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_add_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_22__**, i32* }
%struct.TYPE_18__ = type { i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i8*, i32, i32, i32, i8*, i32, i32*, i32* }
%struct.TYPE_20__ = type { i8*, i8*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"dyups_init_module_conf\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_17__* null, align 8
@NGX_HTTP_MODULE = common dso_local global i8* null, align 8
@NGX_HTTP_UPS_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"dyups_init_upstream\00", align 1
@NGX_HTTP_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_dyups_module = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ngx_http_dyups_init_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32*)* @ngx_dyups_add_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_dyups_add_server(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__, align 8
  %7 = alloca i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @ngx_array_create(i32 %20, i32 4, i32 4)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %3, align 8
  br label %132

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %2
  %33 = call i32 @ngx_memzero(%struct.TYPE_21__* %6, i32 56)
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %40 = bitcast %struct.TYPE_17__* %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 6
  store i32* %40, i32** %41, align 8
  %42 = load i8*, i8** @NGX_HTTP_MODULE, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @NGX_HTTP_UPS_CONF, align 4
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ngx_array_create(i32 %56, i32 10, i32 4)
  %58 = bitcast i8* %57 to i32*
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 7
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %32
  %64 = load i64, i64* @NGX_ERROR, align 8
  store i64 %64, i64* %3, align 8
  br label %132

65:                                               ; preds = %32
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @ngx_dyups_parse_upstream(%struct.TYPE_21__* %6, i32* %66)
  %68 = load i64, i64* @NGX_CONF_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @NGX_ERROR, align 8
  store i64 %71, i64* %3, align 8
  br label %132

72:                                               ; preds = %65
  %73 = call i32 @ngx_memzero(%struct.TYPE_21__* %6, i32 56)
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %76 = bitcast %struct.TYPE_17__* %75 to i32*
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 6
  store i32* %76, i32** %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 5
  store i32 %80, i32* %81, align 8
  %82 = load i8*, i8** @NGX_HTTP_MODULE, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 4
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* @NGX_HTTP_MAIN_CONF, align 4
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  store i32 %84, i32* %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ngx_cycle, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %96, align 8
  %98 = icmp ne i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %72
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %102, align 8
  br label %105

104:                                              ; preds = %72
  br label %105

105:                                              ; preds = %104, %99
  %106 = phi i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* [ %103, %99 ], [ @ngx_http_upstream_init_round_robin, %104 ]
  store i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* %106, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %7, align 8
  %107 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %7, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %109 = call i64 %107(%struct.TYPE_21__* %6, %struct.TYPE_19__* %108)
  %110 = load i64, i64* @NGX_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i64, i64* @NGX_ERROR, align 8
  store i64 %113, i64* %3, align 8
  br label %132

114:                                              ; preds = %105
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %116, align 8
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_http_dyups_module, i32 0, i32 0), align 8
  %119 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %117, i64 %118
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %9, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @ngx_http_dyups_init_peer, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 8
  %131 = load i64, i64* @NGX_OK, align 8
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %114, %112, %70, %63, %29
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_dyups_parse_upstream(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
