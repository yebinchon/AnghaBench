; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_api.c_ngx_http_lua_shared_memory_add.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_api.c_ngx_http_lua_shared_memory_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__*, i32*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_16__*, i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_lua_shared_memory_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ngx_http_lua_shared_memory_add(%struct.TYPE_20__* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = load i32, i32* @ngx_http_lua_module, align 4
  %17 = call %struct.TYPE_19__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_20__* %15, i32 %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %10, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %19 = icmp eq %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

21:                                               ; preds = %4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @ngx_palloc(i32 %29, i32 4)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

38:                                               ; preds = %26
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ngx_array_init(i32* %41, i32 %44, i32 2, i32 8)
  %46 = load i64, i64* @NGX_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call %struct.TYPE_17__* @ngx_shared_memory_add(%struct.TYPE_20__* %51, i32* %52, i64 %53, i8* %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %12, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = icmp eq %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

59:                                               ; preds = %50
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = icmp ne %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %13, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %5, align 8
  br label %118

70:                                               ; preds = %59
  store i32 40, i32* %14, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.TYPE_18__* @ngx_pcalloc(i32 %73, i32 %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %13, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %77 = icmp eq %struct.TYPE_18__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

79:                                               ; preds = %70
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = call i32 @ngx_memcpy(%struct.TYPE_17__* %95, %struct.TYPE_17__* %96, i32 16)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call %struct.TYPE_17__** @ngx_array_push(i32* %100)
  store %struct.TYPE_17__** %101, %struct.TYPE_17__*** %11, align 8
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %103 = icmp eq %struct.TYPE_17__** %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %79
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %118

105:                                              ; preds = %79
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %107, align 8
  %108 = load i32, i32* @ngx_http_lua_shared_memory_init, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %5, align 8
  br label %118

118:                                              ; preds = %105, %104, %78, %64, %58, %48, %37, %20
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %119
}

declare dso_local %struct.TYPE_19__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_shared_memory_add(%struct.TYPE_20__*, i32*, i64, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__** @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
