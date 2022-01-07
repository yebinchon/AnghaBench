; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm_preload.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-shm-module/extr_ngx_http_lua_fake_shm_module.c_ngx_http_lua_fake_shm_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.TYPE_17__ = type { i64* }

@ngx_cycle = common dso_local global i64 0, align 8
@ngx_http_module = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ngx_http_lua_fake_shm_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ngx_http_lua_fake_shm_get_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"get_info\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_fake_shm_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_fake_shm_preload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i64, i64* @ngx_cycle, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_http_module, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_http_lua_fake_shm_module, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %20, i64 %21
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %3, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %104

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lua_createtable(i32* %29, i32 0, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @lua_createtable(i32* %36, i32 0, i32 2)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @ngx_http_lua_fake_shm_get_info, align 4
  %40 = call i32 @lua_pushcfunction(i32* %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @lua_pushvalue(i32* %43, i32 -1)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @lua_setfield(i32* %45, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %50, align 8
  store %struct.TYPE_14__** %51, %struct.TYPE_14__*** %7, align 8
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %98, %28
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %53, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %52
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %63, i64 %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %72, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @lua_pushlstring(i32* %62, i8* %71, i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @lua_createtable(i32* %81, i32 1, i32 0)
  %83 = load i32*, i32** %2, align 8
  %84 = call %struct.TYPE_14__** @lua_newuserdata(i32* %83, i32 8)
  store %struct.TYPE_14__** %84, %struct.TYPE_14__*** %8, align 8
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 %86
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %89, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @lua_rawseti(i32* %90, i32 -2, i32 1)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @lua_pushvalue(i32* %92, i32 -3)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @lua_setmetatable(i32* %94, i32 -2)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @lua_rawset(i32* %96, i32 -4)
  br label %98

98:                                               ; preds = %61
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %52

101:                                              ; preds = %52
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @lua_pop(i32* %102, i32 1)
  br label %107

104:                                              ; preds = %1
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @lua_newtable(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  ret i32 1
}

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_14__** @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
