; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i32, i32, i32, i32 }

@CFG_MODE = common dso_local global i32 0, align 4
@CFG_FACTOR = common dso_local global i32 0, align 4
@CFG_OVERLAP = common dso_local global i32 0, align 4
@CFG_MIN_ALPHA = common dso_local global i32 0, align 4
@CFG_MIN_STOPS_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_STOP_START_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_START_STOP_INTERVAL = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i8*)* @SubsdelayCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SubsdelayCallback(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = bitcast %struct.TYPE_6__* %6 to i64*
  store i64 %2, i64* %12, align 4
  %13 = bitcast %struct.TYPE_6__* %7 to i64*
  store i64 %3, i64* %13, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = bitcast %struct.TYPE_6__* %6 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @VLC_UNUSED(i64 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @SubsdelayHeapLock(i32* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @CFG_MODE, align 4
  %24 = call i32 @strcmp(i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  br label %102

31:                                               ; preds = %5
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @CFG_FACTOR, align 4
  %34 = call i32 @strcmp(i8* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %101

41:                                               ; preds = %31
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @CFG_OVERLAP, align 4
  %44 = call i32 @strcmp(i8* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %100

51:                                               ; preds = %41
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @CFG_MIN_ALPHA, align 4
  %54 = call i32 @strcmp(i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  br label %99

61:                                               ; preds = %51
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* @CFG_MIN_STOPS_INTERVAL, align 4
  %64 = call i32 @strcmp(i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @VLC_TICK_FROM_MS(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  br label %98

72:                                               ; preds = %61
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* @CFG_MIN_STOP_START_INTERVAL, align 4
  %75 = call i32 @strcmp(i8* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @VLC_TICK_FROM_MS(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %97

83:                                               ; preds = %72
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @CFG_MIN_START_STOP_INTERVAL, align 4
  %86 = call i32 @strcmp(i8* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @VLC_TICK_FROM_MS(i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %96

94:                                               ; preds = %83
  %95 = call i32 (...) @vlc_assert_unreachable()
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99, %46
  br label %101

101:                                              ; preds = %100, %36
  br label %102

102:                                              ; preds = %101, %26
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @SubsdelayRecalculateDelays(i32* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @SubsdelayHeapUnlock(i32* %106)
  %108 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %108
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i32 @SubsdelayHeapLock(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @SubsdelayRecalculateDelays(i32*) #1

declare dso_local i32 @SubsdelayHeapUnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
