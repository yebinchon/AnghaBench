; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_timers.c_ngx_http_tfs_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_timers.c_ngx_http_tfs_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__*, i32, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_25__, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i32, i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"empty rc keepalive queue\00", align 1
@ngx_http_tfs_timers_finalize_request_handler = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_KEEPALIVE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"tfs kp mutex lock failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_tfs_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_timeout_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %14, %struct.TYPE_29__** %8, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = call i64 @ngx_shmtx_trylock(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %191

21:                                               ; preds = %1
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = call i64 @ngx_queue_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ngx_log_debug0(i32 %33, i32 %36, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = call i32 @ngx_shmtx_unlock(i32* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ngx_add_timer(%struct.TYPE_19__* %43, i32 %48)
  br label %197

50:                                               ; preds = %21
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @ngx_create_pool(i32 8192, i32 %53)
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 0
  %62 = call i32 @ngx_shmtx_unlock(i32* %61)
  br label %197

63:                                               ; preds = %50
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @ngx_pcalloc(i32* %64, i32 16)
  %66 = bitcast i8* %65 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %7, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = icmp eq %struct.TYPE_18__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = call i32 @ngx_shmtx_unlock(i32* %73)
  br label %197

75:                                               ; preds = %63
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i8* @ngx_pcalloc(i32* %79, i32 8)
  %81 = bitcast i8* %80 to %struct.TYPE_23__*
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = icmp eq %struct.TYPE_23__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ngx_destroy_pool(i32* %89)
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = call i32 @ngx_shmtx_unlock(i32* %94)
  br label %197

96:                                               ; preds = %75
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i8* @ngx_pcalloc(i32* %108, i32 56)
  %110 = bitcast i8* %109 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %5, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = icmp eq %struct.TYPE_17__* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %96
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ngx_destroy_pool(i32* %114)
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = call i32 @ngx_shmtx_unlock(i32* %119)
  br label %197

121:                                              ; preds = %96
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 7
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 6
  store %struct.TYPE_18__* %125, %struct.TYPE_18__** %127, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @ngx_http_tfs_timers_finalize_request_handler, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %138, align 8
  %139 = load i32, i32* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = call i8* @ngx_pcalloc(i32* %147, i32 4)
  %149 = bitcast i8* %148 to %struct.TYPE_26__*
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = icmp eq %struct.TYPE_26__* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %121
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @ngx_destroy_pool(i32* %157)
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = call i32 @ngx_shmtx_unlock(i32* %162)
  br label %197

164:                                              ; preds = %121
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  store %struct.TYPE_27__* %167, %struct.TYPE_27__** %171, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = call i64 @ngx_http_tfs_init(%struct.TYPE_17__* %177)
  store i64 %178, i64* %3, align 8
  %179 = load i64, i64* %3, align 8
  %180 = load i64, i64* @NGX_ERROR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %164
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @ngx_destroy_pool(i32* %183)
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  %189 = call i32 @ngx_shmtx_unlock(i32* %188)
  br label %197

190:                                              ; preds = %164
  br label %197

191:                                              ; preds = %1
  %192 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ngx_log_debug0(i32 %192, i32 %195, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %197

197:                                              ; preds = %32, %57, %69, %88, %113, %156, %182, %191, %190
  ret void
}

declare dso_local i64 @ngx_shmtx_trylock(i32*) #1

declare dso_local i64 @ngx_queue_empty(i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i64 @ngx_http_tfs_init(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
