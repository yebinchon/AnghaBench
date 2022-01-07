; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_check_init_worker.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_check_init_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__** }

@ngx_http_tfs_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ngx_http_tfs_check_init_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_check_init_worker(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ngx_http_tfs_module, align 4
  %9 = call %struct.TYPE_9__* @ngx_http_cycle_get_module_main_conf(i32* %7, i32 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %17, align 8
  store %struct.TYPE_8__** %18, %struct.TYPE_8__*** %5, align 8
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %67, %14
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43, %34, %26
  %52 = load i64, i64* @NGX_OK, align 8
  store i64 %52, i64* %2, align 8
  br label %72

53:                                               ; preds = %43
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ngx_http_tfs_add_rcs_timers(i32* %54, i32 %60)
  %62 = load i64, i64* @NGX_ERROR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %2, align 8
  br label %72

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %19

70:                                               ; preds = %19
  %71 = load i64, i64* @NGX_OK, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %64, %51, %12
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local %struct.TYPE_9__* @ngx_http_cycle_get_module_main_conf(i32*, i32) #1

declare dso_local i64 @ngx_http_tfs_add_rcs_timers(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
