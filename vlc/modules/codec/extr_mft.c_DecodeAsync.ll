; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_DecodeAsync.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_DecodeAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@MF_E_NO_EVENTS_AVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error in DecodeAsync()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*)* @DecodeAsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeAsync(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %121

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @block_Release(%struct.TYPE_14__* %23)
  %25 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = call i64 @DequeueMediaEvent(%struct.TYPE_12__* %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %27

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @MF_E_NO_EVENTS_AVAILABLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %115

42:                                               ; preds = %37, %33
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ProcessOutputStream(%struct.TYPE_12__* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %115

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %97, %72, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %61
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = call i64 @DequeueMediaEvent(%struct.TYPE_12__* %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @MF_E_NO_EVENTS_AVAILABLE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @Sleep(i32 1)
  br label %61

74:                                               ; preds = %66
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @FAILED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %115

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ProcessOutputStream(%struct.TYPE_12__* %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %115

96:                                               ; preds = %84
  br label %98

97:                                               ; preds = %79
  br label %61

98:                                               ; preds = %96, %61
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = call i64 @ProcessInputStream(%struct.TYPE_12__* %103, i32 %106, %struct.TYPE_14__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %115

111:                                              ; preds = %98
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = call i32 @block_Release(%struct.TYPE_14__* %112)
  %114 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %121

115:                                              ; preds = %110, %95, %78, %58, %41
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = call i32 @msg_Err(%struct.TYPE_12__* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = call i32 @block_Release(%struct.TYPE_14__* %118)
  %120 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %111, %22, %13
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

declare dso_local i64 @DequeueMediaEvent(%struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @ProcessOutputStream(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @ProcessInputStream(%struct.TYPE_12__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
