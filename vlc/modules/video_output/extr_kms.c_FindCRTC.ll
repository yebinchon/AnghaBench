; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_FindCRTC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_FindCRTC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Got CRTC %d from current encoder\00", align 1
@drvSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Got CRTC %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot find CRTC for connector %d\00", align 1
@drvTryNext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_17__*)* @FindCRTC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindCRTC(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_16__* @drmModeGetEncoder(i32 %22, i32 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %19
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @msg_Dbg(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = call i32 @drmModeFreeEncoder(%struct.TYPE_16__* %45)
  %47 = load i32, i32* @drvSuccess, align 4
  store i32 %47, i32* %4, align 4
  br label %137

48:                                               ; preds = %29
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = call i32 @drmModeFreeEncoder(%struct.TYPE_16__* %49)
  br label %51

51:                                               ; preds = %48, %19
  br label %52

52:                                               ; preds = %51, %3
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %127, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %130

59:                                               ; preds = %53
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_16__* @drmModeGetEncoder(i32 %62, i32 %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %121, %59
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i1 [ false, %71 ], [ %79, %74 ]
  br i1 %81, label %82, label %124

82:                                               ; preds = %80
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ffs(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %89
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @msg_Dbg(%struct.TYPE_13__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %118 = call i32 @drmModeFreeEncoder(%struct.TYPE_16__* %117)
  %119 = load i32, i32* @drvSuccess, align 4
  store i32 %119, i32* %4, align 4
  br label %137

120:                                              ; preds = %89, %82
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %71

124:                                              ; preds = %80
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %126 = call i32 @drmModeFreeEncoder(%struct.TYPE_16__* %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %53

130:                                              ; preds = %53
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @msg_Err(%struct.TYPE_13__* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @drvTryNext, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %130, %98, %34
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_16__* @drmModeGetEncoder(i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @drmModeFreeEncoder(%struct.TYPE_16__*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
