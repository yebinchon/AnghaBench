; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_ping_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_ping_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, i64, %struct.TYPE_24__*, i64, i32* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_32__* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dubbo: encode ping request failed\00", align 1
@ngx_http_dubbo_body_output_filter = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"dubbo: send ping request [%ul] frame to backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*)* @ngx_http_dubbo_ping_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_dubbo_ping_handler(%struct.TYPE_31__* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_23__**, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %2, align 8
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %3, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %4, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %5, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = call %struct.TYPE_30__* @ngx_http_dubbo_get_ctx(%struct.TYPE_29__* %23)
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %8, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  store %struct.TYPE_32__* %27, %struct.TYPE_32__** %7, align 8
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = call %struct.TYPE_27__* @ngx_create_multi_request(%struct.TYPE_33__* %28, %struct.TYPE_29__* %29)
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %6, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %32 = icmp eq %struct.TYPE_27__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %131

34:                                               ; preds = %1
  %35 = load i64, i64* @NGX_ERROR, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = call i64 @ngx_dubbo_encode_ping_request(%struct.TYPE_32__* %36, %struct.TYPE_27__* %37)
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @NGX_LOG_ERR, align 4
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %41, i32 %44, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %131

46:                                               ; preds = %34
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %10, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  store %struct.TYPE_23__** %51, %struct.TYPE_23__*** %12, align 8
  br label %52

52:                                               ; preds = %58, %46
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %54 = icmp ne %struct.TYPE_23__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  store %struct.TYPE_23__** %57, %struct.TYPE_23__*** %12, align 8
  br label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %10, align 8
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %10, align 8
  br label %66

66:                                               ; preds = %111, %62
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %68 = icmp ne %struct.TYPE_23__* %67, null
  br i1 %68, label %69, label %115

69:                                               ; preds = %66
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = call %struct.TYPE_23__* @ngx_chain_get_free_buf(i32 %72, i32* %74)
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %11, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %77 = icmp eq %struct.TYPE_23__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %131

79:                                               ; preds = %69
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  store %struct.TYPE_24__* %82, %struct.TYPE_24__** %13, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %9, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = call i32 @ngx_memcpy(%struct.TYPE_24__* %86, %struct.TYPE_24__* %89, i32 48)
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 4
  store i64 ptrtoint (i32* @ngx_http_dubbo_body_output_filter to i64), i64* %95, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 3
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %100, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %108 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store %struct.TYPE_23__** %110, %struct.TYPE_23__*** %12, align 8
  br label %111

111:                                              ; preds = %79
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %10, align 8
  br label %66

115:                                              ; preds = %66
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ngx_post_event(i32 %121, i32* @ngx_posted_events)
  %123 = load i32, i32* @NGX_LOG_INFO, align 4
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %123, i32 %126, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %115, %78, %40, %33
  ret void
}

declare dso_local %struct.TYPE_30__* @ngx_http_dubbo_get_ctx(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @ngx_create_multi_request(%struct.TYPE_33__*, %struct.TYPE_29__*) #1

declare dso_local i64 @ngx_dubbo_encode_ping_request(%struct.TYPE_32__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_post_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
