; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_block_cache.c_ngx_http_tfs_block_cache_batch_lookup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_block_cache.c_ngx_http_tfs_block_cache_batch_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO_BLOCK_CACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_block_cache_batch_lookup(%struct.TYPE_22__* %0, i32* %1, i32* %2, %struct.TYPE_23__* %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %11, align 8
  %19 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %5
  %26 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %25
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = call i64 @ngx_http_tfs_local_block_cache_batch_lookup(i32 %38, i32* %39, i32* %40, %struct.TYPE_23__* %41, %struct.TYPE_23__* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @NGX_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %35
  %52 = load i64, i64* %13, align 8
  store i64 %52, i64* %6, align 8
  br label %145

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %5
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %143

61:                                               ; preds = %55
  %62 = load i64, i64* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %61
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %16, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  store i64 %83, i64* %14, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @ngx_array_init(%struct.TYPE_23__* %15, i32 %86, i64 %87, i32 8)
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @NGX_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %72
  %93 = load i64, i64* %13, align 8
  store i64 %93, i64* %6, align 8
  br label %145

94:                                               ; preds = %72
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i64 %102
  store %struct.TYPE_20__* %103, %struct.TYPE_20__** %17, align 8
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %131, %94
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NGX_HTTP_TFS_NO_BLOCK_CACHE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = call i64 @ngx_array_push(%struct.TYPE_23__* %15)
  %118 = inttoptr i64 %117 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %18, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %116, %110
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %12, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %12, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 1
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %17, align 8
  br label %104

136:                                              ; preds = %104
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i64 @ngx_http_tfs_remote_block_cache_batch_lookup(%struct.TYPE_24__* %138, i32* %139, i32* %140, %struct.TYPE_23__* %15)
  store i64 %141, i64* %13, align 8
  br label %142

142:                                              ; preds = %136, %61
  br label %143

143:                                              ; preds = %142, %55
  %144 = load i64, i64* %13, align 8
  store i64 %144, i64* %6, align 8
  br label %145

145:                                              ; preds = %143, %92, %51
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local i64 @ngx_http_tfs_local_block_cache_batch_lookup(i32, i32*, i32*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_23__*, i32, i64, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_tfs_remote_block_cache_batch_lookup(%struct.TYPE_24__*, i32*, i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
