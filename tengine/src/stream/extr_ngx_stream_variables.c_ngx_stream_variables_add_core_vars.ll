; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_variables.c_ngx_stream_variables_add_core_vars.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_variables.c_ngx_stream_variables_add_core_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HASH_SMALL = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_stream_core_variables = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_stream_variables_add_core_vars(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = load i32, i32* @ngx_stream_core_module, align 4
  %9 = call %struct.TYPE_16__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_17__* %7, i32 %8)
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_14__* @ngx_pcalloc(i32 %12, i32 4)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %15, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @NGX_ERROR, align 8
  store i64 %21, i64* %2, align 8
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load i32, i32* @NGX_HASH_SMALL, align 4
  %41 = call i64 @ngx_hash_keys_array_init(%struct.TYPE_14__* %39, i32 %40)
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %22
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %2, align 8
  br label %87

46:                                               ; preds = %22
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ngx_array_init(i32* %48, i32 %51, i32 8, i32 16)
  %53 = load i64, i64* @NGX_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i64, i64* @NGX_ERROR, align 8
  store i64 %56, i64* %2, align 8
  br label %87

57:                                               ; preds = %46
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_stream_core_variables, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %4, align 8
  br label %59

59:                                               ; preds = %82, %57
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_15__* @ngx_stream_add_variable(%struct.TYPE_17__* %66, %struct.TYPE_13__* %68, i32 %71)
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %5, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = icmp eq %struct.TYPE_15__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* @NGX_ERROR, align 8
  store i64 %76, i64* %2, align 8
  br label %87

77:                                               ; preds = %65
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = bitcast %struct.TYPE_15__* %78 to i8*
  %81 = bitcast %struct.TYPE_15__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  br label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 1
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %4, align 8
  br label %59

85:                                               ; preds = %59
  %86 = load i64, i64* @NGX_OK, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %85, %75, %55, %44, %20
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local %struct.TYPE_16__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_hash_keys_array_init(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_stream_add_variable(%struct.TYPE_17__*, %struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
