; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CreateTextRegion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CreateTextRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }

@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@SUBPICTURE_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"style is: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_19__*, i8*, i32)* @CreateTextRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @CreateTextRegion(%struct.TYPE_19__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %16 = call i32 @video_format_Init(%struct.TYPE_16__* %9, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = call %struct.TYPE_17__* @subpicture_region_New(%struct.TYPE_16__* %9)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = call i32 @video_format_Clean(%struct.TYPE_16__* %9)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %126

25:                                               ; preds = %3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_18__* @ParseStyle(%struct.TYPE_20__* %26, i8* %27)
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %10, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = icmp ne %struct.TYPE_18__* %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %41, i64 %43
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcasecmp(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %53, i64 %55
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %10, align 8
  br label %58

58:                                               ; preds = %50, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %32

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 20, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  store i32 10, i32* %71, align 4
  %72 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %6, align 4
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = or i32 %72, %79
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = icmp ne %struct.TYPE_18__* %83, null
  br i1 %84, label %85, label %116

85:                                               ; preds = %78
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @msg_Dbg(%struct.TYPE_19__* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %93, %85
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @text_segment_NewInheritStyle(i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  br label %120

116:                                              ; preds = %78
  %117 = call i32 @text_segment_New(i32* null)
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @SetupPositions(%struct.TYPE_17__* %121, i8* %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %120, %3
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %127
}

declare dso_local i32 @video_format_Init(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @subpicture_region_New(%struct.TYPE_16__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @ParseStyle(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @text_segment_NewInheritStyle(i32) #1

declare dso_local i32 @text_segment_New(i32*) #1

declare dso_local i32 @SetupPositions(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
