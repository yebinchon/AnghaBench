; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_get_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_27__*, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_29__, i32, %struct.TYPE_25__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_30__, i32, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_31__* }

@NGX_HTTP_ETAIR_SUCCESS = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"lookup remote block cache, ns addr: %V, block id: %uD not found\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i64, i8*)* @ngx_http_tfs_remote_block_cache_get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_remote_block_cache_get_handler(%struct.TYPE_24__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %15, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  store %struct.TYPE_31__* %20, %struct.TYPE_31__** %10, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %23, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i64 %28
  store %struct.TYPE_32__* %29, %struct.TYPE_32__** %12, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @NGX_HTTP_ETAIR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %162

33:                                               ; preds = %3
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %161

45:                                               ; preds = %33
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %161

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %151

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32* @ngx_pcalloc(i32 %75, i32 %79)
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  store i32* %80, i32** %83, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %68
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %94 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %95 = call i32 @ngx_http_tfs_finalize_request(i32 %92, %struct.TYPE_31__* %93, i32 %94)
  br label %178

96:                                               ; preds = %68
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ngx_memcpy(i32* %100, i32* %101, i32 %105)
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %96
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store i32* %120, i32** %121, align 8
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ngx_http_tfs_local_block_cache_insert(i32 %125, i32 %128, %struct.TYPE_23__* %13, %struct.TYPE_22__* %14)
  br label %130

130:                                              ; preds = %114, %96
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %140 = call i32* @ngx_http_tfs_select_data_server(%struct.TYPE_31__* %138, %struct.TYPE_32__* %139)
  store i32* %140, i32** %11, align 8
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @ngx_http_tfs_peer_set_addr(i32 %143, i32* %148, i32* %149)
  br label %160

151:                                              ; preds = %53
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ngx_http_tfs_remote_block_cache_remove(%struct.TYPE_33__* %152, i32 %155, i32 %158, %struct.TYPE_23__* %13)
  br label %160

160:                                              ; preds = %151, %130
  br label %161

161:                                              ; preds = %160, %45, %33
  br label %174

162:                                              ; preds = %3
  %163 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ngx_log_debug2(i32 %163, i32 %166, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %168, i32 %172)
  br label %174

174:                                              ; preds = %162, %161
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %176 = load i32, i32* @NGX_OK, align 4
  %177 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_31__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %89
  ret void
}

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_local_block_cache_insert(i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32* @ngx_http_tfs_select_data_server(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_remote_block_cache_remove(%struct.TYPE_33__*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
