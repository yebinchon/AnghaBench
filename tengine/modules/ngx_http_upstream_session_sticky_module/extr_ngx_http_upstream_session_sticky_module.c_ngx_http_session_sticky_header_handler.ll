; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_header_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_header_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_REWRITE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @ngx_http_session_sticky_header_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_session_sticky_header_handler(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %10 = call %struct.TYPE_14__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__* %8, i32 %9)
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %24 = call %struct.TYPE_13__* @ngx_http_conf_upstream_srv_conf(i32* %22, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NGX_HTTP_SESSION_STICKY_REWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %27, %18
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_15__* @ngx_pcalloc(i32 %39, i32 8)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %4, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = icmp eq %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %49 = call i32 @ngx_http_set_ctx(%struct.TYPE_16__* %46, %struct.TYPE_15__* %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i32 @ngx_http_session_sticky_get_cookie(%struct.TYPE_16__* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %43, %34, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_http_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_http_session_sticky_get_cookie(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
