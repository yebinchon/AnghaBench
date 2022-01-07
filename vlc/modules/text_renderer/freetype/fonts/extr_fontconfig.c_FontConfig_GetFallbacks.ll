; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_fontconfig.c_FontConfig_GetFallbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_fontconfig.c_FontConfig_GetFallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32* }

@kVLCDictionaryNotFound = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FcTypeString = common dso_local global i32 0, align 4
@FC_FAMILY = common dso_local global i32 0, align 4
@FcFalse = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@FcMatchPattern = common dso_local global i32 0, align 4
@FcTrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @FontConfig_GetFallbacks(%struct.TYPE_21__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @VLC_UNUSED(i32 %19)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @ToLower(i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %150

33:                                               ; preds = %3
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = call %struct.TYPE_20__* @vlc_dictionary_value_for_key(i32* %35, i8* %36)
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %8, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** @kVLCDictionaryNotFound, align 8
  %40 = icmp ne %struct.TYPE_20__* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %4, align 8
  br label %150

45:                                               ; preds = %33
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %8, align 8
  br label %46

46:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %47 = call i32* (...) @FcPatternCreate()
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* @FcTypeString, align 4
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @FC_FAMILY, align 4
  %56 = load i32, i32* @FcFalse, align 4
  %57 = bitcast %struct.TYPE_23__* %13 to { i32*, i32 }*
  %58 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %57, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @FcPatternAdd(i32* %54, i32 %55, i32* %59, i32 %61, i32 %56)
  %63 = load i32, i32* @config, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* @FcMatchPattern, align 4
  %66 = call i64 @FcConfigSubstitute(i32 %63, i32* %64, i32 %65)
  %67 = load i64, i64* @FcTrue, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %135

69:                                               ; preds = %46
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @FcDefaultSubstitute(i32* %70)
  %72 = load i32, i32* @config, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* @FcTrue, align 8
  %75 = call %struct.TYPE_24__* @FcFontSort(i32 %72, i32* %73, i64 %74, i32* null, i32* %14)
  store %struct.TYPE_24__* %75, %struct.TYPE_24__** %15, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %77 = icmp ne %struct.TYPE_24__* %76, null
  br i1 %77, label %78, label %134

78:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %128, %78
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %79
  store i8* null, i8** %17, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FC_FAMILY, align 4
  %94 = bitcast i8** %17 to i32**
  %95 = call i32 @FcPatternGetString(i32 %92, i32 %93, i32 0, i32** %94)
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i64 @strcasecmp(i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %85
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = call %struct.TYPE_20__* @NewFamily(%struct.TYPE_21__* %101, i8* %102, %struct.TYPE_20__** %8, i32* null, i32* null)
  store %struct.TYPE_20__* %103, %struct.TYPE_20__** %18, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %105 = icmp ne %struct.TYPE_20__* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %100
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %112 = call i32 @FcFontSetDestroy(%struct.TYPE_24__* %111)
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @FcPatternDestroy(i32* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = icmp ne %struct.TYPE_20__* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = call i32 @FreeFamilies(%struct.TYPE_20__* %118, i32* null)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @free(i8* %121)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %150

123:                                              ; preds = %100
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %11, align 8
  br label %127

127:                                              ; preds = %123, %85
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  br label %79

131:                                              ; preds = %79
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %133 = call i32 @FcFontSetDestroy(%struct.TYPE_24__* %132)
  br label %134

134:                                              ; preds = %131, %69
  br label %135

135:                                              ; preds = %134, %46
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @FcPatternDestroy(i32* %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = icmp ne %struct.TYPE_20__* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i8*, i8** %10, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %145 = call i32 @vlc_dictionary_insert(i32* %142, i8* %143, %struct.TYPE_20__* %144)
  br label %146

146:                                              ; preds = %140, %135
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %149, %struct.TYPE_20__** %4, align 8
  br label %150

150:                                              ; preds = %146, %120, %41, %32
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %151
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_20__* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @FcPatternCreate(...) #1

declare dso_local i32 @FcPatternAdd(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @FcConfigSubstitute(i32, i32*, i32) #1

declare dso_local i32 @FcDefaultSubstitute(i32*) #1

declare dso_local %struct.TYPE_24__* @FcFontSort(i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @FcPatternGetString(i32, i32, i32, i32**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @NewFamily(%struct.TYPE_21__*, i8*, %struct.TYPE_20__**, i32*, i32*) #1

declare dso_local i32 @FcFontSetDestroy(%struct.TYPE_24__*) #1

declare dso_local i32 @FcPatternDestroy(i32*) #1

declare dso_local i32 @FreeFamilies(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
