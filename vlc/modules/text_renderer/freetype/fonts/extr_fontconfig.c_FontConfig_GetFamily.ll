; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_fontconfig.c_FontConfig_GetFamily.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_fontconfig.c_FontConfig_GetFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@kVLCDictionaryNotFound = common dso_local global i32* null, align 8
@FcResultMatch = common dso_local global i64 0, align 8
@FC_FAMILY = common dso_local global i32 0, align 4
@FC_OUTLINE = common dso_local global i32 0, align 4
@FcTrue = common dso_local global i64 0, align 8
@FC_SLANT = common dso_local global i32 0, align 4
@FC_SLANT_ITALIC = common dso_local global i32 0, align 4
@FC_SLANT_ROMAN = common dso_local global i32 0, align 4
@FC_WEIGHT = common dso_local global i32 0, align 4
@FC_WEIGHT_EXTRABOLD = common dso_local global i32 0, align 4
@FC_WEIGHT_NORMAL = common dso_local global i32 0, align 4
@config = common dso_local global i32 0, align 4
@FcMatchPattern = common dso_local global i32 0, align 4
@FcResultNoMatch = common dso_local global i64 0, align 8
@FC_INDEX = common dso_local global i32 0, align 4
@FC_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FontConfig_GetFamily(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @ToLower(i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %183

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @vlc_dictionary_value_for_key(i32* %33, i8* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** @kVLCDictionaryNotFound, align 8
  %38 = icmp ne i32* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %3, align 8
  br label %183

43:                                               ; preds = %31
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %7, align 8
  %51 = call i32* @NewFamily(%struct.TYPE_5__* %44, i8* %45, i32* %47, i32* %49, i8* %50)
  store i32* %51, i32** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  store i32* null, i32** %3, align 8
  br label %183

57:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %178, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %181

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 2
  store i32 %65, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %66 = load i64, i64* @FcResultMatch, align 8
  store i64 %66, i64* %13, align 8
  store i8* null, i8** %18, align 8
  %67 = call i32* (...) @FcPatternCreate()
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %178

71:                                               ; preds = %61
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* @FC_FAMILY, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = call i32 @FcPatternAddString(i32* %72, i32 %73, i32* %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* @FC_OUTLINE, align 4
  %79 = load i64, i64* @FcTrue, align 8
  %80 = call i32 @FcPatternAddBool(i32* %77, i32 %78, i64 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* @FC_SLANT, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @FC_SLANT_ITALIC, align 4
  br label %89

87:                                               ; preds = %71
  %88 = load i32, i32* @FC_SLANT_ROMAN, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @FcPatternAddInteger(i32* %81, i32 %82, i32 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* @FC_WEIGHT, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @FC_WEIGHT_EXTRABOLD, align 4
  br label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @FC_WEIGHT_NORMAL, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @FcPatternAddInteger(i32* %92, i32 %93, i32 %101)
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @FcDefaultSubstitute(i32* %103)
  %105 = load i32, i32* @config, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* @FcMatchPattern, align 4
  %108 = call i32 @FcConfigSubstitute(i32 %105, i32* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %100
  %111 = load i32*, i32** %14, align 8
  %112 = call i32 @FcPatternDestroy(i32* %111)
  br label %178

113:                                              ; preds = %100
  %114 = load i32, i32* @config, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = call i32* @FcFontMatch(i32 %114, i32* %115, i64* %13)
  store i32* %116, i32** %15, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @FcPatternDestroy(i32* %117)
  %119 = load i32*, i32** %15, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @FcResultNoMatch, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %113
  br label %178

126:                                              ; preds = %121
  %127 = load i64, i64* @FcResultMatch, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* @FC_OUTLINE, align 4
  %130 = call i64 @FcPatternGetBool(i32* %128, i32 %129, i32 0, i64* %17)
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* @FcTrue, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132, %126
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @FcPatternDestroy(i32* %137)
  br label %178

139:                                              ; preds = %132
  %140 = load i64, i64* @FcResultMatch, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* @FC_INDEX, align 4
  %143 = call i64 @FcPatternGetInteger(i32* %141, i32 %142, i32 0, i32* %12)
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %139
  %147 = load i64, i64* @FcResultMatch, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* @FC_FAMILY, align 4
  %150 = call i64 @FcPatternGetString(i32* %148, i32 %149, i32 0, i32** %16)
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @FcPatternDestroy(i32* %153)
  br label %178

155:                                              ; preds = %146
  %156 = load i64, i64* @FcResultMatch, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i32, i32* @FC_FILE, align 4
  %159 = call i64 @FcPatternGetString(i32* %157, i32 %158, i32 0, i32** %16)
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32*, i32** %16, align 8
  %163 = bitcast i32* %162 to i8*
  %164 = call i8* @strdup(i8* %163)
  store i8* %164, i8** %18, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @FcPatternDestroy(i32* %166)
  %168 = load i8*, i8** %18, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  br label %178

171:                                              ; preds = %165
  %172 = load i8*, i8** %18, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = call i32 @NewFont(i8* %172, i32 %173, i32 %174, i32 %175, i32* %176)
  br label %178

178:                                              ; preds = %171, %170, %152, %136, %125, %110, %70
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %58

181:                                              ; preds = %58
  %182 = load i32*, i32** %8, align 8
  store i32* %182, i32** %3, align 8
  br label %183

183:                                              ; preds = %181, %56, %39, %30
  %184 = load i32*, i32** %3, align 8
  ret i32* %184
}

declare dso_local i8* @ToLower(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @NewFamily(%struct.TYPE_5__*, i8*, i32*, i32*, i8*) #1

declare dso_local i32* @FcPatternCreate(...) #1

declare dso_local i32 @FcPatternAddString(i32*, i32, i32*) #1

declare dso_local i32 @FcPatternAddBool(i32*, i32, i64) #1

declare dso_local i32 @FcPatternAddInteger(i32*, i32, i32) #1

declare dso_local i32 @FcDefaultSubstitute(i32*) #1

declare dso_local i32 @FcConfigSubstitute(i32, i32*, i32) #1

declare dso_local i32 @FcPatternDestroy(i32*) #1

declare dso_local i32* @FcFontMatch(i32, i32*, i64*) #1

declare dso_local i64 @FcPatternGetBool(i32*, i32, i32, i64*) #1

declare dso_local i64 @FcPatternGetInteger(i32*, i32, i32, i32*) #1

declare dso_local i64 @FcPatternGetString(i32*, i32, i32, i32**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @NewFont(i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
