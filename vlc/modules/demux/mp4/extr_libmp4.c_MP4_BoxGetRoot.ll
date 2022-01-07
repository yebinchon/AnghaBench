; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_BoxGetRoot.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_BoxGetRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }

@ATOM_root = common dso_local global i32 0, align 4
@ATOM_moov = common dso_local global i32 0, align 4
@ATOM_mdat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"moov\00", align 1
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"no moov before mdat and the stream is not seekable\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"moov/mvex\00", align 1
@ATOM_sidx = common dso_local global i32 0, align 4
@ATOM_moof = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"moov/cmov\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"foov\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"foov/cmov\00", align 1
@ATOM_skip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @MP4_BoxGetRoot(i32* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32, i32* @ATOM_root, align 4
  %15 = call %struct.TYPE_14__* @MP4_BoxNew(i32 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %153

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @vlc_stream_GetSize(i32* %22, i64* %6)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* @ATOM_moov, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @ATOM_mdat, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %38 = call i32 @MP4_ReadBoxContainerChildren(i32* %35, %struct.TYPE_14__* %36, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %29
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = call %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %48 = call i64 @vlc_stream_Control(i32* %46, i32 %47, i32* %8)
  %49 = load i64, i64* @VLC_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51, %45
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @msg_Err(i32* %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %148

57:                                               ; preds = %51
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %59 = load i32, i32* @ATOM_moov, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %64 = call i32 @MP4_ReadBoxContainerChildren(i32* %61, %struct.TYPE_14__* %62, i32* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %41, %29
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %2, align 8
  br label %153

70:                                               ; preds = %65
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = call i64 @MP4_BoxCount(%struct.TYPE_14__* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %76 = load i32, i32* @ATOM_sidx, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %79 = load i32, i32* @ATOM_moof, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %78, i64 1
  %81 = load i32, i32* @ATOM_mdat, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %87 = call i32 @MP4_ReadBoxContainerChildrenIndexed(i32* %83, %struct.TYPE_14__* %84, i32* %85, i32* %86, i32 0)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %2, align 8
  br label %153

89:                                               ; preds = %70
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @vlc_stream_Tell(i32* %90)
  %92 = add nsw i64 %91, 8
  %93 = load i32*, i32** %3, align 8
  %94 = call i64 @stream_Size(i32* %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = call i32 @MP4_ReadBoxContainerChildren(i32* %97, %struct.TYPE_14__* %98, i32* null)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %148

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = call %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %12, align 8
  %107 = icmp ne %struct.TYPE_14__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = call %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %13, align 8
  %111 = icmp ne %struct.TYPE_14__* %110, null
  br i1 %111, label %120, label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = call %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %12, align 8
  %115 = icmp ne %struct.TYPE_14__* %114, null
  br i1 %115, label %116, label %146

116:                                              ; preds = %112
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = call %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %13, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %146

120:                                              ; preds = %116, %108
  %121 = load i32, i32* @ATOM_skip, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  store %struct.TYPE_14__* %129, %struct.TYPE_14__** %12, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 3
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %137, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store %struct.TYPE_14__* %140, %struct.TYPE_14__** %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %145, align 8
  br label %146

146:                                              ; preds = %120, %116, %112
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %2, align 8
  br label %153

148:                                              ; preds = %102, %54
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = call i32 @MP4_BoxFree(%struct.TYPE_14__* %149)
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @MP4_Seek(i32* %151, i32 0)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %153

153:                                              ; preds = %148, %146, %74, %68, %18
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %154
}

declare dso_local %struct.TYPE_14__* @MP4_BoxNew(i32) #1

declare dso_local i64 @vlc_stream_GetSize(i32*, i64*) #1

declare dso_local i32 @MP4_ReadBoxContainerChildren(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_14__* @MP4_BoxGet(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @vlc_stream_Control(i32*, i32, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @MP4_BoxCount(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_ReadBoxContainerChildrenIndexed(i32*, %struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @stream_Size(i32*) #1

declare dso_local i32 @MP4_BoxFree(%struct.TYPE_14__*) #1

declare dso_local i32 @MP4_Seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
