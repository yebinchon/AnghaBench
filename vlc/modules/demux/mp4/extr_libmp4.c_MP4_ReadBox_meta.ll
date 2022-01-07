; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_meta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hdlr\00", align 1
@ATOM_hdlr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @MP4_ReadBox_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_meta(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call i64 @mp4_box_headersize(%struct.TYPE_9__* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %20, %21
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %97

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @vlc_stream_Read(i32* %26, i32* null, i64 %27)
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %97

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @vlc_stream_Peek(i32* %34, i32** %6, i32 8)
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %97

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @vlc_stream_Read(i32* %43, i32* null, i64 4)
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %97

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i64 @memcmp(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %97

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %57 = load i32, i32* @ATOM_hdlr, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %62 = call i32 @MP4_ReadBoxContainerChildren(i32* %59, %struct.TYPE_9__* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %97

65:                                               ; preds = %55
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call %struct.TYPE_9__* @MP4_BoxGet(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = icmp ne %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = call %struct.TYPE_10__* @BOXDATA(%struct.TYPE_9__* %71)
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = call %struct.TYPE_10__* @BOXDATA(%struct.TYPE_9__* %75)
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = call %struct.TYPE_10__* @BOXDATA(%struct.TYPE_9__* %81)
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %94 [
    i32 128, label %90
    i32 129, label %90
    i32 130, label %90
  ]

90:                                               ; preds = %80, %80, %80
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = call i32 @MP4_ReadBoxContainerChildren(i32* %91, %struct.TYPE_9__* %92, i32* null)
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %74, %70, %65
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %90, %64, %53, %46, %37, %32, %24
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @mp4_box_headersize(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i64) #1

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @MP4_ReadBoxContainerChildren(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_9__* @MP4_BoxGet(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_10__* @BOXDATA(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
