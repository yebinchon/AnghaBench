; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_init_vm.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lua initialize the global Lua VM %p\00", align 1
@ngx_http_lua_cleanup_vm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"preload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_lua_init_vm(i32* %0, i32* %1, i32* %2, %struct.TYPE_15__* %3, i32* %4, %struct.TYPE_12__** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_12__** %5, %struct.TYPE_12__*** %13, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call %struct.TYPE_12__* @ngx_pool_cleanup_add(i32* %19, i32 0)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %16, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %123

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @ngx_http_lua_new_state(i32* %25, i32* %26, %struct.TYPE_15__* %27, i32* %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32* null, i32** %7, align 8
  br label %123

33:                                               ; preds = %24
  %34 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @ngx_log_debug1(i32 %34, i32* %35, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* @ngx_http_lua_cleanup_vm, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call %struct.TYPE_13__* @ngx_alloc(i32 16, i32* %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %18, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %44 = icmp eq %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32* null, i32** %7, align 8
  br label %123

46:                                               ; preds = %33
  %47 = load i32*, i32** %14, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %62, align 8
  br label %63

63:                                               ; preds = %59, %46
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %65 = icmp ne %struct.TYPE_12__** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %121

74:                                               ; preds = %69
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @lua_getglobal(i32* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @lua_getfield(i32* %77, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %17, align 8
  store i64 0, i64* %15, align 8
  br label %84

84:                                               ; preds = %115, %74
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %85, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %84
  %93 = load i32*, i32** %14, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ngx_http_lua_probe_register_preload_package(i32* %93, i64 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %102 = load i64, i64* %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @lua_pushcfunction(i32* %100, i32 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @lua_setfield(i32* %107, i32 -2, i8* %113)
  br label %115

115:                                              ; preds = %92
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %84

118:                                              ; preds = %84
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @lua_pop(i32* %119, i32 2)
  br label %121

121:                                              ; preds = %118, %69
  %122 = load i32*, i32** %14, align 8
  store i32* %122, i32** %7, align 8
  br label %123

123:                                              ; preds = %121, %45, %32, %23
  %124 = load i32*, i32** %7, align 8
  ret i32* %124
}

declare dso_local %struct.TYPE_12__* @ngx_pool_cleanup_add(i32*, i32) #1

declare dso_local i32* @ngx_http_lua_new_state(i32*, i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_alloc(i32, i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_probe_register_preload_package(i32*, i64) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
