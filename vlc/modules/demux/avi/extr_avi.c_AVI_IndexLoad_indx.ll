; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexLoad_indx.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_IndexLoad_indx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }

@AVIFOURCC_RIFF = common dso_local global i32 0, align 4
@AVIFOURCC_hdrl = common dso_local global i32 0, align 4
@AVIFOURCC_strl = common dso_local global i32 0, align 4
@AVIFOURCC_indx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot find indx (misdetect/broken OpenDML file?)\00", align 1
@AVI_INDEX_OF_CHUNKS = common dso_local global i64 0, align 8
@AVI_INDEX_OF_INDEXES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown type index(0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32*)* @AVI_IndexLoad_indx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_IndexLoad_indx(%struct.TYPE_15__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load i32, i32* @AVIFOURCC_RIFF, align 4
  %21 = call i8* @AVI_ChunkFind(i32* %19, i32 %20, i32 0, i32 1)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @AVIFOURCC_hdrl, align 4
  %25 = call i8* @AVI_ChunkFind(i32* %23, i32 %24, i32 0, i32 1)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %142, %3
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %145

33:                                               ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @AVIFOURCC_strl, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @AVI_ChunkFind(i32* %34, i32 %35, i32 %36, i32 1)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @AVIFOURCC_indx, align 4
  %41 = call i8* @AVI_ChunkFind(i32* %39, i32 %40, i32 0, i32 0)
  %42 = bitcast i8* %41 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %12, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %33
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Warn(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  br label %142

54:                                               ; preds = %33
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %68 = call i32 @__Parse_indx(%struct.TYPE_15__* %61, i32* %65, i32* %66, %struct.TYPE_18__* %67)
  br label %141

69:                                               ; preds = %54
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AVI_INDEX_OF_INDEXES, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %134

75:                                               ; preds = %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %145

81:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %130, %81
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @vlc_stream_Seek(i32 %91, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %88
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @AVI_ChunkRead(i32 %106, %struct.TYPE_17__* %13, i32* null)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %88
  br label %133

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %124 = call i32 @__Parse_indx(%struct.TYPE_15__* %117, i32* %121, i32* %122, %struct.TYPE_18__* %123)
  br label %125

125:                                              ; preds = %116, %110
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @AVI_ChunkClean(i32 %128, %struct.TYPE_17__* %13)
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %82

133:                                              ; preds = %109, %82
  br label %140

134:                                              ; preds = %69
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Warn(%struct.TYPE_15__* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %134, %133
  br label %141

141:                                              ; preds = %140, %60
  br label %142

142:                                              ; preds = %141, %53
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %27

145:                                              ; preds = %80, %27
  ret void
}

declare dso_local i8* @AVI_ChunkFind(i32*, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @__Parse_indx(%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @vlc_stream_Seek(i32, i32) #1

declare dso_local i64 @AVI_ChunkRead(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AVI_ChunkClean(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
