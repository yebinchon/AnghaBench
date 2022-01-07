; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_worker.c_ngx_http_lua_ffi_get_process_type.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_worker.c_ngx_http_lua_ffi_get_process_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_SINGLE = common dso_local global i64 0, align 8
@ngx_cycle = common dso_local global %struct.TYPE_4__* null, align 8
@ngx_core_module = common dso_local global i32 0, align 4
@NGX_PROCESS_MASTER = common dso_local global i32 0, align 4
@NGX_PROCESS_HELPER = common dso_local global i64 0, align 8
@NGX_PROCESS_PRIVILEGED_AGENT = common dso_local global i32 0, align 4
@ngx_is_privileged_agent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_get_process_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i64, i64* @ngx_process, align 8
  %4 = load i64, i64* @NGX_PROCESS_SINGLE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ngx_cycle, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ngx_core_module, align 4
  %11 = call i64 @ngx_get_conf(i32 %9, i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @NGX_PROCESS_MASTER, align 4
  store i32 %18, i32* %1, align 4
  br label %23

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i64, i64* @ngx_process, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
