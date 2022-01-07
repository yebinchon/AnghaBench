; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Convert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cc.c_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i32 }

@EIA608_STATUS_DISPLAY = common dso_local global i32 0, align 4
@EIA608_STATUS_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32*, i64)* @Convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Convert(%struct.TYPE_6__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %97, %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp uge i64 %18, 3
  br i1 %19, label %20, label %104

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @vlc_tick_from_samples(i32 %28, i32 400)
  %30 = add nsw i64 %27, %29
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @Eia608Parse(i64 %47, i32 %50, i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @EIA608_STATUS_DISPLAY, align 4
  %56 = load i32, i32* @EIA608_STATUS_CHANGED, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %44
  %61 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @Debug(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32* @Subtitle(%struct.TYPE_6__* %63, i64 %66, i64 %67)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @decoder_QueueSub(%struct.TYPE_6__* %72, i32* %73)
  br label %75

75:                                               ; preds = %71, %60
  br label %76

76:                                               ; preds = %75, %44
  br label %96

77:                                               ; preds = %35, %26
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @CEA708_DTVCC_Demuxer_Push(i32 %91, i64 %92, i32* %93)
  br label %95

95:                                               ; preds = %88, %82, %77
  br label %96

96:                                               ; preds = %95, %76
  br label %97

97:                                               ; preds = %96, %20
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load i64, i64* %8, align 8
  %101 = sub i64 %100, 3
  store i64 %101, i64* %8, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32* %103, i32** %7, align 8
  br label %17

104:                                              ; preds = %17
  ret void
}

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @Eia608Parse(i64, i32, i32*) #1

declare dso_local i32 @Debug(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @Subtitle(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @CEA708_DTVCC_Demuxer_Push(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
