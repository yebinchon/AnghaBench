; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_OpenHEIF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_OpenHEIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.heif_private_t = type { i32, %struct.TYPE_9__, %struct.TYPE_12__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@ATOM_ftyp = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"heif-image-duration\00", align 1
@HEIF_DEFAULT_DURATION = common dso_local global i32 0, align 4
@ATOM_infe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"meta/iinf/infe\00", align 1
@UNKNOWN_ES = common dso_local global i32 0, align 4
@DemuxHEIF = common dso_local global i32 0, align 4
@ControlHEIF = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenHEIF(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.heif_private_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @vlc_stream_Peek(i32 %14, i32** %5, i32 12)
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %180

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VLC_FOURCC(i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* @ATOM_ftyp, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %2, align 4
  br label %180

37:                                               ; preds = %19
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 9
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 10
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 11
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VLC_FOURCC(i32 %40, i32 %43, i32 %46, i32 %49)
  switch i32 %50, label %53 [
    i32 129, label %51
    i32 134, label %51
    i32 133, label %51
    i32 130, label %51
    i32 138, label %51
    i32 136, label %51
    i32 128, label %52
    i32 132, label %52
    i32 131, label %52
    i32 137, label %52
    i32 135, label %52
  ]

51:                                               ; preds = %37, %37, %37, %37, %37, %37
  br label %55

52:                                               ; preds = %37, %37, %37, %37, %37
  br label %53

53:                                               ; preds = %37, %52
  %54 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %54, i32* %2, align 4
  br label %180

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @MP4_BoxGetRoot(i32 %58)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %2, align 4
  br label %180

64:                                               ; preds = %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @MP4_BoxDumpStructure(i32 %67, i32* %68)
  %70 = call %struct.heif_private_t* @calloc(i32 1, i32 24)
  store %struct.heif_private_t* %70, %struct.heif_private_t** %7, align 8
  %71 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %72 = bitcast %struct.heif_private_t* %71 to i8*
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %77 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = call %struct.TYPE_12__* (...) @vlc_input_title_New()
  %79 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %80 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %79, i32 0, i32 2
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %80, align 8
  %81 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %82 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = icmp ne %struct.TYPE_12__* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %64
  %86 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %87 = call i32 @free(%struct.heif_private_t* %86)
  %88 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %180

89:                                               ; preds = %64
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = call i32 @var_InheritFloat(%struct.TYPE_11__* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @vlc_tick_from_sec(i32 %91)
  %93 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %94 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %96 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @HEIF_DEFAULT_DURATION, align 4
  %101 = call i32 @VLC_TICK_FROM_SEC(i32 %100)
  %102 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %103 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %89
  store i32* null, i32** %8, align 8
  br label %105

105:                                              ; preds = %166, %123, %104
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @ATOM_infe, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = call i32* @NextAtom(i32* %106, i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %108)
  store i32* %109, i32** %8, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %167

111:                                              ; preds = %105
  %112 = load i32*, i32** %8, align 8
  %113 = call %struct.TYPE_13__* @BOXDATA(i32* %112)
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %111
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @MatchPureImage(i32* %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118, %111
  br label %105

124:                                              ; preds = %118
  %125 = call %struct.TYPE_10__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %9, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = icmp ne %struct.TYPE_10__* %126, null
  br i1 %127, label %128, label %166

128:                                              ; preds = %124
  %129 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %130 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %135 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %133, %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = call %struct.TYPE_13__* @BOXDATA(i32* %140)
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %128
  %146 = load i32*, i32** %8, align 8
  %147 = call %struct.TYPE_13__* @BOXDATA(i32* %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @strdup(i64 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %145, %128
  %154 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %155 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %154, i32 0, i32 2
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %160 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = call i32 @TAB_APPEND(i32 %158, i32 %163, %struct.TYPE_10__* %164)
  br label %166

166:                                              ; preds = %153, %124
  br label %105

167:                                              ; preds = %105
  %168 = load %struct.heif_private_t*, %struct.heif_private_t** %7, align 8
  %169 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* @UNKNOWN_ES, align 4
  %172 = call i32 @es_format_Init(i32* %170, i32 %171, i32 0)
  %173 = load i32, i32* @DemuxHEIF, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @ControlHEIF, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %167, %85, %62, %53, %35, %17
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @VLC_FOURCC(i32, i32, i32, i32) #1

declare dso_local i32* @MP4_BoxGetRoot(i32) #1

declare dso_local i32 @MP4_BoxDumpStructure(i32, i32*) #1

declare dso_local %struct.heif_private_t* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_12__* @vlc_input_title_New(...) #1

declare dso_local i32 @free(%struct.heif_private_t*) #1

declare dso_local i32 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @var_InheritFloat(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32* @NextAtom(i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @BOXDATA(i32*) #1

declare dso_local i32 @MatchPureImage(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @vlc_seekpoint_New(...) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
