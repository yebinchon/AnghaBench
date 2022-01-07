; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_LoadFace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_platform_fonts.c_LoadFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@STYLE_HALFWIDTH = common dso_local global i32 0, align 4
@STYLE_DOUBLEWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s - %d - %d - %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"LoadFace: Invalid font attachment index\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"LoadFace: Error creating face for %s\00", align 1
@ft_encoding_unicode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"LoadFace: Error selecting charmap for %s\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"LoadFace: Failed to set font size for %s\00", align 1
@FT_OPEN_STREAM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_13__*)* @LoadFace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LoadFace(%struct.TYPE_15__* %0, i8* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  store i8* null, i8** %11, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = call i32 @ConvertToLiveSize(%struct.TYPE_15__* %20, %struct.TYPE_13__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @STYLE_HALFWIDTH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %13, align 4
  br label %44

33:                                               ; preds = %4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STYLE_DOUBLEWIDTH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i64 @asprintf(i8** %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32* null, i32** %5, align 8
  br label %163

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i8*, i8** %11, align 8
  %56 = call i32* @vlc_dictionary_value_for_key(i32* %54, i8* %55)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %159

60:                                               ; preds = %52
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %113

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %72
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Err(%struct.TYPE_15__* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %112

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %90, i64 %92
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %16, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @FT_New_Memory_Face(i32 %97, i32 %100, i32 %103, i32 %104, i32** %14)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %87
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Err(%struct.TYPE_15__* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %107, %87
  br label %112

112:                                              ; preds = %111, %84
  br label %126

113:                                              ; preds = %66, %60
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @FT_New_Face(i32 %116, i8* %117, i32 %118, i32** %14)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Err(%struct.TYPE_15__* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %121, %113
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32*, i32** %14, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %159

130:                                              ; preds = %126
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* @ft_encoding_unicode, align 4
  %133 = call i64 @FT_Select_Charmap(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Err(%struct.TYPE_15__* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @FT_Done_Face(i32* %139)
  store i32* null, i32** %14, align 8
  br label %159

141:                                              ; preds = %130
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i64 @FT_Set_Pixel_Sizes(i32* %142, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 (%struct.TYPE_15__*, i8*, ...) @msg_Err(%struct.TYPE_15__* %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @FT_Done_Face(i32* %151)
  store i32* null, i32** %14, align 8
  br label %159

153:                                              ; preds = %141
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i8*, i8** %11, align 8
  %157 = load i32*, i32** %14, align 8
  %158 = call i32 @vlc_dictionary_insert(i32* %155, i8* %156, i32* %157)
  br label %159

159:                                              ; preds = %153, %147, %135, %129, %59
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i32*, i32** %14, align 8
  store i32* %162, i32** %5, align 8
  br label %163

163:                                              ; preds = %159, %51
  %164 = load i32*, i32** %5, align 8
  ret i32* %164
}

declare dso_local i32 @ConvertToLiveSize(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i64 @FT_New_Memory_Face(i32, i32, i32, i32, i32**) #1

declare dso_local i64 @FT_New_Face(i32, i8*, i32, i32**) #1

declare dso_local i64 @FT_Select_Charmap(i32*, i32) #1

declare dso_local i32 @FT_Done_Face(i32*) #1

declare dso_local i64 @FT_Set_Pixel_Sizes(i32*, i32, i32) #1

declare dso_local i32 @vlc_dictionary_insert(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
