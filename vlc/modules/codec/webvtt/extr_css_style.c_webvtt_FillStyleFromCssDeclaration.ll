; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_style.c_webvtt_FillStyleFromCssDeclaration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_style.c_webvtt_FillStyleFromCssDeclaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i8*, double }
%struct.TYPE_21__ = type { i32, i8*, double, double, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"color\00", align 1
@STYLE_HAS_FONT_COLOR = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_ALPHA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"text-decoration\00", align 1
@TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@STYLE_STRIKEOUT = common dso_local global i32 0, align 4
@STYLE_UNDERLINE = common dso_local global i32 0, align 4
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"line-through\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"text-shadow\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"background-color\00", align 1
@STYLE_HAS_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@STYLE_HAS_BACKGROUND_ALPHA = common dso_local global i32 0, align 4
@STYLE_BACKGROUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"outline-color\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"outline-width\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"font-family\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"font-style\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@STYLE_ITALIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"font-weight\00", align 1
@STYLE_BOLD = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@TYPE_NONE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"font-size\00", align 1
@TYPE_PIXELS = common dso_local global i64 0, align 8
@TYPE_EMS = common dso_local global i64 0, align 8
@TYPE_PERCENT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"white-space\00", align 1
@STYLE_WRAP_DEFAULT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"nowrap\00", align 1
@STYLE_WRAP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @webvtt_FillStyleFromCssDeclaration(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = icmp ne %struct.TYPE_21__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %471

16:                                               ; preds = %12
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %471

24:                                               ; preds = %16
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_19__* %5 to i8*
  %33 = bitcast %struct.TYPE_19__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 24, i1 false)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 5
  %46 = load i32, i32* @STYLE_HAS_FONT_COLOR, align 4
  %47 = load i32, i32* @STYLE_HAS_FONT_ALPHA, align 4
  %48 = call i32 @Color(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, i32* %41, i32* %43, i32* %45, i32 %46, i32 %47)
  br label %471

49:                                               ; preds = %24
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TYPE_STRING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @STYLE_STRIKEOUT, align 4
  %67 = load i32, i32* @STYLE_UNDERLINE, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %113

79:                                               ; preds = %60
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @STYLE_STRIKEOUT, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %112

95:                                               ; preds = %79
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @STYLE_UNDERLINE, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %100, %95
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %65
  br label %114

114:                                              ; preds = %113, %55
  br label %470

115:                                              ; preds = %49
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %141, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = call i32 @ShadowDrop(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, %struct.TYPE_21__* %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %140

130:                                              ; preds = %121
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = call i32 @ShadowColor(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %137, %struct.TYPE_21__* %138)
  br label %140

140:                                              ; preds = %130, %121
  br label %469

141:                                              ; preds = %115
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcasecmp(i8* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 5
  %154 = load i32, i32* @STYLE_HAS_BACKGROUND_COLOR, align 4
  %155 = load i32, i32* @STYLE_HAS_BACKGROUND_ALPHA, align 4
  %156 = call i32 @Color(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, i32* %149, i32* %151, i32* %153, i32 %154, i32 %155)
  %157 = load i32, i32* @STYLE_BACKGROUND, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %468

167:                                              ; preds = %141
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strcasecmp(i8* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %175 = call i32 @OutlineColor(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, %struct.TYPE_21__* %174)
  br label %467

176:                                              ; preds = %167
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %184 = call i32 @OutlineWidth(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, %struct.TYPE_21__* %183)
  br label %466

185:                                              ; preds = %176
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strcasecmp(i8* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = call i32 @OutlineWidth(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %5, %struct.TYPE_21__* %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 3
  br i1 %199, label %200, label %210

200:                                              ; preds = %191
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i64 2
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = call i32 @OutlineColor(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %207, %struct.TYPE_21__* %208)
  br label %210

210:                                              ; preds = %200, %191
  br label %465

211:                                              ; preds = %185
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @strcasecmp(i8* %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %256, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TYPE_STRING, align 8
  %221 = icmp sge i64 %219, %220
  br i1 %221, label %222, label %255

222:                                              ; preds = %217
  store i8* null, i8** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i8* @strchr(i8* %224, i8 signext 44)
  store i8* %225, i8** %7, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = ptrtoint i8* %231 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = add nsw i64 %236, 1
  %238 = trunc i64 %237 to i32
  %239 = call i8* @strndup(i8* %230, i32 %238)
  store i8* %239, i8** %6, align 8
  br label %244

240:                                              ; preds = %222
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i8* @strdup(i8* %242)
  store i8* %243, i8** %6, align 8
  br label %244

244:                                              ; preds = %240, %228
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @free(i8* %247)
  %249 = load i8*, i8** %6, align 8
  %250 = call i8* @vlc_css_unquoted(i8* %249)
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = call i32 @free(i8* %253)
  br label %255

255:                                              ; preds = %244, %217
  br label %464

256:                                              ; preds = %211
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @strcasecmp(i8* %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %303, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @TYPE_STRING, align 8
  %266 = icmp sge i64 %264, %265
  br i1 %266, label %267, label %302

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @strcasecmp(i8* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %267
  %273 = load i32, i32* @STYLE_ITALIC, align 4
  %274 = xor i32 %273, -1
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %301

284:                                              ; preds = %267
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @strcasecmp(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* @STYLE_ITALIC, align 4
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %289, %284
  br label %301

301:                                              ; preds = %300, %272
  br label %302

302:                                              ; preds = %301, %262
  br label %463

303:                                              ; preds = %256
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @strcasecmp(i8* %306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %378, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @TYPE_STRING, align 8
  %313 = icmp sge i64 %311, %312
  br i1 %313, label %314, label %348

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @strcasecmp(i8* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %331, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* @STYLE_BOLD, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, %321
  store i32 %325, i32* %323, align 8
  %326 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %319, %314
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @strcasecmp(i8* %333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %347, label %336

336:                                              ; preds = %331
  %337 = load i32, i32* @STYLE_BOLD, align 4
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  %342 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %336, %331
  br label %377

348:                                              ; preds = %309
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @TYPE_NONE, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %376

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %355 = load double, double* %354, align 8
  %356 = fcmp oge double %355, 7.000000e+02
  br i1 %356, label %357, label %363

357:                                              ; preds = %353
  %358 = load i32, i32* @STYLE_BOLD, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %370

363:                                              ; preds = %353
  %364 = load i32, i32* @STYLE_BOLD, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = and i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %363, %357
  %371 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %370, %348
  br label %377

377:                                              ; preds = %376, %347
  br label %462

378:                                              ; preds = %303
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @strcasecmp(i8* %381, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %421, label %384

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @TYPE_PIXELS, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %391 = load double, double* %390, align 8
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 2
  store double %391, double* %393, align 8
  br label %420

394:                                              ; preds = %384
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @TYPE_EMS, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %406

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %401 = load double, double* %400, align 8
  %402 = fmul double %401, 5.330000e+00
  %403 = fdiv double %402, 1.060000e+00
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %404, i32 0, i32 3
  store double %403, double* %405, align 8
  br label %419

406:                                              ; preds = %394
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @TYPE_PERCENT, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %418

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %413 = load double, double* %412, align 8
  %414 = fmul double %413, 5.330000e+00
  %415 = fdiv double %414, 1.000000e+02
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 3
  store double %415, double* %417, align 8
  br label %418

418:                                              ; preds = %411, %406
  br label %419

419:                                              ; preds = %418, %399
  br label %420

420:                                              ; preds = %419, %389
  br label %461

421:                                              ; preds = %378
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 @strcasecmp(i8* %424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %421
  br label %460

428:                                              ; preds = %421
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @strcasecmp(i8* %431, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %459, label %434

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @TYPE_STRING, align 8
  %438 = icmp sge i64 %436, %437
  br i1 %438, label %439, label %458

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @strcasecmp(i8* %441, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %448, label %444

444:                                              ; preds = %439
  %445 = load i32, i32* @STYLE_WRAP_DEFAULT, align 4
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 4
  store i32 %445, i32* %447, align 8
  br label %448

448:                                              ; preds = %444, %439
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @strcasecmp(i8* %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %448
  %454 = load i32, i32* @STYLE_WRAP_NONE, align 4
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %455, i32 0, i32 4
  store i32 %454, i32* %456, align 8
  br label %457

457:                                              ; preds = %453, %448
  br label %458

458:                                              ; preds = %457, %434
  br label %459

459:                                              ; preds = %458, %428
  br label %460

460:                                              ; preds = %459, %427
  br label %461

461:                                              ; preds = %460, %420
  br label %462

462:                                              ; preds = %461, %377
  br label %463

463:                                              ; preds = %462, %302
  br label %464

464:                                              ; preds = %463, %255
  br label %465

465:                                              ; preds = %464, %210
  br label %466

466:                                              ; preds = %465, %182
  br label %467

467:                                              ; preds = %466, %173
  br label %468

468:                                              ; preds = %467, %147
  br label %469

469:                                              ; preds = %468, %140
  br label %470

470:                                              ; preds = %469, %114
  br label %471

471:                                              ; preds = %15, %23, %470, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @Color(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @ShadowDrop(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__*) #2

declare dso_local i32 @ShadowColor(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__*) #2

declare dso_local i32 @OutlineColor(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__*) #2

declare dso_local i32 @OutlineWidth(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, %struct.TYPE_21__*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strndup(i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @vlc_css_unquoted(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
