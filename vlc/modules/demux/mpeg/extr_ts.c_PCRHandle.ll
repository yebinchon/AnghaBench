; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PCRHandle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_PCRHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_32__* }

@TYPE_PAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_31__*, i32)* @PCRHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PCRHandle(%struct.TYPE_21__* %0, %struct.TYPE_31__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %7, align 8
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %113

25:                                               ; preds = %3
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %27 = call %struct.TYPE_23__* @GetPID(%struct.TYPE_22__* %26, i32 0)
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TYPE_PAT, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %113

36:                                               ; preds = %25
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = call %struct.TYPE_23__* @GetPID(%struct.TYPE_22__* %37, i32 0)
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  store %struct.TYPE_32__* %41, %struct.TYPE_32__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %110, %36
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %113

49:                                               ; preds = %42
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %53, i64 %55
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %59, align 8
  store %struct.TYPE_30__* %60, %struct.TYPE_30__** %10, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %110

67:                                               ; preds = %49
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @TimeStampWrapAround(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 8191
  br i1 %77, label %78, label %91

78:                                               ; preds = %67
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @PIDReferencedByProgram(%struct.TYPE_30__* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ProgramSetPCR(%struct.TYPE_21__* %86, %struct.TYPE_30__* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  br label %109

91:                                               ; preds = %67
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @PCRCheckDTS(%struct.TYPE_21__* %100, %struct.TYPE_30__* %101, i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ProgramSetPCR(%struct.TYPE_21__* %104, %struct.TYPE_30__* %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %91
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %66
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %42

113:                                              ; preds = %24, %35, %42
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_23__* @GetPID(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @TimeStampWrapAround(i32, i32) #1

declare dso_local i64 @PIDReferencedByProgram(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ProgramSetPCR(%struct.TYPE_21__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @PCRCheckDTS(%struct.TYPE_21__*, %struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
