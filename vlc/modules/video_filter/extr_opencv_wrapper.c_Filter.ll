; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_opencv_wrapper.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_opencv_wrapper.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64, %struct.TYPE_27__*, i32, i32*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_30__*, %struct.TYPE_27__*)* }
%struct.TYPE_27__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"couldn't get a p_outpic!\00", align 1
@VINPUT = common dso_local global i64 0, align 8
@PROCESSED = common dso_local global i64 0, align 8
@CINPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Filter() done\00", align 1
@NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_28__*, %struct.TYPE_27__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @Filter(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %12, %struct.TYPE_29__** %6, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %14 = call %struct.TYPE_27__* @filter_NewPicture(%struct.TYPE_28__* %13)
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %7, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %16 = icmp eq %struct.TYPE_27__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = call i32 @msg_Err(%struct.TYPE_28__* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %21 = call i32 @picture_Release(%struct.TYPE_27__* %20)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %3, align 8
  br label %130

22:                                               ; preds = %2
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VINPUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %31 = call i32 @picture_Copy(%struct.TYPE_27__* %29, %struct.TYPE_27__* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = call i32 @VlcPictureToIplImage(%struct.TYPE_28__* %33, %struct.TYPE_27__* %34)
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_30__*, %struct.TYPE_27__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_27__*)** %39, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %42, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = bitcast i32* %47 to %struct.TYPE_27__*
  %49 = call i32 %40(%struct.TYPE_30__* %43, %struct.TYPE_27__* %48)
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PROCESSED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %32
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %57, align 8
  %59 = icmp ne %struct.TYPE_27__* %58, null
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %60
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CINPUT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 1
  %87 = call %struct.TYPE_27__* @image_Convert(i32 %79, %struct.TYPE_27__* %82, i32* %86, i32* %8)
  store %struct.TYPE_27__* %87, %struct.TYPE_27__** %9, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %90 = call i32 @picture_CopyPixels(%struct.TYPE_27__* %88, %struct.TYPE_27__* %89)
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %93 = call i32 @CopyInfoAndRelease(%struct.TYPE_27__* %91, %struct.TYPE_27__* %92)
  br label %112

94:                                               ; preds = %67, %60, %55
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CINPUT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %103, align 8
  %105 = call i32 @picture_CopyPixels(%struct.TYPE_27__* %101, %struct.TYPE_27__* %104)
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %108, align 8
  %110 = call i32 @picture_CopyProperties(%struct.TYPE_27__* %106, %struct.TYPE_27__* %109)
  br label %111

111:                                              ; preds = %100, %94
  br label %112

112:                                              ; preds = %111, %73
  br label %113

113:                                              ; preds = %112, %32
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %115 = call i32 @ReleaseImages(%struct.TYPE_28__* %114)
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %117 = call i32 @picture_Release(%struct.TYPE_27__* %116)
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %119 = call i32 @msg_Dbg(%struct.TYPE_28__* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NONE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %126, %struct.TYPE_27__** %3, align 8
  br label %130

127:                                              ; preds = %113
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %129 = call i32 @picture_Release(%struct.TYPE_27__* %128)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %3, align 8
  br label %130

130:                                              ; preds = %127, %125, %17
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  ret %struct.TYPE_27__* %131
}

declare dso_local %struct.TYPE_27__* @filter_NewPicture(%struct.TYPE_28__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_27__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @VlcPictureToIplImage(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @image_Convert(i32, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @picture_CopyPixels(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @CopyInfoAndRelease(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ReleaseImages(%struct.TYPE_28__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_28__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
