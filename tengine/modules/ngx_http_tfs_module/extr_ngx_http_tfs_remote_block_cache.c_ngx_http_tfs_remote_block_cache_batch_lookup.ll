; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_batch_lookup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_batch_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"batch lookup remote block cache, ns addr: %uL, block id: %uD\00", align 1
@NGX_HTTP_TAIR_INT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE = common dso_local global i32 0, align 4
@ngx_http_tfs_remote_block_cache_mget_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_remote_block_cache_batch_lookup(%struct.TYPE_12__* %0, i32* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.TYPE_15__* @ngx_array_create(i32* %15, i64 %18, i32 24)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %12, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @NGX_ERROR, align 4
  store i32 %23, i32* %5, align 4
  br label %82

24:                                               ; preds = %4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %14, align 8
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %65, %24
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ngx_log_debug2(i32 %35, i32* %36, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = call i64 @ngx_array_push(%struct.TYPE_15__* %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %13, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @NGX_ERROR, align 4
  store i32 %50, i32* %5, align 4
  br label %82

51:                                               ; preds = %34
  %52 = load i32, i32* @NGX_HTTP_TAIR_INT, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %57 = bitcast %struct.TYPE_13__* %56 to i32*
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* @NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %51
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %11, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 1
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %14, align 8
  br label %28

70:                                               ; preds = %28
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %77 = load i32, i32* @ngx_http_tfs_remote_block_cache_mget_handler, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = bitcast %struct.TYPE_12__* %78 to i8*
  %80 = call i32 @ngx_http_tfs_tair_mget_helper(i32 %73, i32* %74, i32* %75, %struct.TYPE_15__* %76, i32 %77, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %70, %49, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_15__* @ngx_array_create(i32*, i64, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_http_tfs_tair_mget_helper(i32, i32*, i32*, %struct.TYPE_15__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
