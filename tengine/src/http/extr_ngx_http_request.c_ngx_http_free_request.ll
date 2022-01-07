; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_free_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_17__*, %struct.TYPE_16__, i32, %struct.TYPE_15__, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i64, i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, i32, i32 (i32)* }
%struct.linger = type { i32, i64 }
%struct.TYPE_21__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"http close request\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"http request already closed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"logging request\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"closing request\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"setsockopt(SO_LINGER) failed\00", align 1
@ngx_stat_reading = common dso_local global i32 0, align 4
@ngx_stat_writing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_free_request(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.linger, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %5, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = call i32 @ngx_log_debug0(i32 %16, %struct.TYPE_18__* %17, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @NGX_LOG_ALERT, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = call i32 @ngx_log_error(i32 %24, %struct.TYPE_18__* %25, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %141

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %8, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 7
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %32, align 8
  br label %33

33:                                               ; preds = %49, %27
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = icmp ne i32 (i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 2
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %8, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i64, i64* %4, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62, %56
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %62, %53
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = call i32 @ngx_http_log_request(%struct.TYPE_19__* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %84
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = load i32, i32* @ngx_http_core_module, align 4
  %96 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %94, i32 %95)
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %10, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.linger, %struct.linger* %7, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = getelementptr inbounds %struct.linger, %struct.linger* %7, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SOL_SOCKET, align 4
  %110 = load i32, i32* @SO_LINGER, align 4
  %111 = bitcast %struct.linger* %7 to i8*
  %112 = call i32 @setsockopt(i32 %108, i32 %109, i32 %110, i8* %111, i32 16)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load i32, i32* @NGX_LOG_ALERT, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = load i32, i32* @ngx_socket_errno, align 4
  %118 = call i32 @ngx_log_error(i32 %115, %struct.TYPE_18__* %116, i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %101
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %84
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  store %struct.TYPE_20__* %124, %struct.TYPE_20__** %9, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %6, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @ngx_destroy_pool(i32* %139)
  br label %141

141:                                              ; preds = %121, %23
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ngx_http_log_request(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
