; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_get_rotation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_get_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i32 0, align 4
@ORIENT_ROTATED_270 = common dso_local global i8* null, align 8
@ORIENT_VFLIPPED = common dso_local global i8* null, align 8
@ORIENT_ROTATED_180 = common dso_local global i8* null, align 8
@ORIENT_ROTATED_90 = common dso_local global i8* null, align 8
@ORIENT_NORMAL = common dso_local global i8* null, align 8
@ORIENT_HFLIPPED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @get_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rotation(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.TYPE_11__* @av_dict_get(i32 %13, i8* %14, i32* null, i32 0)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load i32, i32* @AV_PKT_DATA_DISPLAYMATRIX, align 4
  %18 = call i64 @av_stream_get_side_data(%struct.TYPE_10__* %16, i32 %17, i32* null)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %119

22:                                               ; preds = %2
  %23 = load i64*, i64** %8, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 4
  %28 = load i64, i64* %27, align 8
  %29 = mul nsw i64 %25, %28
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %32, %35
  %37 = sub nsw i64 %29, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @av_display_matrix_flip(i64* %41, i32 1, i32 0)
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @av_display_rotation_get(i64* %44)
  %46 = call i64 @lround(i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sgt i64 %47, 45
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %50, 135
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** @ORIENT_ROTATED_270, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %95

57:                                               ; preds = %49, %43
  %58 = load i64, i64* %7, align 8
  %59 = icmp sgt i64 %58, 135
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  %62 = icmp slt i64 %61, -135
  br i1 %62, label %63, label %77

63:                                               ; preds = %60, %57
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** @ORIENT_VFLIPPED, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %76

71:                                               ; preds = %63
  %72 = load i8*, i8** @ORIENT_ROTATED_180, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %94

77:                                               ; preds = %60
  %78 = load i64, i64* %7, align 8
  %79 = icmp slt i64 %78, -45
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, -135
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i8*, i8** @ORIENT_ROTATED_90, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %93

88:                                               ; preds = %80, %77
  %89 = load i8*, i8** @ORIENT_NORMAL, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %76
  br label %95

95:                                               ; preds = %94, %52
  %96 = load i64, i64* %9, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load i64, i64* %7, align 8
  %100 = icmp sgt i64 %99, 135
  br i1 %100, label %118, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %7, align 8
  %103 = icmp slt i64 %102, -135
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %10, align 4
  %110 = load i8*, i8** @ORIENT_HFLIPPED, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @video_format_TransformBy(%struct.TYPE_12__* %115, i32 %116)
  br label %118

118:                                              ; preds = %104, %101, %98, %95
  br label %168

119:                                              ; preds = %2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = icmp ne %struct.TYPE_11__* %120, null
  br i1 %121, label %122, label %167

122:                                              ; preds = %119
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @strtol(i32 %125, i32* null, i32 10)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp sgt i64 %127, 45
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load i64, i64* %7, align 8
  %131 = icmp slt i64 %130, 135
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i8*, i8** @ORIENT_ROTATED_90, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %166

137:                                              ; preds = %129, %122
  %138 = load i64, i64* %7, align 8
  %139 = icmp sgt i64 %138, 135
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, i64* %7, align 8
  %142 = icmp slt i64 %141, 225
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i8*, i8** @ORIENT_ROTATED_180, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  br label %165

148:                                              ; preds = %140, %137
  %149 = load i64, i64* %7, align 8
  %150 = icmp sgt i64 %149, 225
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i64, i64* %7, align 8
  %153 = icmp slt i64 %152, 315
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i8*, i8** @ORIENT_ROTATED_270, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  br label %164

159:                                              ; preds = %151, %148
  %160 = load i8*, i8** @ORIENT_NORMAL, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  br label %164

164:                                              ; preds = %159, %154
  br label %165

165:                                              ; preds = %164, %143
  br label %166

166:                                              ; preds = %165, %132
  br label %167

167:                                              ; preds = %166, %119
  br label %168

168:                                              ; preds = %167, %118
  ret void
}

declare dso_local %struct.TYPE_11__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i64 @av_stream_get_side_data(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @av_display_matrix_flip(i64*, i32, i32) #1

declare dso_local i64 @lround(i32) #1

declare dso_local i32 @av_display_rotation_get(i64*) #1

declare dso_local i32 @video_format_TransformBy(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
