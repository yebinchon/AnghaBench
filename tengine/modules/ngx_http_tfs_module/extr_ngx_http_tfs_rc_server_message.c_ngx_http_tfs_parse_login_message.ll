; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_parse_login_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_parse_login_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32, %struct.TYPE_20__, %struct.TYPE_19__*, %struct.TYPE_25__*, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"login rc\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid session id: %V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_parse_login_message(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %7, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %8, align 8
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %37 [
    i32 128, label %29
  ]

29:                                               ; preds = %1
  %30 = call i32 @ngx_str_set(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ngx_http_tfs_status_message(%struct.TYPE_17__* %32, i32* %5, i32 %35)
  store i64 %36, i64* %2, align 8
  br label %103

37:                                               ; preds = %1
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = call i32 @ngx_shmtx_lock(i32* %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_23__* @ngx_http_tfs_rcs_lookup(%struct.TYPE_24__* %43, i32 %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %9, align 8
  %49 = load i64, i64* @NGX_OK, align 8
  store i64 %49, i64* %6, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %51 = icmp eq %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %37
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ngx_http_tfs_create_info_node(%struct.TYPE_22__* %53, %struct.TYPE_24__* %54, i32 %58, i32 %62)
  store i64 %63, i64* %6, align 8
  br label %68

64:                                               ; preds = %37
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %67, align 8
  br label %68

68:                                               ; preds = %64, %52
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = call i32 @ngx_shmtx_unlock(i32* %72)
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @NGX_OK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %68
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = call i64 @ngx_http_tfs_parse_session_id(i32* %81, i32* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @NGX_ERROR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %77
  %91 = load i32, i32* @NGX_LOG_ERR, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = call i32 @ngx_log_error(i32 %91, i32 %94, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %98)
  br label %100

100:                                              ; preds = %90, %77
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i64, i64* %6, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %101, %29
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_http_tfs_status_message(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local %struct.TYPE_23__* @ngx_http_tfs_rcs_lookup(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_tfs_create_info_node(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i64 @ngx_http_tfs_parse_session_id(i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
