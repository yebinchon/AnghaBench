; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_pass.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i32*, i64*, i32*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_fastcgi_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, i32*, i8*)* @ngx_http_fastcgi_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_fastcgi_pass(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %8, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %114

28:                                               ; preds = %22
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = load i32, i32* @ngx_http_core_module, align 4
  %31 = call %struct.TYPE_21__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_22__* %29, i32 %30)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %13, align 8
  %32 = load i32, i32* @ngx_http_fastcgi_handler, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %44, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %40, %28
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @ngx_http_script_variables_count(i32* %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %58
  %71 = call i32 @ngx_memzero(%struct.TYPE_19__* %14, i32 56)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %73, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  store i64* %77, i64** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  store i32* %80, i32** %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = call i64 @ngx_http_script_compile(%struct.TYPE_19__* %14)
  %87 = load i64, i64* @NGX_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %70
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %114

91:                                               ; preds = %70
  %92 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %92, i8** %4, align 8
  br label %114

93:                                               ; preds = %58
  %94 = call i32 @ngx_memzero(%struct.TYPE_19__* %9, i32 56)
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = call i32* @ngx_http_upstream_add(%struct.TYPE_22__* %100, %struct.TYPE_19__* %9, i32 0)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i32* %101, i32** %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %111, i8** %4, align 8
  br label %114

112:                                              ; preds = %93
  %113 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %110, %91, %89, %27
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local %struct.TYPE_21__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_script_variables_count(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_19__*) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
