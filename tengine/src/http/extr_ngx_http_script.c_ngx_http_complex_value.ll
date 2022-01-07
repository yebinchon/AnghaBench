; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_complex_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_complex_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32*, i32*, %struct.TYPE_15__* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_complex_value(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.TYPE_14__*)*, align 8
  %10 = alloca i64 (%struct.TYPE_14__*)*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_13__* %17 to i8*
  %21 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i32, i32* @NGX_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %99

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = call i32 @ngx_http_script_flush_complex_value(%struct.TYPE_15__* %24, %struct.TYPE_16__* %25)
  %27 = call i32 @ngx_memzero(%struct.TYPE_14__* %11, i32 48)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* %30, i32** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %41, %23
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to i64 (%struct.TYPE_14__*)**
  %45 = load i64 (%struct.TYPE_14__*)*, i64 (%struct.TYPE_14__*)** %44, align 8
  store i64 (%struct.TYPE_14__*)* %45, i64 (%struct.TYPE_14__*)** %10, align 8
  %46 = load i64 (%struct.TYPE_14__*)*, i64 (%struct.TYPE_14__*)** %10, align 8
  %47 = call i64 %46(%struct.TYPE_14__* %11)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32* @ngx_pnalloc(i32 %56, i64 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* @NGX_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %99

67:                                               ; preds = %50
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* %70, i32** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i32* %74, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = bitcast %struct.TYPE_13__* %76 to i8*
  %79 = bitcast %struct.TYPE_13__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %86, %67
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i32 (%struct.TYPE_14__*)**
  %90 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %89, align 8
  store i32 (%struct.TYPE_14__*)* %90, i32 (%struct.TYPE_14__*)** %9, align 8
  %91 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %9, align 8
  %92 = call i32 %91(%struct.TYPE_14__* %11)
  br label %80

93:                                               ; preds = %80
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %96 = bitcast %struct.TYPE_13__* %94 to i8*
  %97 = bitcast %struct.TYPE_13__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  %98 = load i32, i32* @NGX_OK, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %65, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngx_http_script_flush_complex_value(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #2

declare dso_local i32* @ngx_pnalloc(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
