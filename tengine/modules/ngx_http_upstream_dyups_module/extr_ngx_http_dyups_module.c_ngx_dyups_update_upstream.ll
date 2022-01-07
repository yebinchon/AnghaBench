; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_update_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_update_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ngx_cycle = common dso_local global i32 0, align 4
@ngx_http_dyups_module = common dso_local global i32 0, align 4
@ngx_dyups_global_ctx = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ngx_http_dyups_api_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"API disabled\0A\00", align 1
@NGX_HTTP_NOT_ALLOWED = common dso_local global i64 0, align 8
@NGX_HTTP_CONFLICT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"wait and try again\0A\00", align 1
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_DYUPS_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"alert: update success but not sync to other process\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_dyups_update_upstream(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ngx_cycle, align 4
  %13 = load i32, i32* @ngx_http_dyups_module, align 4
  %14 = call %struct.TYPE_6__* @ngx_http_cycle_get_module_main_conf(i32 %12, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ngx_dyups_global_ctx, i32 0, i32 1), i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ngx_dyups_global_ctx, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load i32, i32* @ngx_http_dyups_api_enable, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ngx_str_set(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %21, i64* %4, align 8
  br label %76

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @ngx_shmtx_lock(i32* %29)
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @ngx_shmtx_trylock(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @NGX_HTTP_CONFLICT, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ngx_str_set(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %71

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @ngx_http_dyups_read_msg_locked(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @ngx_dyups_sandbox_update(i32* %44, i32* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @NGX_HTTP_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %71

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @ngx_dyups_do_update(i32* %52, i32* %53, i32* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @NGX_HTTP_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @NGX_DYUPS_ADD, align 4
  %63 = call i64 @ngx_http_dyups_send_msg(i32* %60, i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @ngx_str_set(i32* %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %50, %36
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @ngx_shmtx_unlock(i32* %73)
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %71, %18
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_6__* @ngx_http_cycle_get_module_main_conf(i32, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_trylock(i32*) #1

declare dso_local i32 @ngx_http_dyups_read_msg_locked(i32*) #1

declare dso_local i64 @ngx_dyups_sandbox_update(i32*, i32*) #1

declare dso_local i64 @ngx_dyups_do_update(i32*, i32*, i32*) #1

declare dso_local i64 @ngx_http_dyups_send_msg(i32*, i32*, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
