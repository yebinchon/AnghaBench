; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillTextStyle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FillTextStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"tts:fontFamily\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tts:opacity\00", align 1
@STYLE_HAS_BACKGROUND_ALPHA = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_ALPHA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"tts:color\00", align 1
@STYLE_HAS_FONT_COLOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"tts:backgroundColor\00", align 1
@STYLE_HAS_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@STYLE_BACKGROUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"tts:fontStyle\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oblique\00", align 1
@STYLE_ITALIC = common dso_local global i32 0, align 4
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"tts:fontWeight\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@STYLE_BOLD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"tts:textDecoration\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@STYLE_UNDERLINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"noUnderline\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"lineThrough\00", align 1
@STYLE_STRIKEOUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"noLineThrough\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"tts:textOutline\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_3__*)* @FillTextStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillTextStyle(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcasecmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %271

28:                                               ; preds = %3
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @atoi(i8* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @STYLE_HAS_BACKGROUND_ALPHA, align 4
  %44 = load i32, i32* @STYLE_HAS_FONT_ALPHA, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %270

50:                                               ; preds = %28
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @vlc_html_color(i8* %55, i32* null)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 16777215
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, -16777216
  %63 = lshr i32 %62, 24
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @STYLE_HAS_FONT_COLOR, align 4
  %67 = load i32, i32* @STYLE_HAS_FONT_ALPHA, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %269

73:                                               ; preds = %50
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strcasecmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @vlc_html_color(i8* %78, i32* null)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 16777215
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, -16777216
  %86 = lshr i32 %85, 24
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @STYLE_HAS_BACKGROUND_COLOR, align 4
  %90 = load i32, i32* @STYLE_HAS_BACKGROUND_ALPHA, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @STYLE_BACKGROUND, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %268

101:                                              ; preds = %73
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @strcasecmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %132, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @STYLE_ITALIC, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %126

119:                                              ; preds = %109
  %120 = load i32, i32* @STYLE_ITALIC, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %113
  %127 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %267

132:                                              ; preds = %101
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @strcasecmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %159, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @STYLE_BOLD, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %153

146:                                              ; preds = %136
  %147 = load i32, i32* @STYLE_BOLD, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %140
  %154 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %266

159:                                              ; preds = %132
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @strcasecmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %213, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @STYLE_UNDERLINE, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %185

173:                                              ; preds = %163
  %174 = load i8*, i8** %5, align 8
  %175 = call i32 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @STYLE_UNDERLINE, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %173
  br label %185

185:                                              ; preds = %184, %167
  %186 = load i8*, i8** %5, align 8
  %187 = call i32 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @STYLE_STRIKEOUT, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %207

195:                                              ; preds = %185
  %196 = load i8*, i8** %5, align 8
  %197 = call i32 @strcasecmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* @STYLE_STRIKEOUT, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %195
  br label %207

207:                                              ; preds = %206, %189
  %208 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %265

213:                                              ; preds = %159
  %214 = load i8*, i8** %4, align 8
  %215 = call i32 @strcasecmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %264, label %217

217:                                              ; preds = %213
  %218 = load i8*, i8** %5, align 8
  %219 = call i8* @strdup(i8* %218)
  store i8* %219, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i8*, i8** %9, align 8
  %224 = call i8* @strtok_r(i8* %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %10)
  br label %226

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %222
  %227 = phi i8* [ %224, %222 ], [ null, %225 ]
  store i8* %227, i8** %11, align 8
  %228 = load i8*, i8** %11, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %261

230:                                              ; preds = %226
  store i32 0, i32* %12, align 4
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 @vlc_html_color(i8* %231, i32* %12)
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %260

235:                                              ; preds = %230
  %236 = load i32, i32* %13, align 4
  %237 = and i32 %236, 16777215
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %13, align 4
  %241 = and i32 %240, -16777216
  %242 = lshr i32 %241, 24
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 8
  %245 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %10)
  store i8* %245, i8** %11, align 8
  %246 = load i8*, i8** %11, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %259

248:                                              ; preds = %235
  store i8* null, i8** %14, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 @strtol(i8* %249, i8** %14, i32 10)
  store i32 %250, i32* %15, align 4
  %251 = load i8*, i8** %14, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = icmp ne i8* %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load i32, i32* %15, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 8
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %248
  br label %259

259:                                              ; preds = %258, %235
  br label %260

260:                                              ; preds = %259, %230
  br label %261

261:                                              ; preds = %260, %226
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 @free(i8* %262)
  br label %264

264:                                              ; preds = %261, %213
  br label %265

265:                                              ; preds = %264, %207
  br label %266

266:                                              ; preds = %265, %153
  br label %267

267:                                              ; preds = %266, %126
  br label %268

268:                                              ; preds = %267, %77
  br label %269

269:                                              ; preds = %268, %54
  br label %270

270:                                              ; preds = %269, %32
  br label %271

271:                                              ; preds = %270, %19
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @vlc_html_color(i8*, i32*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
