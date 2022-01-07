; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_ilst.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_ilst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }

@ATOM_hdlr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"no handler for ilst atom\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown ilst handler type '%4.4s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @MP4_ReadBox_ilst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_ilst(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @vlc_stream_Read(i32* %12, i32* null, i32 8)
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %82

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %6, align 8
  br label %32

32:                                               ; preds = %56, %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ATOM_hdlr, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %41, %35
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %6, align 8
  br label %32

60:                                               ; preds = %47, %32
  br label %61

61:                                               ; preds = %60, %21, %16
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %76 [
    i32 0, label %65
    i32 128, label %68
    i32 129, label %72
  ]

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

68:                                               ; preds = %61
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = call i32 @MP4_ReadBoxContainerChildrenIndexed(i32* %69, %struct.TYPE_11__* %70, i32* null, i32* null, i32 1)
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %61
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = call i32 @MP4_ReadBoxContainerChildren(i32* %73, %struct.TYPE_11__* %74, i32* null)
  store i32 %75, i32* %3, align 4
  br label %82

76:                                               ; preds = %61
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = bitcast i32* %79 to i8*
  %81 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %72, %68, %65, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

declare dso_local i32 @MP4_ReadBoxContainerChildrenIndexed(i32*, %struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @MP4_ReadBoxContainerChildren(i32*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
