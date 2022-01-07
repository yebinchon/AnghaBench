; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PCRFixHandle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PCRFixHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@TS_TICK_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"No PCR received for program %d, set up workaround using pid %d\00", align 1
@PROGRAM_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_21__*)* @PCRFixHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PCRFixHandle(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %7, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %16, %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %122

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TS_TICK_UNKNOWN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @TO_SCALE(i64 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  store i64 %50, i64* %53, align 8
  br label %121

54:                                               ; preds = %39
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @FROM_SCALE(i64 %61)
  %63 = sub nsw i64 %57, %62
  %64 = call i64 @VLC_TICK_FROM_MS(i32 500)
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %54
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_15__* @GetPID(%struct.TYPE_20__* %73, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %72
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = call i32 @FindPCRCandidate(%struct.TYPE_18__* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_15__* @GetPID(%struct.TYPE_20__* %88, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %82
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @msg_Warn(%struct.TYPE_19__* %102, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PROGRAM_ALL, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @UpdatePESFilters(%struct.TYPE_19__* %108, i32 %114)
  br label %116

116:                                              ; preds = %101, %72, %66
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %54
  br label %121

121:                                              ; preds = %120, %46
  br label %122

122:                                              ; preds = %38, %121
  ret void
}

declare dso_local i64 @TO_SCALE(i64) #1

declare dso_local i64 @FROM_SCALE(i64) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local %struct.TYPE_15__* @GetPID(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @FindPCRCandidate(%struct.TYPE_18__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*, i32, i32) #1

declare dso_local i32 @UpdatePESFilters(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
