; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_duplicate.c_ngx_http_tfs_dedup_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_duplicate.c_ngx_http_tfs_dedup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i8*, i32* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_MD5_RESULT_LEN = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DUPLICATE_KEY_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TAIR_BYTEARRAY = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"set duplicate info: file name: %V, file ref count: %d, dup_version: %d\00", align 1
@ngx_http_tfs_dedup_set_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_dedup_set(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @ngx_http_tfs_sum_md5(i32 %20, i32* %23, i64* %9, i32* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @NGX_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %116

31:                                               ; preds = %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* @NGX_HTTP_TFS_MD5_RESULT_LEN, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @htonl(i64 %39)
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %31, %3
  %45 = load i32, i32* @NGX_HTTP_TFS_DUPLICATE_KEY_SIZE, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = load i8*, i8** @NGX_HTTP_TAIR_BYTEARRAY, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %53, %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32* @ngx_pcalloc(i32* %60, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load i64, i64* @NGX_ERROR, align 8
  store i64 %69, i64* %4, align 8
  br label %116

70:                                               ; preds = %44
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* @NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE, align 4
  %76 = call i32 @ngx_memcpy(i32* %72, i32* %74, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @NGX_HTTP_TFS_DUPLICATE_VALUE_BASE_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ngx_memcpy(i32* %81, i32* %85, i32 %89)
  %91 = load i8*, i8** @NGX_HTTP_TAIR_BYTEARRAY, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ngx_log_debug3(i32 %93, i32* %94, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %96, i32 %99, i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ngx_http_tfs_dedup_set_handler, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = call i64 @ngx_http_tfs_tair_put_helper(i32 %106, i32* %107, i32* %108, %struct.TYPE_9__* %11, %struct.TYPE_9__* %12, i32 0, i32 %111, i32 %112, %struct.TYPE_8__* %113)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %70, %68, %29
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

declare dso_local i64 @ngx_http_tfs_sum_md5(i32, i32*, i64*, i32*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32*, i32, i8*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @ngx_http_tfs_tair_put_helper(i32, i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
