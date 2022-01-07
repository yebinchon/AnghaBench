; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_block_cache.c_ngx_http_tfs_block_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_block_cache.c_ngx_http_tfs_block_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO_BLOCK_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_block_cache_lookup(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %5
  %20 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @ngx_http_tfs_local_block_cache_lookup(i32 %32, i32* %33, i32* %34, i32* %35, i32* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %6, align 8
  br label %71

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i32, i32* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @ngx_http_tfs_remote_block_cache_lookup(i32* %63, i32* %64, i32* %65, i32* %66)
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %61, %51
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %41
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i64 @ngx_http_tfs_local_block_cache_lookup(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ngx_http_tfs_remote_block_cache_lookup(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
