; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_create_fake_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_create_fake_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__**, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_11__ = type { i32*, i32*, i32 }

@ngx_cycle = common dso_local global %struct.TYPE_13__* null, align 8
@ngx_connection_counter = common dso_local global i32 0, align 4
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"created fake connection: %p\00", align 1
@CR = common dso_local global i32 0, align 4
@LF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_http_lua_create_fake_connection(i32* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %10 = icmp ne %struct.TYPE_12__** %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %14, i64 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_12__* @ngx_get_connection(i32 0, i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %23, align 8
  %25 = icmp ne %struct.TYPE_12__** %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 0
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %31, align 8
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  store i64 -1, i64* %38, align 8
  %39 = load i32, i32* @ngx_connection_counter, align 4
  %40 = call i32 @ngx_atomic_fetch_add(i32 %39, i32 1)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  br label %62

49:                                               ; preds = %36
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32* @ngx_create_pool(i32 128, %struct.TYPE_11__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %97

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call %struct.TYPE_11__* @ngx_pcalloc(i32* %65, i32 24)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = icmp eq %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %97

70:                                               ; preds = %62
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* @NGX_ERROR_INFO, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = call i32 @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %2, align 8
  br label %100

97:                                               ; preds = %69, %60
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = call i32 @ngx_http_lua_close_fake_connection(%struct.TYPE_12__* %98)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %100

100:                                              ; preds = %97, %70, %35
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %101
}

declare dso_local %struct.TYPE_12__* @ngx_get_connection(i32, i32) #1

declare dso_local i32 @ngx_atomic_fetch_add(i32, i32) #1

declare dso_local i32* @ngx_create_pool(i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @dd(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ngx_http_lua_close_fake_connection(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
