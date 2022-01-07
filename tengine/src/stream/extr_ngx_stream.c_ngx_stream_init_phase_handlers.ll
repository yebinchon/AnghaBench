; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream.c_ngx_stream_init_phase_handlers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream.c_ngx_stream_init_phase_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }

@NGX_STREAM_LOG_PHASE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_stream_core_preread_phase = common dso_local global i32 0, align 4
@ngx_stream_core_content_phase = common dso_local global i32 0, align 4
@ngx_stream_core_generic_phase = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @ngx_stream_init_phase_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_init_phase_handlers(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NGX_STREAM_LOG_PHASE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = mul i64 %34, 16
  %36 = add i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_13__* @ngx_pcalloc(i32 %33, i32 %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = icmp eq %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i64, i64* @NGX_ERROR, align 8
  store i64 %42, i64* %3, align 8
  br label %121

43:                                               ; preds = %30
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %47, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %116, %43
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @NGX_STREAM_LOG_PHASE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %119

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %9, align 8
  %61 = load i64, i64* %7, align 8
  switch i64 %61, label %72 [
    i64 128, label %62
    i64 129, label %64
  ]

62:                                               ; preds = %52
  %63 = load i32, i32* @ngx_stream_core_preread_phase, align 4
  store i32 %63, i32* %11, align 4
  br label %74

64:                                               ; preds = %52
  %65 = load i32, i32* @ngx_stream_core_content_phase, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 1
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %10, align 8
  br label %116

72:                                               ; preds = %52
  %73 = load i32, i32* @ngx_stream_core_generic_phase, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %62
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %112, %74
  %95 = load i64, i64* %6, align 8
  %96 = icmp uge i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 1
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %10, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %6, align 8
  br label %94

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %64
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %48

119:                                              ; preds = %48
  %120 = load i64, i64* @NGX_OK, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %41
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local %struct.TYPE_13__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
