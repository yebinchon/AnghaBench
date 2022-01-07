; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_lookup_block_cache.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_lookup_block_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32*, i32, %struct.TYPE_17__, i32, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i32, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i32 }

@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lookup block cache failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_lookup_block_cache(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i64 %16
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_http_tfs_block_cache_lookup(%struct.TYPE_17__* %28, i32 %31, i32 %34, %struct.TYPE_24__* %7, %struct.TYPE_23__* %8)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %93 [
    i32 130, label %37
    i32 128, label %47
    i32 129, label %87
  ]

37:                                               ; preds = %1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 130, i32* %2, align 4
  br label %98

46:                                               ; preds = %37
  br label %93

47:                                               ; preds = %1
  %48 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = call i32* @ngx_http_tfs_select_data_server(%struct.TYPE_21__* %62, %struct.TYPE_22__* %63)
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %47
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = call i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_21__* %68, %struct.TYPE_22__* %69)
  br label %86

71:                                               ; preds = %47
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @ngx_http_tfs_peer_set_addr(i32 %78, i32* %83, i32* %84)
  br label %86

86:                                               ; preds = %71, %67
  br label %93

87:                                               ; preds = %1
  %88 = load i32, i32* @NGX_LOG_ERR, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ngx_log_error(i32 %88, i32 %91, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %1, %87, %86, %46
  store i32 128, i32* %4, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_21__* %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %45
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ngx_http_tfs_block_cache_lookup(%struct.TYPE_17__*, i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32* @ngx_http_tfs_select_data_server(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_http_tfs_remove_block_cache(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
