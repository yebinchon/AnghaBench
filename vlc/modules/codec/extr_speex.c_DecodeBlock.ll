; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64, i32* }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Header missing, using default settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*, %struct.TYPE_22__**)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @DecodeBlock(%struct.TYPE_20__* %0, %struct.TYPE_22__** %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__**, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %8, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %15 = icmp ne %struct.TYPE_22__* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %21 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = call i32 @Flush(%struct.TYPE_20__* %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = call i32 @block_Release(%struct.TYPE_22__* %35)
  %37 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %37, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %105

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 5
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 4
  store i64 %46, i64* %47, align 8
  br label %57

48:                                               ; preds = %2
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %105

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 5
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 4
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %39
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %101, label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = call i32 @msg_Warn(%struct.TYPE_20__* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = call i64 @CreateDefaultHeader(%struct.TYPE_20__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = icmp ne %struct.TYPE_22__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = call i32 @block_Release(%struct.TYPE_22__* %82)
  br label %84

84:                                               ; preds = %81, %78
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %105

85:                                               ; preds = %72
  br label %98

86:                                               ; preds = %66
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = call i64 @ProcessHeaders(%struct.TYPE_20__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %92 = icmp ne %struct.TYPE_22__* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = call i32 @block_Release(%struct.TYPE_22__* %94)
  br label %96

96:                                               ; preds = %93, %90
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %105

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %57
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %104 = call %struct.TYPE_22__* @ProcessPacket(%struct.TYPE_20__* %102, %struct.TYPE_19__* %7, %struct.TYPE_22__** %103)
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %3, align 8
  br label %105

105:                                              ; preds = %101, %96, %84, %53, %34
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %106
}

declare dso_local i32 @Flush(%struct.TYPE_20__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @CreateDefaultHeader(%struct.TYPE_20__*) #1

declare dso_local i64 @ProcessHeaders(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @ProcessPacket(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
