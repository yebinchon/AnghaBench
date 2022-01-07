; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_output_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_lua_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*)* @ngx_http_lua_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_output_filter(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp ne %struct.TYPE_9__* %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @ngx_http_output_filter(%struct.TYPE_9__* %23, i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %30, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @ngx_http_output_filter(%struct.TYPE_9__* %33, i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @NGX_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %3, align 8
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32, i32* @ngx_http_lua_module, align 4
  %44 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__* %42, i32 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = ptrtoint i32* %46 to i32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 (i32, i32, ...) @ngx_chain_update_chains(i32 %47, i32 %50, i32** %5, i32 ptrtoint (i32* @ngx_http_lua_module to i32))
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %41, %39, %17
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
