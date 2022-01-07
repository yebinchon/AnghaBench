; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_ControlSetPosition.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_ControlSetPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i8, i64, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to seek, skipping frames (slow)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"unable to seek, only forward seeking is possible\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i32)* @ControlSetPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ControlSetPosition(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @vlc_stream_Seek(i32 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %4, align 4
  br label %115

30:                                               ; preds = %21
  br label %46

31:                                               ; preds = %18, %3
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @vlc_stream_Tell(i32 %35)
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @msg_Dbg(%struct.TYPE_10__* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = call i32 @msg_Warn(%struct.TYPE_10__* %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %4, align 4
  br label %115

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %112, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @vlc_stream_Tell(i32 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %113

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i64 @FrameHeaderLoad(%struct.TYPE_10__* %56, %struct.TYPE_9__* %9)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %4, align 4
  br label %115

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 65
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %68 = load i8, i8* %67, align 8
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 86
  br i1 %70, label %71, label %90

71:                                               ; preds = %66, %61
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = mul nsw i32 %85, 1000
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @demux_IndexAppend(i32* %82, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %80, %75, %71
  br label %90

90:                                               ; preds = %89, %66
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %92 = load i8, i8* %91, align 8
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 82
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @vlc_stream_Read(i32 %102, i32* null, i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %110, i32* %4, align 4
  br label %115

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %95, %90
  br label %47

113:                                              ; preds = %54
  %114 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %109, %59, %41, %28
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local i64 @vlc_stream_Tell(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @FrameHeaderLoad(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @demux_IndexAppend(i32*, i32, i64) #1

declare dso_local i64 @vlc_stream_Read(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
