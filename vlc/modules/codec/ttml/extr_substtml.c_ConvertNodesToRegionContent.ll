; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ConvertNodesToRegionContent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ConvertNodesToRegionContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"smpte:backgroundImage\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@TT_NODE_TYPE_TEXT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32)* @ConvertNodesToRegionContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertNodesToRegionContent(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = call i64 @tt_time_Valid(i32* %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = call i64 @tt_timings_Contains(i32* %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %189

25:                                               ; preds = %19, %5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = call i8* @vlc_dictionary_value_for_key(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call %struct.TYPE_13__* @GetTTMLRegion(i32* %35, i8* %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %8, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @tt_node_NameCompare(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = call i64 @vlc_dictionary_has_key(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = call i8* @vlc_dictionary_value_for_key(i32* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i8* @GetSMPTEImage(i32* %67, i8* %69)
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @vlc_b64_decode_binary(i32* %76, i8* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %66
  br label %83

83:                                               ; preds = %82, %61, %55
  br label %84

84:                                               ; preds = %83, %49
  br label %85

85:                                               ; preds = %84, %44, %38
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @tt_node_NameCompare(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = call i32 @AppendLineBreakToRegion(%struct.TYPE_13__* %98)
  br label %100

100:                                              ; preds = %97, %91, %85
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %9, align 8
  %105 = call i32* @ttml_style_Duplicate(i32* %104)
  br label %107

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32* [ %105, %103 ], [ null, %106 ]
  store i32* %108, i32** %14, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %15, align 8
  br label %112

112:                                              ; preds = %179, %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %114 = icmp ne %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %183

115:                                              ; preds = %112
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TT_NODE_TYPE_TEXT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %124 = bitcast %struct.TYPE_15__* %123 to i32*
  %125 = load i32*, i32** %14, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = call i32 @AppendTextToRegion(i32* %122, i32* %124, i32* %125, %struct.TYPE_13__* %126)
  br label %178

128:                                              ; preds = %115
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %130 = bitcast %struct.TYPE_15__* %129 to %struct.TYPE_14__*
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @tt_node_NameCompare(i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %159, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %137 = bitcast %struct.TYPE_15__* %136 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %16, align 8
  %138 = call i64 @tt_time_Valid(i32* %10)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = call i64 @tt_timings_Contains(i32* %142, i32* %10)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140, %135
  %146 = load i32*, i32** %14, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = call i32* (...) @ttml_style_New()
  store i32* %149, i32** %14, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %148, %145
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @DictToTTMLStyle(i32* %152, i32* %154, i32* %155)
  br label %157

157:                                              ; preds = %151, %148
  br label %158

158:                                              ; preds = %157, %140
  br label %177

159:                                              ; preds = %128
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %161 = bitcast %struct.TYPE_15__* %160 to %struct.TYPE_14__*
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @tt_node_NameCompare(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = call i32 @AppendLineBreakToRegion(%struct.TYPE_13__* %167)
  br label %176

169:                                              ; preds = %159
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %172 = bitcast %struct.TYPE_15__* %171 to %struct.TYPE_14__*
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %10, align 4
  call void @ConvertNodesToRegionContent(i32* %170, %struct.TYPE_14__* %172, %struct.TYPE_13__* %173, i32* %174, i32 %175)
  br label %176

176:                                              ; preds = %169, %166
  br label %177

177:                                              ; preds = %176, %158
  br label %178

178:                                              ; preds = %177, %121
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  store %struct.TYPE_15__* %182, %struct.TYPE_15__** %15, align 8
  br label %112

183:                                              ; preds = %112
  %184 = load i32*, i32** %14, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32*, i32** %14, align 8
  %188 = call i32 @ttml_style_Delete(i32* %187)
  br label %189

189:                                              ; preds = %24, %186, %183
  ret void
}

declare dso_local i64 @tt_time_Valid(i32*) #1

declare dso_local i64 @tt_timings_Contains(i32*, i32*) #1

declare dso_local i8* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local %struct.TYPE_13__* @GetTTMLRegion(i32*, i8*) #1

declare dso_local i32 @tt_node_NameCompare(i32, i8*) #1

declare dso_local i64 @vlc_dictionary_has_key(i32*, i8*) #1

declare dso_local i8* @GetSMPTEImage(i32*, i8*) #1

declare dso_local i32 @vlc_b64_decode_binary(i32*, i8*) #1

declare dso_local i32 @AppendLineBreakToRegion(%struct.TYPE_13__*) #1

declare dso_local i32* @ttml_style_Duplicate(i32*) #1

declare dso_local i32 @AppendTextToRegion(i32*, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @ttml_style_New(...) #1

declare dso_local i32 @DictToTTMLStyle(i32*, i32*, i32*) #1

declare dso_local i32 @ttml_style_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
