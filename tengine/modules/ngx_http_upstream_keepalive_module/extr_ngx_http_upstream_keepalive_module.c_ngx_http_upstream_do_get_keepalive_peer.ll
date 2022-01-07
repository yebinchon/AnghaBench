; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_keepalive_module/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_do_get_keepalive_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_keepalive_module/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_do_get_keepalive_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i32, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"get keepalive peer: using connection %p\00", align 1
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i32*)* @ngx_http_upstream_do_get_keepalive_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_do_get_keepalive_peer(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @ngx_queue_head(i32* %13)
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %109, %4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @ngx_queue_sentinel(i32* %17)
  %19 = icmp ne i32* %16, %18
  br i1 %19, label %20, label %112

20:                                               ; preds = %15
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = inttoptr i64 %26 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %12, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %11, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ngx_memn2cmp(i32* %32, i32* %36, i32 %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %108

45:                                               ; preds = %20
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = call i32 @ngx_queue_remove(i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = call i32 @ngx_queue_remove(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = call i32 @ngx_queue_insert_head(i32* %52, i32* %54)
  %56 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = call i32 @ngx_log_debug1(i32 %56, i32 %59, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %45
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = call i32 @ngx_del_timer(%struct.TYPE_14__* %99)
  br label %101

101:                                              ; preds = %96, %45
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* @NGX_DONE, align 4
  store i32 %107, i32* %5, align 4
  br label %114

108:                                              ; preds = %20
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %10, align 8
  %111 = call i32* @ngx_queue_next(i32* %110)
  store i32* %111, i32** %10, align 8
  br label %15

112:                                              ; preds = %15
  %113 = load i32, i32* @NGX_OK, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %101
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_sentinel(i32*) #1

declare dso_local i64 @ngx_memn2cmp(i32*, i32*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_14__*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
