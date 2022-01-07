; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_handle_connection_failure.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_handle_connection_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__*, i32*, i32, i32 }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"close http upstream connection: %d\00", align 1
@ms_name = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@ds_name = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@rcs_name = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"select a new rc server\00", align 1
@NGX_HTTP_TFS_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_25__*)* @ngx_http_tfs_handle_connection_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_handle_connection_failure(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %6, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* %11, %struct.TYPE_27__** %5, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %13 = icmp ne %struct.TYPE_27__* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ngx_log_debug1(i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ngx_destroy_pool(i64 %30)
  br label %32

32:                                               ; preds = %27, %14
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = call i32 @ngx_close_connection(%struct.TYPE_27__* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ms_name, i32 0, i32 0), align 4
  %44 = call i64 @ngx_strcmp(i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %35
  %47 = load i32, i32* @NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE, align 4
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = call i32 @ngx_http_tfs_peer_set_addr(i32 %52, i32* %57, i32* %61)
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = load i32, i32* @NGX_OK, align 4
  %65 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_24__* %63, i32 %64)
  br label %113

66:                                               ; preds = %35
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ds_name, i32 0, i32 0), align 4
  %73 = call i64 @ngx_strcmp(i32 %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = call i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_24__* %76, i32* %85)
  br label %87

87:                                               ; preds = %75, %66
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @rcs_name, i32 0, i32 0), align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ngx_strncmp(i32 %92, i32 %93, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %87
  %102 = load i32, i32* @NGX_LOG_WARN, align 4
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ngx_log_error(i32 %102, i32 %105, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %108 = call i32 @ngx_http_tfs_select_rc_server(%struct.TYPE_24__* %107)
  br label %109

109:                                              ; preds = %101, %87
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %111 = load i32, i32* @NGX_HTTP_TFS_AGAIN, align 4
  %112 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_24__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %46
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i64) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_select_rc_server(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
