; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_free_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_free_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 (%struct.TYPE_13__*, i32, i32)*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"[dyups] dynamic upstream free handler count %i\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"[dyups] dynamic upstream free peer may cause memleak %i\00", align 1
@ngx_http_dyups_clean_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i32)* @ngx_http_dyups_free_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_dyups_free_peer(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %7, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_log_debug1(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_12__* @ngx_pool_cleanup_add(i32 %43, i32 0)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %8, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = icmp eq %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load i32, i32* @NGX_LOG_ERR, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ngx_log_error(i32 %48, i32 %51, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %68

58:                                               ; preds = %32
  %59 = load i32, i32* @ngx_http_dyups_clean_request, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %58, %47, %31, %25
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_13__*, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 %71(%struct.TYPE_13__* %72, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
