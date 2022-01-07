; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_LoadChapterApple.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_LoadChapterApple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @LoadChapterApple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadChapterApple(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %162, %2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %167

28:                                               ; preds = %20
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = call i64 @MP4_TrackGetDTS(%struct.TYPE_21__* %29, %struct.TYPE_20__* %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = call i32 @MP4_TrackGetPTSDelta(%struct.TYPE_21__* %32, %struct.TYPE_20__* %33, i64* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %28
  store i64 0, i64* %8, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call i64 @MP4_TrackGetReadSize(%struct.TYPE_20__* %38, i64* %8)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %37
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = call i32 @MP4_TrackGetPos(%struct.TYPE_20__* %46)
  %48 = call i32 @vlc_stream_Seek(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %131, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @__MIN(i32 256, i64 %55)
  %57 = call i64 @stream_ReadU32(i32 %53, i8* %54, i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp sgt i64 %58, 2
  br i1 %59, label %60, label %130

60:                                               ; preds = %50
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %62 = call i32 @GetWBE(i8* %61)
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %63, 2
  %65 = call i64 @__MIN(i32 %62, i64 %64)
  store i64 %65, i64* %12, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 2
  store i8* %66, i8** %13, align 8
  %67 = call %struct.TYPE_19__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %14, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %69 = icmp eq %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %162

71:                                               ; preds = %60
  %72 = load i64, i64* %12, align 8
  %73 = icmp sgt i64 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @memcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %79, i64 %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %90

84:                                               ; preds = %74, %71
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32* @strndup(i8* %85, i64 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %97 = call i32 @vlc_seekpoint_Delete(%struct.TYPE_19__* %96)
  br label %162

98:                                               ; preds = %90
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @EnsureUTF8(i32* %101)
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @__MAX(i64 %104, i32 0)
  %106 = add nsw i64 %103, %105
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = icmp ne %struct.TYPE_23__* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %98
  %114 = call %struct.TYPE_23__* (...) @vlc_input_title_New()
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %116, align 8
  br label %117

117:                                              ; preds = %113, %98
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %129 = call i32 @TAB_APPEND(i32 %122, i32 %127, %struct.TYPE_19__* %128)
  br label %130

130:                                              ; preds = %117, %50
  br label %131

131:                                              ; preds = %130, %42, %37
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %144, %153
  %155 = icmp sge i64 %135, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %131
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %156, %131
  br label %162

162:                                              ; preds = %161, %95, %70
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %20

167:                                              ; preds = %20
  ret void
}

declare dso_local i64 @MP4_TrackGetDTS(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @MP4_TrackGetPTSDelta(%struct.TYPE_21__*, %struct.TYPE_20__*, i64*) #1

declare dso_local i64 @MP4_TrackGetReadSize(%struct.TYPE_20__*, i64*) #1

declare dso_local i32 @vlc_stream_Seek(i32, i32) #1

declare dso_local i32 @MP4_TrackGetPos(%struct.TYPE_20__*) #1

declare dso_local i64 @stream_ReadU32(i32, i8*, i64) #1

declare dso_local i64 @__MIN(i32, i64) #1

declare dso_local i32 @GetWBE(i8*) #1

declare dso_local %struct.TYPE_19__* @vlc_seekpoint_New(...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @FromCharset(i8*, i8*, i64) #1

declare dso_local i32* @strndup(i8*, i64) #1

declare dso_local i32 @vlc_seekpoint_Delete(%struct.TYPE_19__*) #1

declare dso_local i32 @EnsureUTF8(i32*) #1

declare dso_local i64 @__MAX(i64, i32) #1

declare dso_local %struct.TYPE_23__* @vlc_input_title_New(...) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
