; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_method.c_ngx_http_lua_ffi_req_set_method.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_method.c_ngx_http_lua_ffi_req_set_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NGX_HTTP_LUA_FFI_BAD_CONTEXT = common dso_local global i32 0, align 4
@ngx_http_lua_get_method = common dso_local global i32 0, align 4
@ngx_http_lua_post_method = common dso_local global i32 0, align 4
@ngx_http_lua_put_method = common dso_local global i32 0, align 4
@ngx_http_lua_head_method = common dso_local global i32 0, align 4
@ngx_http_lua_delete_method = common dso_local global i32 0, align 4
@ngx_http_lua_options_method = common dso_local global i32 0, align 4
@ngx_http_lua_mkcol_method = common dso_local global i32 0, align 4
@ngx_http_lua_copy_method = common dso_local global i32 0, align 4
@ngx_http_lua_move_method = common dso_local global i32 0, align 4
@ngx_http_lua_propfind_method = common dso_local global i32 0, align 4
@ngx_http_lua_proppatch_method = common dso_local global i32 0, align 4
@ngx_http_lua_lock_method = common dso_local global i32 0, align 4
@ngx_http_lua_unlock_method = common dso_local global i32 0, align 4
@ngx_http_lua_patch_method = common dso_local global i32 0, align 4
@ngx_http_lua_trace_method = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_req_set_method(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @NGX_HTTP_LUA_FFI_BAD_CONTEXT, align 4
  store i32 %13, i32* %3, align 4
  br label %83

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %76 [
    i32 140, label %16
    i32 133, label %20
    i32 130, label %24
    i32 139, label %28
    i32 141, label %32
    i32 135, label %36
    i32 137, label %40
    i32 142, label %44
    i32 136, label %48
    i32 132, label %52
    i32 131, label %56
    i32 138, label %60
    i32 128, label %64
    i32 134, label %68
    i32 129, label %72
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @ngx_http_lua_get_method, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %78

20:                                               ; preds = %14
  %21 = load i32, i32* @ngx_http_lua_post_method, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %78

24:                                               ; preds = %14
  %25 = load i32, i32* @ngx_http_lua_put_method, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %78

28:                                               ; preds = %14
  %29 = load i32, i32* @ngx_http_lua_head_method, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %78

32:                                               ; preds = %14
  %33 = load i32, i32* @ngx_http_lua_delete_method, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %78

36:                                               ; preds = %14
  %37 = load i32, i32* @ngx_http_lua_options_method, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %78

40:                                               ; preds = %14
  %41 = load i32, i32* @ngx_http_lua_mkcol_method, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %78

44:                                               ; preds = %14
  %45 = load i32, i32* @ngx_http_lua_copy_method, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %78

48:                                               ; preds = %14
  %49 = load i32, i32* @ngx_http_lua_move_method, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %78

52:                                               ; preds = %14
  %53 = load i32, i32* @ngx_http_lua_propfind_method, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %78

56:                                               ; preds = %14
  %57 = load i32, i32* @ngx_http_lua_proppatch_method, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %78

60:                                               ; preds = %14
  %61 = load i32, i32* @ngx_http_lua_lock_method, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %78

64:                                               ; preds = %14
  %65 = load i32, i32* @ngx_http_lua_unlock_method, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %78

68:                                               ; preds = %14
  %69 = load i32, i32* @ngx_http_lua_patch_method, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %78

72:                                               ; preds = %14
  %73 = load i32, i32* @ngx_http_lua_trace_method, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %78

76:                                               ; preds = %14
  %77 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @NGX_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %76, %12
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
