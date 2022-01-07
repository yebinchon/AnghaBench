; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_split_clients_module.c_ngx_stream_split_clients_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_split_clients_module.c_ngx_stream_split_clients_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@ngx_stream_variable_null_value = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"stream split: %uD %uD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, i64)* @ngx_stream_split_clients_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_split_clients_variable(%struct.TYPE_14__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load i32, i32* @ngx_stream_variable_null_value, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = call i64 @ngx_stream_complex_value(%struct.TYPE_14__* %17, i32* %19, %struct.TYPE_15__* %10)
  %21 = load i64, i64* @NGX_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @NGX_OK, align 8
  store i64 %24, i64* %4, align 8
  br label %84

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ngx_murmur_hash2(i32 %27, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %12, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %79, %25
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %35
  %43 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ngx_log_debug2(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %54)
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %42
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63, %42
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64, i64* @NGX_OK, align 8
  store i64 %77, i64* %4, align 8
  br label %84

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %35

82:                                               ; preds = %35
  %83 = load i64, i64* @NGX_OK, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %70, %23
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i64 @ngx_stream_complex_value(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_murmur_hash2(i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
