; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_send_msg.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_23__, %struct.TYPE_17__, %struct.TYPE_20__*, i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }

@ngx_cycle = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_core_module = common dso_local global i32 0, align 4
@ngx_dyups_global_ctx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ngx_pid = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[dyups] send msg %V count %ui version: %ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_22__*, i32)* @ngx_http_dyups_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dyups_send_msg(%struct.TYPE_18__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ngx_core_module, align 4
  %16 = call i64 @ngx_get_conf(i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %8, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_dyups_global_ctx, i32 0, i32 1), align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %11, align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_dyups_global_ctx, i32 0, i32 0), align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i8* @ngx_slab_alloc_locked(i32* %20, i32 64)
  %22 = bitcast i8* %21 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %10, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %24 = icmp eq %struct.TYPE_20__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %190

26:                                               ; preds = %3
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %28 = call i32 @ngx_memzero(%struct.TYPE_20__* %27, i32 64)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @ngx_slab_alloc_locked(i32* %34, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_20__*
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 4
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = icmp eq %struct.TYPE_20__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  br label %190

50:                                               ; preds = %26
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ngx_memzero(%struct.TYPE_20__* %53, i32 %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i64 0
  %65 = bitcast %struct.TYPE_20__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 bitcast (%struct.TYPE_20__* @ngx_pid to i8*), i64 64, i1 false)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @ngx_slab_alloc_locked(i32* %70, i32 %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  store i32* %75, i32** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %50
  br label %190

85:                                               ; preds = %50
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ngx_memcpy(i32* %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = icmp ne %struct.TYPE_22__* %103, null
  br i1 %104, label %105, label %151

105:                                              ; preds = %85
  %106 = load i32*, i32** %9, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = call i8* @ngx_slab_alloc_locked(i32* %106, i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  store i32* %115, i32** %118, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %190

125:                                              ; preds = %105
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  %140 = call i32 @ngx_memcpy(i32* %129, i32 %132, i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %158

151:                                              ; preds = %85
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  store i32* null, i32** %154, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  br label %158

158:                                              ; preds = %151, %125
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %158
  %171 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cycle, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ngx_log_debug3(i32 %171, i32 %174, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %176, i64 %179, i32 %182)
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = call i32 @ngx_queue_insert_head(i32* %185, i32* %187)
  %189 = load i32, i32* @NGX_OK, align 4
  store i32 %189, i32* %4, align 4
  br label %199

190:                                              ; preds = %124, %84, %49, %25
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %192 = icmp ne %struct.TYPE_20__* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32*, i32** %9, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %196 = call i32 @ngx_dyups_destroy_msg(i32* %194, %struct.TYPE_20__* %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32, i32* @NGX_ERROR, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %170
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i8* @ngx_slab_alloc_locked(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, %struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_dyups_destroy_msg(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
