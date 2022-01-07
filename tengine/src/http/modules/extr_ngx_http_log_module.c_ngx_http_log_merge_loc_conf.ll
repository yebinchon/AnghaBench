; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_merge_loc_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_merge_loc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i64, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_access_log = common dso_local global i32 0, align 4
@ngx_http_log_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i8*, i8*)* @ngx_http_log_merge_loc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_log_merge_loc_conf(%struct.TYPE_15__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %22
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %58, i8** %4, align 8
  br label %133

59:                                               ; preds = %52
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %59
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %59
  %80 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %80, i8** %4, align 8
  br label %133

81:                                               ; preds = %74
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @ngx_array_create(i32 %84, i32 2, i32 16)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %133

94:                                               ; preds = %81
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call %struct.TYPE_12__* @ngx_array_push(i32* %97)
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %10, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = icmp eq %struct.TYPE_12__* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %102, i8** %4, align 8
  br label %133

103:                                              ; preds = %94
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = call i32 @ngx_memzero(%struct.TYPE_12__* %104, i32 16)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @ngx_conf_open_file(i32 %108, i32* @ngx_http_access_log)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %117, i8** %4, align 8
  br label %133

118:                                              ; preds = %103
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = load i32, i32* @ngx_http_log_module, align 4
  %121 = call %struct.TYPE_13__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_15__* %119, i32 %120)
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %12, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %11, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %118, %116, %101, %92, %79, %57
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @ngx_conf_open_file(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
