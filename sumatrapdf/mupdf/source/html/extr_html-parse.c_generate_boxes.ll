; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_generate_boxes.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_generate_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i64, i8, i32, %struct.TYPE_46__*, i8*, i8*, %struct.TYPE_45__* }
%struct.TYPE_46__ = type { i32, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32, i8* }
%struct.TYPE_42__ = type { i32, i8* }
%struct.TYPE_47__ = type { i64, %struct.TYPE_47__* }
%struct.genstate = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@BOX_INLINE = common dso_local global i64 0, align 8
@BOX_FLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@N_PERCENT = common dso_local global i8* null, align 8
@N_LENGTH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"l:href\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"xlink:href\00", align 1
@DIS_BLOCK = common dso_local global i32 0, align 4
@DIS_INLINE = common dso_local global i32 0, align 4
@DIS_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@FZ_BIDI_NEUTRAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@FZ_BIDI_RTL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"ltr\00", align 1
@FZ_BIDI_LTR = common dso_local global i32 0, align 4
@DEFAULT_DIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@DIS_INLINE_BLOCK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"subtitle\00", align 1
@DIS_LIST_ITEM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@DIS_TABLE = common dso_local global i32 0, align 4
@DIS_TABLE_ROW = common dso_local global i32 0, align 4
@DIS_TABLE_CELL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"unknown box display type\00", align 1
@BOX_BLOCK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"ol\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@WS_COLLAPSE = common dso_local global i32 0, align 4
@N_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_45__* (i32*, i32*, %struct.TYPE_45__*, %struct.TYPE_47__*, i32, i32, i32, i32, %struct.genstate*)* @generate_boxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_45__* @generate_boxes(i32* %0, i32* %1, %struct.TYPE_45__* %2, %struct.TYPE_47__* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.genstate* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_45__*, align 8
  %13 = alloca %struct.TYPE_47__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.genstate*, align 8
  %19 = alloca %struct.TYPE_47__, align 8
  %20 = alloca %struct.TYPE_45__*, align 8
  %21 = alloca %struct.TYPE_45__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_46__, align 8
  %25 = alloca %struct.TYPE_45__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_45__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca %struct.TYPE_46__, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_45__* %2, %struct.TYPE_45__** %12, align 8
  store %struct.TYPE_47__* %3, %struct.TYPE_47__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.genstate* %8, %struct.genstate** %18, align 8
  br label %45

45:                                               ; preds = %900, %9
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %903

48:                                               ; preds = %45
  %49 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %19, i32 0, i32 1
  store %struct.TYPE_47__* %49, %struct.TYPE_47__** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %19, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i8* @fz_xml_tag(i32* %52)
  store i8* %53, i8** %22, align 8
  %54 = load i8*, i8** %22, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %815

56:                                               ; preds = %48
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.genstate*, %struct.genstate** %18, align 8
  %59 = getelementptr inbounds %struct.genstate, %struct.genstate* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @fz_match_css(i32* %57, %struct.TYPE_47__* %19, i32 %60, i32* %61)
  %63 = call i32 @fz_get_css_match_display(%struct.TYPE_47__* %19)
  store i32 %63, i32* %23, align 4
  %64 = load i8*, i8** %22, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 98
  br i1 %68, label %69, label %136

69:                                               ; preds = %56
  %70 = load i8*, i8** %22, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 114
  br i1 %74, label %75, label %136

75:                                               ; preds = %69
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %75
  %82 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BOX_INLINE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  store %struct.TYPE_45__* %88, %struct.TYPE_45__** %25, align 8
  br label %89

89:                                               ; preds = %95, %87
  %90 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BOX_FLOW, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %97 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_45__*, %struct.TYPE_45__** %97, align 8
  store %struct.TYPE_45__* %98, %struct.TYPE_45__** %25, align 8
  br label %89

99:                                               ; preds = %89
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.genstate*, %struct.genstate** %18, align 8
  %102 = getelementptr inbounds %struct.genstate, %struct.genstate* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %106 = call i32 @add_flow_break(i32* %100, i32 %103, %struct.TYPE_45__* %104, %struct.TYPE_45__* %105)
  br label %133

107:                                              ; preds = %81
  %108 = load i32*, i32** %10, align 8
  %109 = load %struct.genstate*, %struct.genstate** %18, align 8
  %110 = getelementptr inbounds %struct.genstate, %struct.genstate* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call %struct.TYPE_45__* @new_short_box(i32* %108, i32 %111, i32 %112)
  store %struct.TYPE_45__* %113, %struct.TYPE_45__** %20, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.genstate*, %struct.genstate** %18, align 8
  %116 = getelementptr inbounds %struct.genstate, %struct.genstate* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @fz_apply_css_style(i32* %114, i32 %117, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.genstate*, %struct.genstate** %18, align 8
  %121 = getelementptr inbounds %struct.genstate, %struct.genstate* %120, i32 0, i32 3
  %122 = load %struct.genstate*, %struct.genstate** %18, align 8
  %123 = getelementptr inbounds %struct.genstate, %struct.genstate* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @fz_css_enlist(i32* %119, %struct.TYPE_46__* %24, i32* %121, i32 %124)
  %126 = bitcast i8* %125 to %struct.TYPE_46__*
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %127, i32 0, i32 3
  store %struct.TYPE_46__* %126, %struct.TYPE_46__** %128, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %131 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %132 = call %struct.TYPE_45__* @insert_break_box(i32* %129, %struct.TYPE_45__* %130, %struct.TYPE_45__* %131)
  store %struct.TYPE_45__* %132, %struct.TYPE_45__** %12, align 8
  br label %133

133:                                              ; preds = %107, %99
  %134 = load %struct.genstate*, %struct.genstate** %18, align 8
  %135 = getelementptr inbounds %struct.genstate, %struct.genstate* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %814

136:                                              ; preds = %75, %69, %56
  %137 = load i8*, i8** %22, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 105
  br i1 %141, label %142, label %255

142:                                              ; preds = %136
  %143 = load i8*, i8** %22, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 109
  br i1 %147, label %148, label %255

148:                                              ; preds = %142
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 103
  br i1 %153, label %154, label %255

154:                                              ; preds = %148
  %155 = load i8*, i8** %22, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 3
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %255

160:                                              ; preds = %154
  %161 = load i32*, i32** %11, align 8
  %162 = call i8* @fz_xml_att(i32* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %162, i8** %26, align 8
  %163 = load i8*, i8** %26, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %254

165:                                              ; preds = %160
  %166 = load i32*, i32** %11, align 8
  %167 = call i8* @fz_xml_att(i32* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %167, i8** %29, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = call i8* @fz_xml_att(i32* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %169, i8** %30, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load %struct.genstate*, %struct.genstate** %18, align 8
  %172 = getelementptr inbounds %struct.genstate, %struct.genstate* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call %struct.TYPE_45__* @new_short_box(i32* %170, i32 %173, i32 %174)
  store %struct.TYPE_45__* %175, %struct.TYPE_45__** %20, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load %struct.genstate*, %struct.genstate** %18, align 8
  %178 = getelementptr inbounds %struct.genstate, %struct.genstate* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @fz_apply_css_style(i32* %176, i32 %179, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %181 = load i8*, i8** %29, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %202

183:                                              ; preds = %165
  %184 = load i8*, i8** %29, align 8
  %185 = call i32 @fz_atoi(i8* %184)
  store i32 %185, i32* %27, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %183
  %188 = load i32, i32* %27, align 4
  %189 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i8*, i8** %29, align 8
  %192 = call i64 @strchr(i8* %191, i8 signext 37)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i8*, i8** @N_PERCENT, align 8
  br label %198

196:                                              ; preds = %187
  %197 = load i8*, i8** @N_LENGTH, align 8
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i8* [ %195, %194 ], [ %197, %196 ]
  %200 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %198, %183, %165
  %203 = load i8*, i8** %30, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load i8*, i8** %30, align 8
  %207 = call i32 @fz_atoi(i8* %206)
  store i32 %207, i32* %28, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %205
  %210 = load i32, i32* %28, align 4
  %211 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** %30, align 8
  %214 = call i64 @strchr(i8* %213, i8 signext 37)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i8*, i8** @N_PERCENT, align 8
  br label %220

218:                                              ; preds = %209
  %219 = load i8*, i8** @N_LENGTH, align 8
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i8* [ %217, %216 ], [ %219, %218 ]
  %222 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %220, %205, %202
  %225 = load i32*, i32** %10, align 8
  %226 = load %struct.genstate*, %struct.genstate** %18, align 8
  %227 = getelementptr inbounds %struct.genstate, %struct.genstate* %226, i32 0, i32 3
  %228 = load %struct.genstate*, %struct.genstate** %18, align 8
  %229 = getelementptr inbounds %struct.genstate, %struct.genstate* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @fz_css_enlist(i32* %225, %struct.TYPE_46__* %24, i32* %227, i32 %230)
  %232 = bitcast i8* %231 to %struct.TYPE_46__*
  %233 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %233, i32 0, i32 3
  store %struct.TYPE_46__* %232, %struct.TYPE_46__** %234, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %237 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %238 = load i32, i32* %16, align 4
  %239 = load %struct.genstate*, %struct.genstate** %18, align 8
  %240 = call i32 @insert_inline_box(i32* %235, %struct.TYPE_45__* %236, %struct.TYPE_45__* %237, i32 %238, %struct.genstate* %239)
  %241 = load i32*, i32** %10, align 8
  %242 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = load %struct.genstate*, %struct.genstate** %18, align 8
  %245 = getelementptr inbounds %struct.genstate, %struct.genstate* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.genstate*, %struct.genstate** %18, align 8
  %248 = getelementptr inbounds %struct.genstate, %struct.genstate* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = load i8*, i8** %26, align 8
  %251 = call i32 @load_html_image(i32* %243, i32 %246, i32 %249, i8* %250)
  %252 = load %struct.genstate*, %struct.genstate** %18, align 8
  %253 = call i32 @generate_image(i32* %241, %struct.TYPE_45__* %242, i32 %251, %struct.genstate* %252)
  br label %254

254:                                              ; preds = %224, %160
  br label %813

255:                                              ; preds = %154, %148, %142, %136
  %256 = load i8*, i8** %22, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 0
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 115
  br i1 %260, label %261, label %320

261:                                              ; preds = %255
  %262 = load i8*, i8** %22, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 118
  br i1 %266, label %267, label %320

267:                                              ; preds = %261
  %268 = load i8*, i8** %22, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 103
  br i1 %272, label %273, label %320

273:                                              ; preds = %267
  %274 = load i8*, i8** %22, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 3
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %320

279:                                              ; preds = %273
  %280 = load i32*, i32** %10, align 8
  %281 = load %struct.genstate*, %struct.genstate** %18, align 8
  %282 = getelementptr inbounds %struct.genstate, %struct.genstate* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = call %struct.TYPE_45__* @new_short_box(i32* %280, i32 %283, i32 %284)
  store %struct.TYPE_45__* %285, %struct.TYPE_45__** %20, align 8
  %286 = load i32*, i32** %10, align 8
  %287 = load %struct.genstate*, %struct.genstate** %18, align 8
  %288 = getelementptr inbounds %struct.genstate, %struct.genstate* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @fz_apply_css_style(i32* %286, i32 %289, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %291 = load i32*, i32** %10, align 8
  %292 = load %struct.genstate*, %struct.genstate** %18, align 8
  %293 = getelementptr inbounds %struct.genstate, %struct.genstate* %292, i32 0, i32 3
  %294 = load %struct.genstate*, %struct.genstate** %18, align 8
  %295 = getelementptr inbounds %struct.genstate, %struct.genstate* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @fz_css_enlist(i32* %291, %struct.TYPE_46__* %24, i32* %293, i32 %296)
  %298 = bitcast i8* %297 to %struct.TYPE_46__*
  %299 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %299, i32 0, i32 3
  store %struct.TYPE_46__* %298, %struct.TYPE_46__** %300, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %303 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %304 = load i32, i32* %16, align 4
  %305 = load %struct.genstate*, %struct.genstate** %18, align 8
  %306 = call i32 @insert_inline_box(i32* %301, %struct.TYPE_45__* %302, %struct.TYPE_45__* %303, i32 %304, %struct.genstate* %305)
  %307 = load i32*, i32** %10, align 8
  %308 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %309 = load i32*, i32** %10, align 8
  %310 = load %struct.genstate*, %struct.genstate** %18, align 8
  %311 = getelementptr inbounds %struct.genstate, %struct.genstate* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.genstate*, %struct.genstate** %18, align 8
  %314 = getelementptr inbounds %struct.genstate, %struct.genstate* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 8
  %316 = load i32*, i32** %11, align 8
  %317 = call i32 @load_svg_image(i32* %309, i32 %312, i32 %315, i32* %316)
  %318 = load %struct.genstate*, %struct.genstate** %18, align 8
  %319 = call i32 @generate_image(i32* %307, %struct.TYPE_45__* %308, i32 %317, %struct.genstate* %318)
  br label %812

320:                                              ; preds = %273, %267, %261, %255
  %321 = load %struct.genstate*, %struct.genstate** %18, align 8
  %322 = getelementptr inbounds %struct.genstate, %struct.genstate* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %493

325:                                              ; preds = %320
  %326 = load i8*, i8** %22, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 0
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 105
  br i1 %330, label %331, label %493

331:                                              ; preds = %325
  %332 = load i8*, i8** %22, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 109
  br i1 %336, label %337, label %493

337:                                              ; preds = %331
  %338 = load i8*, i8** %22, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 2
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 97
  br i1 %342, label %343, label %493

343:                                              ; preds = %337
  %344 = load i8*, i8** %22, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 3
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 103
  br i1 %348, label %349, label %493

349:                                              ; preds = %343
  %350 = load i8*, i8** %22, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 4
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 101
  br i1 %354, label %355, label %493

355:                                              ; preds = %349
  %356 = load i8*, i8** %22, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 5
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %493

361:                                              ; preds = %355
  %362 = load i32*, i32** %11, align 8
  %363 = call i8* @fz_xml_att(i32* %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %363, i8** %31, align 8
  %364 = load i8*, i8** %31, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %369, label %366

366:                                              ; preds = %361
  %367 = load i32*, i32** %11, align 8
  %368 = call i8* @fz_xml_att(i32* %367, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %368, i8** %31, align 8
  br label %369

369:                                              ; preds = %366, %361
  %370 = load i8*, i8** %31, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %492

372:                                              ; preds = %369
  %373 = load i8*, i8** %31, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 0
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 35
  br i1 %377, label %378, label %492

378:                                              ; preds = %372
  %379 = load i32*, i32** %10, align 8
  %380 = load %struct.genstate*, %struct.genstate** %18, align 8
  %381 = getelementptr inbounds %struct.genstate, %struct.genstate* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 4
  %383 = load i8*, i8** %31, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 1
  %385 = call i32* @fz_tree_lookup(i32* %379, i32 %382, i8* %384)
  store i32* %385, i32** %32, align 8
  %386 = load i32, i32* %23, align 4
  %387 = load i32, i32* @DIS_BLOCK, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %451

389:                                              ; preds = %378
  %390 = load i32*, i32** %10, align 8
  %391 = load %struct.genstate*, %struct.genstate** %18, align 8
  %392 = getelementptr inbounds %struct.genstate, %struct.genstate* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %16, align 4
  %395 = call %struct.TYPE_45__* @new_box(i32* %390, i32 %393, i32 %394)
  store %struct.TYPE_45__* %395, %struct.TYPE_45__** %20, align 8
  %396 = load i32*, i32** %10, align 8
  %397 = call i32 @fz_default_css_style(i32* %396, %struct.TYPE_46__* %24)
  %398 = load i32*, i32** %10, align 8
  %399 = load %struct.genstate*, %struct.genstate** %18, align 8
  %400 = getelementptr inbounds %struct.genstate, %struct.genstate* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @fz_apply_css_style(i32* %398, i32 %401, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %403 = load i32*, i32** %10, align 8
  %404 = load %struct.genstate*, %struct.genstate** %18, align 8
  %405 = getelementptr inbounds %struct.genstate, %struct.genstate* %404, i32 0, i32 3
  %406 = load %struct.genstate*, %struct.genstate** %18, align 8
  %407 = getelementptr inbounds %struct.genstate, %struct.genstate* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = call i8* @fz_css_enlist(i32* %403, %struct.TYPE_46__* %24, i32* %405, i32 %408)
  %410 = bitcast i8* %409 to %struct.TYPE_46__*
  %411 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %411, i32 0, i32 3
  store %struct.TYPE_46__* %410, %struct.TYPE_46__** %412, align 8
  %413 = load i32*, i32** %10, align 8
  %414 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %416 = call %struct.TYPE_45__* @insert_block_box(i32* %413, %struct.TYPE_45__* %414, %struct.TYPE_45__* %415)
  store %struct.TYPE_45__* %416, %struct.TYPE_45__** %12, align 8
  %417 = load i32*, i32** %10, align 8
  %418 = load %struct.genstate*, %struct.genstate** %18, align 8
  %419 = getelementptr inbounds %struct.genstate, %struct.genstate* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %16, align 4
  %422 = call %struct.TYPE_45__* @new_short_box(i32* %417, i32 %420, i32 %421)
  store %struct.TYPE_45__* %422, %struct.TYPE_45__** %33, align 8
  %423 = load i32*, i32** %10, align 8
  %424 = load %struct.genstate*, %struct.genstate** %18, align 8
  %425 = getelementptr inbounds %struct.genstate, %struct.genstate* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @fz_apply_css_style(i32* %423, i32 %426, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %428 = load i32*, i32** %10, align 8
  %429 = load %struct.genstate*, %struct.genstate** %18, align 8
  %430 = getelementptr inbounds %struct.genstate, %struct.genstate* %429, i32 0, i32 3
  %431 = load %struct.genstate*, %struct.genstate** %18, align 8
  %432 = getelementptr inbounds %struct.genstate, %struct.genstate* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i8* @fz_css_enlist(i32* %428, %struct.TYPE_46__* %24, i32* %430, i32 %433)
  %435 = bitcast i8* %434 to %struct.TYPE_46__*
  %436 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %437 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %436, i32 0, i32 3
  store %struct.TYPE_46__* %435, %struct.TYPE_46__** %437, align 8
  %438 = load i32*, i32** %10, align 8
  %439 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %440 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %441 = load i32, i32* %16, align 4
  %442 = load %struct.genstate*, %struct.genstate** %18, align 8
  %443 = call i32 @insert_inline_box(i32* %438, %struct.TYPE_45__* %439, %struct.TYPE_45__* %440, i32 %441, %struct.genstate* %442)
  %444 = load i32*, i32** %10, align 8
  %445 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %446 = load i32*, i32** %10, align 8
  %447 = load i32*, i32** %32, align 8
  %448 = call i32 @fz_keep_image(i32* %446, i32* %447)
  %449 = load %struct.genstate*, %struct.genstate** %18, align 8
  %450 = call i32 @generate_image(i32* %444, %struct.TYPE_45__* %445, i32 %448, %struct.genstate* %449)
  br label %491

451:                                              ; preds = %378
  %452 = load i32, i32* %23, align 4
  %453 = load i32, i32* @DIS_INLINE, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %490

455:                                              ; preds = %451
  %456 = load i32*, i32** %10, align 8
  %457 = load %struct.genstate*, %struct.genstate** %18, align 8
  %458 = getelementptr inbounds %struct.genstate, %struct.genstate* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %16, align 4
  %461 = call %struct.TYPE_45__* @new_short_box(i32* %456, i32 %459, i32 %460)
  store %struct.TYPE_45__* %461, %struct.TYPE_45__** %20, align 8
  %462 = load i32*, i32** %10, align 8
  %463 = load %struct.genstate*, %struct.genstate** %18, align 8
  %464 = getelementptr inbounds %struct.genstate, %struct.genstate* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @fz_apply_css_style(i32* %462, i32 %465, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %467 = load i32*, i32** %10, align 8
  %468 = load %struct.genstate*, %struct.genstate** %18, align 8
  %469 = getelementptr inbounds %struct.genstate, %struct.genstate* %468, i32 0, i32 3
  %470 = load %struct.genstate*, %struct.genstate** %18, align 8
  %471 = getelementptr inbounds %struct.genstate, %struct.genstate* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i8* @fz_css_enlist(i32* %467, %struct.TYPE_46__* %24, i32* %469, i32 %472)
  %474 = bitcast i8* %473 to %struct.TYPE_46__*
  %475 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %476 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %475, i32 0, i32 3
  store %struct.TYPE_46__* %474, %struct.TYPE_46__** %476, align 8
  %477 = load i32*, i32** %10, align 8
  %478 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %479 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %480 = load i32, i32* %16, align 4
  %481 = load %struct.genstate*, %struct.genstate** %18, align 8
  %482 = call i32 @insert_inline_box(i32* %477, %struct.TYPE_45__* %478, %struct.TYPE_45__* %479, i32 %480, %struct.genstate* %481)
  %483 = load i32*, i32** %10, align 8
  %484 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %485 = load i32*, i32** %10, align 8
  %486 = load i32*, i32** %32, align 8
  %487 = call i32 @fz_keep_image(i32* %485, i32* %486)
  %488 = load %struct.genstate*, %struct.genstate** %18, align 8
  %489 = call i32 @generate_image(i32* %483, %struct.TYPE_45__* %484, i32 %487, %struct.genstate* %488)
  br label %490

490:                                              ; preds = %455, %451
  br label %491

491:                                              ; preds = %490, %389
  br label %492

492:                                              ; preds = %491, %372, %369
  br label %811

493:                                              ; preds = %355, %349, %343, %337, %331, %325, %320
  %494 = load i32, i32* %23, align 4
  %495 = load i32, i32* @DIS_NONE, align 4
  %496 = icmp ne i32 %494, %495
  br i1 %496, label %497, label %810

497:                                              ; preds = %493
  %498 = load i32, i32* %16, align 4
  store i32 %498, i32* %38, align 4
  %499 = load i32, i32* %17, align 4
  store i32 %499, i32* %39, align 4
  %500 = load i32*, i32** %11, align 8
  %501 = call i8* @fz_xml_att(i32* %500, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %501, i8** %34, align 8
  %502 = load i8*, i8** %34, align 8
  %503 = icmp ne i8* %502, null
  br i1 %503, label %504, label %527

504:                                              ; preds = %497
  %505 = load i8*, i8** %34, align 8
  %506 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %510, label %508

508:                                              ; preds = %504
  %509 = load i32, i32* @FZ_BIDI_NEUTRAL, align 4
  store i32 %509, i32* %38, align 4
  br label %526

510:                                              ; preds = %504
  %511 = load i8*, i8** %34, align 8
  %512 = call i32 @strcmp(i8* %511, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %516, label %514

514:                                              ; preds = %510
  %515 = load i32, i32* @FZ_BIDI_RTL, align 4
  store i32 %515, i32* %38, align 4
  br label %525

516:                                              ; preds = %510
  %517 = load i8*, i8** %34, align 8
  %518 = call i32 @strcmp(i8* %517, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  %521 = load i32, i32* @FZ_BIDI_LTR, align 4
  store i32 %521, i32* %38, align 4
  br label %524

522:                                              ; preds = %516
  %523 = load i32, i32* @DEFAULT_DIR, align 4
  store i32 %523, i32* %38, align 4
  br label %524

524:                                              ; preds = %522, %520
  br label %525

525:                                              ; preds = %524, %514
  br label %526

526:                                              ; preds = %525, %508
  br label %527

527:                                              ; preds = %526, %497
  %528 = load i32*, i32** %11, align 8
  %529 = call i8* @fz_xml_att(i32* %528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %529, i8** %35, align 8
  %530 = load i8*, i8** %35, align 8
  %531 = icmp ne i8* %530, null
  br i1 %531, label %532, label %535

532:                                              ; preds = %527
  %533 = load i8*, i8** %35, align 8
  %534 = call i32 @fz_text_language_from_string(i8* %533)
  store i32 %534, i32* %39, align 4
  br label %535

535:                                              ; preds = %532, %527
  %536 = load i32, i32* %23, align 4
  %537 = load i32, i32* @DIS_INLINE, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %546

539:                                              ; preds = %535
  %540 = load i32*, i32** %10, align 8
  %541 = load %struct.genstate*, %struct.genstate** %18, align 8
  %542 = getelementptr inbounds %struct.genstate, %struct.genstate* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* %38, align 4
  %545 = call %struct.TYPE_45__* @new_short_box(i32* %540, i32 %543, i32 %544)
  store %struct.TYPE_45__* %545, %struct.TYPE_45__** %20, align 8
  br label %553

546:                                              ; preds = %535
  %547 = load i32*, i32** %10, align 8
  %548 = load %struct.genstate*, %struct.genstate** %18, align 8
  %549 = getelementptr inbounds %struct.genstate, %struct.genstate* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* %38, align 4
  %552 = call %struct.TYPE_45__* @new_box(i32* %547, i32 %550, i32 %551)
  store %struct.TYPE_45__* %552, %struct.TYPE_45__** %20, align 8
  br label %553

553:                                              ; preds = %546, %539
  %554 = load i32*, i32** %10, align 8
  %555 = call i32 @fz_default_css_style(i32* %554, %struct.TYPE_46__* %24)
  %556 = load i32*, i32** %10, align 8
  %557 = load %struct.genstate*, %struct.genstate** %18, align 8
  %558 = getelementptr inbounds %struct.genstate, %struct.genstate* %557, i32 0, i32 5
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @fz_apply_css_style(i32* %556, i32 %559, %struct.TYPE_46__* %24, %struct.TYPE_47__* %19)
  %561 = load i32*, i32** %10, align 8
  %562 = load %struct.genstate*, %struct.genstate** %18, align 8
  %563 = getelementptr inbounds %struct.genstate, %struct.genstate* %562, i32 0, i32 3
  %564 = load %struct.genstate*, %struct.genstate** %18, align 8
  %565 = getelementptr inbounds %struct.genstate, %struct.genstate* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = call i8* @fz_css_enlist(i32* %561, %struct.TYPE_46__* %24, i32* %563, i32 %566)
  %568 = bitcast i8* %567 to %struct.TYPE_46__*
  %569 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %570 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %569, i32 0, i32 3
  store %struct.TYPE_46__* %568, %struct.TYPE_46__** %570, align 8
  %571 = load i32*, i32** %11, align 8
  %572 = call i8* @fz_xml_att(i32* %571, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %572, i8** %36, align 8
  %573 = load i8*, i8** %36, align 8
  %574 = icmp ne i8* %573, null
  br i1 %574, label %575, label %584

575:                                              ; preds = %553
  %576 = load i32*, i32** %10, align 8
  %577 = load %struct.genstate*, %struct.genstate** %18, align 8
  %578 = getelementptr inbounds %struct.genstate, %struct.genstate* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = load i8*, i8** %36, align 8
  %581 = call i8* @fz_pool_strdup(i32* %576, i32 %579, i8* %580)
  %582 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %583 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %582, i32 0, i32 5
  store i8* %581, i8** %583, align 8
  br label %584

584:                                              ; preds = %575, %553
  %585 = load i32, i32* %23, align 4
  %586 = load i32, i32* @DIS_BLOCK, align 4
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %592, label %588

588:                                              ; preds = %584
  %589 = load i32, i32* %23, align 4
  %590 = load i32, i32* @DIS_INLINE_BLOCK, align 4
  %591 = icmp eq i32 %589, %590
  br i1 %591, label %592, label %650

592:                                              ; preds = %588, %584
  %593 = load i32*, i32** %10, align 8
  %594 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %595 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %596 = call %struct.TYPE_45__* @insert_block_box(i32* %593, %struct.TYPE_45__* %594, %struct.TYPE_45__* %595)
  store %struct.TYPE_45__* %596, %struct.TYPE_45__** %12, align 8
  %597 = load %struct.genstate*, %struct.genstate** %18, align 8
  %598 = getelementptr inbounds %struct.genstate, %struct.genstate* %597, i32 0, i32 4
  %599 = load i64, i64* %598, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %615

601:                                              ; preds = %592
  %602 = load i8*, i8** %22, align 8
  %603 = call i32 @strcmp(i8* %602, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %601
  %606 = load i8*, i8** %22, align 8
  %607 = call i32 @strcmp(i8* %606, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %614, label %609

609:                                              ; preds = %605, %601
  %610 = load i32, i32* %15, align 4
  %611 = call signext i8 @fz_mini(i32 %610, i32 6)
  %612 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %613 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %612, i32 0, i32 1
  store i8 %611, i8* %613, align 8
  br label %614

614:                                              ; preds = %609, %605
  br label %649

615:                                              ; preds = %592
  %616 = load i8*, i8** %22, align 8
  %617 = getelementptr inbounds i8, i8* %616, i64 0
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = icmp eq i32 %619, 104
  br i1 %620, label %621, label %648

621:                                              ; preds = %615
  %622 = load i8*, i8** %22, align 8
  %623 = getelementptr inbounds i8, i8* %622, i64 1
  %624 = load i8, i8* %623, align 1
  %625 = sext i8 %624 to i32
  %626 = icmp sge i32 %625, 49
  br i1 %626, label %627, label %648

627:                                              ; preds = %621
  %628 = load i8*, i8** %22, align 8
  %629 = getelementptr inbounds i8, i8* %628, i64 1
  %630 = load i8, i8* %629, align 1
  %631 = sext i8 %630 to i32
  %632 = icmp sle i32 %631, 54
  br i1 %632, label %633, label %648

633:                                              ; preds = %627
  %634 = load i8*, i8** %22, align 8
  %635 = getelementptr inbounds i8, i8* %634, i64 2
  %636 = load i8, i8* %635, align 1
  %637 = sext i8 %636 to i32
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %648

639:                                              ; preds = %633
  %640 = load i8*, i8** %22, align 8
  %641 = getelementptr inbounds i8, i8* %640, i64 1
  %642 = load i8, i8* %641, align 1
  %643 = sext i8 %642 to i32
  %644 = sub nsw i32 %643, 48
  %645 = trunc i32 %644 to i8
  %646 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %647 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %646, i32 0, i32 1
  store i8 %645, i8* %647, align 8
  br label %648

648:                                              ; preds = %639, %633, %627, %621, %615
  br label %649

649:                                              ; preds = %648, %614
  br label %770

650:                                              ; preds = %588
  %651 = load i32, i32* %23, align 4
  %652 = load i32, i32* @DIS_LIST_ITEM, align 4
  %653 = icmp eq i32 %651, %652
  br i1 %653, label %654, label %663

654:                                              ; preds = %650
  %655 = load i32*, i32** %10, align 8
  %656 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %657 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %658 = call %struct.TYPE_45__* @insert_block_box(i32* %655, %struct.TYPE_45__* %656, %struct.TYPE_45__* %657)
  store %struct.TYPE_45__* %658, %struct.TYPE_45__** %12, align 8
  %659 = load i32, i32* %14, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %14, align 4
  %661 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %662 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %661, i32 0, i32 2
  store i32 %660, i32* %662, align 4
  br label %769

663:                                              ; preds = %650
  %664 = load i32, i32* %23, align 4
  %665 = load i32, i32* @DIS_INLINE, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %667, label %730

667:                                              ; preds = %663
  %668 = load i32*, i32** %10, align 8
  %669 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %670 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %671 = load i32, i32* %38, align 4
  %672 = load %struct.genstate*, %struct.genstate** %18, align 8
  %673 = call i32 @insert_inline_box(i32* %668, %struct.TYPE_45__* %669, %struct.TYPE_45__* %670, i32 %671, %struct.genstate* %672)
  %674 = load i8*, i8** %36, align 8
  %675 = icmp ne i8* %674, null
  br i1 %675, label %676, label %681

676:                                              ; preds = %667
  %677 = load i32*, i32** %10, align 8
  %678 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %679 = load %struct.genstate*, %struct.genstate** %18, align 8
  %680 = call i32 @generate_anchor(i32* %677, %struct.TYPE_45__* %678, %struct.genstate* %679)
  br label %681

681:                                              ; preds = %676, %667
  %682 = load i8*, i8** %22, align 8
  %683 = getelementptr inbounds i8, i8* %682, i64 0
  %684 = load i8, i8* %683, align 1
  %685 = sext i8 %684 to i32
  %686 = icmp eq i32 %685, 97
  br i1 %686, label %687, label %729

687:                                              ; preds = %681
  %688 = load i8*, i8** %22, align 8
  %689 = getelementptr inbounds i8, i8* %688, i64 1
  %690 = load i8, i8* %689, align 1
  %691 = sext i8 %690 to i32
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %729

693:                                              ; preds = %687
  %694 = load %struct.genstate*, %struct.genstate** %18, align 8
  %695 = getelementptr inbounds %struct.genstate, %struct.genstate* %694, i32 0, i32 4
  %696 = load i64, i64* %695, align 8
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %707

698:                                              ; preds = %693
  %699 = load i32*, i32** %11, align 8
  %700 = call i8* @fz_xml_att(i32* %699, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %700, i8** %37, align 8
  %701 = load i8*, i8** %37, align 8
  %702 = icmp ne i8* %701, null
  br i1 %702, label %706, label %703

703:                                              ; preds = %698
  %704 = load i32*, i32** %11, align 8
  %705 = call i8* @fz_xml_att(i32* %704, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %705, i8** %37, align 8
  br label %706

706:                                              ; preds = %703, %698
  br label %716

707:                                              ; preds = %693
  %708 = load i32*, i32** %11, align 8
  %709 = load %struct.genstate*, %struct.genstate** %18, align 8
  %710 = getelementptr inbounds %struct.genstate, %struct.genstate* %709, i32 0, i32 4
  %711 = load i64, i64* %710, align 8
  %712 = icmp ne i64 %711, 0
  %713 = zext i1 %712 to i64
  %714 = select i1 %712, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %715 = call i8* @fz_xml_att(i32* %708, i8* %714)
  store i8* %715, i8** %37, align 8
  br label %716

716:                                              ; preds = %707, %706
  %717 = load i8*, i8** %37, align 8
  %718 = icmp ne i8* %717, null
  br i1 %718, label %719, label %728

719:                                              ; preds = %716
  %720 = load i32*, i32** %10, align 8
  %721 = load %struct.genstate*, %struct.genstate** %18, align 8
  %722 = getelementptr inbounds %struct.genstate, %struct.genstate* %721, i32 0, i32 2
  %723 = load i32, i32* %722, align 8
  %724 = load i8*, i8** %37, align 8
  %725 = call i8* @fz_pool_strdup(i32* %720, i32 %723, i8* %724)
  %726 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %727 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %726, i32 0, i32 4
  store i8* %725, i8** %727, align 8
  br label %728

728:                                              ; preds = %719, %716
  br label %729

729:                                              ; preds = %728, %687, %681
  br label %768

730:                                              ; preds = %663
  %731 = load i32, i32* %23, align 4
  %732 = load i32, i32* @DIS_TABLE, align 4
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %734, label %739

734:                                              ; preds = %730
  %735 = load i32*, i32** %10, align 8
  %736 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %737 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %738 = call %struct.TYPE_45__* @insert_table_box(i32* %735, %struct.TYPE_45__* %736, %struct.TYPE_45__* %737)
  store %struct.TYPE_45__* %738, %struct.TYPE_45__** %12, align 8
  br label %767

739:                                              ; preds = %730
  %740 = load i32, i32* %23, align 4
  %741 = load i32, i32* @DIS_TABLE_ROW, align 4
  %742 = icmp eq i32 %740, %741
  br i1 %742, label %743, label %748

743:                                              ; preds = %739
  %744 = load i32*, i32** %10, align 8
  %745 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %746 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %747 = call %struct.TYPE_45__* @insert_table_row_box(i32* %744, %struct.TYPE_45__* %745, %struct.TYPE_45__* %746)
  store %struct.TYPE_45__* %747, %struct.TYPE_45__** %12, align 8
  br label %766

748:                                              ; preds = %739
  %749 = load i32, i32* %23, align 4
  %750 = load i32, i32* @DIS_TABLE_CELL, align 4
  %751 = icmp eq i32 %749, %750
  br i1 %751, label %752, label %757

752:                                              ; preds = %748
  %753 = load i32*, i32** %10, align 8
  %754 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %755 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %756 = call %struct.TYPE_45__* @insert_table_cell_box(i32* %753, %struct.TYPE_45__* %754, %struct.TYPE_45__* %755)
  store %struct.TYPE_45__* %756, %struct.TYPE_45__** %12, align 8
  br label %765

757:                                              ; preds = %748
  %758 = load i32*, i32** %10, align 8
  %759 = call i32 @fz_warn(i32* %758, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %760 = load i32*, i32** %10, align 8
  %761 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %762 = load i32, i32* @BOX_BLOCK, align 4
  %763 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %764 = call i32 @insert_box(i32* %760, %struct.TYPE_45__* %761, i32 %762, %struct.TYPE_45__* %763)
  br label %765

765:                                              ; preds = %757, %752
  br label %766

766:                                              ; preds = %765, %743
  br label %767

767:                                              ; preds = %766, %734
  br label %768

768:                                              ; preds = %767, %729
  br label %769

769:                                              ; preds = %768, %654
  br label %770

770:                                              ; preds = %769, %649
  %771 = load i32*, i32** %11, align 8
  %772 = call i32* @fz_xml_down(i32* %771)
  %773 = icmp ne i32* %772, null
  br i1 %773, label %774, label %809

774:                                              ; preds = %770
  %775 = load i32, i32* %14, align 4
  store i32 %775, i32* %40, align 4
  %776 = load i32, i32* %15, align 4
  store i32 %776, i32* %41, align 4
  %777 = load i8*, i8** %22, align 8
  %778 = call i32 @strcmp(i8* %777, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %784

780:                                              ; preds = %774
  %781 = load i8*, i8** %22, align 8
  %782 = call i32 @strcmp(i8* %781, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %785, label %784

784:                                              ; preds = %780, %774
  store i32 0, i32* %40, align 4
  br label %785

785:                                              ; preds = %784, %780
  %786 = load i8*, i8** %22, align 8
  %787 = call i32 @strcmp(i8* %786, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %792, label %789

789:                                              ; preds = %785
  %790 = load i32, i32* %41, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %41, align 4
  br label %792

792:                                              ; preds = %789, %785
  %793 = load i32*, i32** %10, align 8
  %794 = load i32*, i32** %11, align 8
  %795 = call i32* @fz_xml_down(i32* %794)
  %796 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %797 = load i32, i32* %40, align 4
  %798 = load i32, i32* %41, align 4
  %799 = load i32, i32* %38, align 4
  %800 = load i32, i32* %39, align 4
  %801 = load %struct.genstate*, %struct.genstate** %18, align 8
  %802 = call %struct.TYPE_45__* @generate_boxes(i32* %793, i32* %795, %struct.TYPE_45__* %796, %struct.TYPE_47__* %19, i32 %797, i32 %798, i32 %799, i32 %800, %struct.genstate* %801)
  store %struct.TYPE_45__* %802, %struct.TYPE_45__** %21, align 8
  %803 = load %struct.TYPE_45__*, %struct.TYPE_45__** %21, align 8
  %804 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %805 = icmp ne %struct.TYPE_45__* %803, %804
  br i1 %805, label %806, label %808

806:                                              ; preds = %792
  %807 = load %struct.TYPE_45__*, %struct.TYPE_45__** %21, align 8
  store %struct.TYPE_45__* %807, %struct.TYPE_45__** %12, align 8
  br label %808

808:                                              ; preds = %806, %792
  br label %809

809:                                              ; preds = %808, %770
  br label %810

810:                                              ; preds = %809, %493
  br label %811

811:                                              ; preds = %810, %492
  br label %812

812:                                              ; preds = %811, %279
  br label %813

813:                                              ; preds = %812, %254
  br label %814

814:                                              ; preds = %813, %133
  br label %900

815:                                              ; preds = %48
  %816 = load i32*, i32** %11, align 8
  %817 = call i8* @fz_xml_text(i32* %816)
  store i8* %817, i8** %42, align 8
  %818 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %819 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %818, i32 0, i32 3
  %820 = load %struct.TYPE_46__*, %struct.TYPE_46__** %819, align 8
  %821 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 8
  %823 = load i32, i32* @WS_COLLAPSE, align 4
  %824 = and i32 %822, %823
  store i32 %824, i32* %43, align 4
  %825 = load i32, i32* %43, align 4
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %834

827:                                              ; preds = %815
  %828 = load i8*, i8** %42, align 8
  %829 = call i64 @is_all_white(i8* %828)
  %830 = icmp ne i64 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %827
  %832 = load %struct.genstate*, %struct.genstate** %18, align 8
  %833 = getelementptr inbounds %struct.genstate, %struct.genstate* %832, i32 0, i32 1
  store i32 1, i32* %833, align 4
  br label %899

834:                                              ; preds = %827, %815
  %835 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %836 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %835, i32 0, i32 0
  %837 = load i64, i64* %836, align 8
  %838 = load i64, i64* @BOX_INLINE, align 8
  %839 = icmp ne i64 %837, %838
  br i1 %839, label %840, label %891

840:                                              ; preds = %834
  %841 = load i32*, i32** %10, align 8
  %842 = load %struct.genstate*, %struct.genstate** %18, align 8
  %843 = getelementptr inbounds %struct.genstate, %struct.genstate* %842, i32 0, i32 2
  %844 = load i32, i32* %843, align 8
  %845 = load i32, i32* %16, align 4
  %846 = call %struct.TYPE_45__* @new_short_box(i32* %841, i32 %844, i32 %845)
  store %struct.TYPE_45__* %846, %struct.TYPE_45__** %20, align 8
  %847 = load i32*, i32** %10, align 8
  %848 = call i32 @fz_default_css_style(i32* %847, %struct.TYPE_46__* %44)
  %849 = load i32*, i32** %10, align 8
  %850 = load %struct.genstate*, %struct.genstate** %18, align 8
  %851 = getelementptr inbounds %struct.genstate, %struct.genstate* %850, i32 0, i32 3
  %852 = load %struct.genstate*, %struct.genstate** %18, align 8
  %853 = getelementptr inbounds %struct.genstate, %struct.genstate* %852, i32 0, i32 2
  %854 = load i32, i32* %853, align 8
  %855 = call i8* @fz_css_enlist(i32* %849, %struct.TYPE_46__* %44, i32* %851, i32 %854)
  %856 = bitcast i8* %855 to %struct.TYPE_46__*
  %857 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %858 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %857, i32 0, i32 3
  store %struct.TYPE_46__* %856, %struct.TYPE_46__** %858, align 8
  %859 = load i32*, i32** %10, align 8
  %860 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %861 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %862 = load i32, i32* %16, align 4
  %863 = load %struct.genstate*, %struct.genstate** %18, align 8
  %864 = call i32 @insert_inline_box(i32* %859, %struct.TYPE_45__* %860, %struct.TYPE_45__* %861, i32 %862, %struct.genstate* %863)
  %865 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %866 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %865, i32 0, i32 3
  %867 = load %struct.TYPE_46__*, %struct.TYPE_46__** %866, align 8
  %868 = bitcast %struct.TYPE_46__* %44 to i8*
  %869 = bitcast %struct.TYPE_46__* %867 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %868, i8* align 8 %869, i64 48, i1 false)
  %870 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %44, i32 0, i32 1
  %871 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %870, i32 0, i32 0
  store i32 1, i32* %871, align 4
  %872 = load i32, i32* @N_SCALE, align 4
  %873 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %44, i32 0, i32 1
  %874 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %873, i32 0, i32 1
  store i32 %872, i32* %874, align 4
  %875 = load i32*, i32** %10, align 8
  %876 = load %struct.genstate*, %struct.genstate** %18, align 8
  %877 = getelementptr inbounds %struct.genstate, %struct.genstate* %876, i32 0, i32 3
  %878 = load %struct.genstate*, %struct.genstate** %18, align 8
  %879 = getelementptr inbounds %struct.genstate, %struct.genstate* %878, i32 0, i32 2
  %880 = load i32, i32* %879, align 8
  %881 = call i8* @fz_css_enlist(i32* %875, %struct.TYPE_46__* %44, i32* %877, i32 %880)
  %882 = bitcast i8* %881 to %struct.TYPE_46__*
  %883 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %884 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %883, i32 0, i32 3
  store %struct.TYPE_46__* %882, %struct.TYPE_46__** %884, align 8
  %885 = load i32*, i32** %10, align 8
  %886 = load %struct.TYPE_45__*, %struct.TYPE_45__** %20, align 8
  %887 = load i8*, i8** %42, align 8
  %888 = load i32, i32* %17, align 4
  %889 = load %struct.genstate*, %struct.genstate** %18, align 8
  %890 = call i32 @generate_text(i32* %885, %struct.TYPE_45__* %886, i8* %887, i32 %888, %struct.genstate* %889)
  br label %898

891:                                              ; preds = %834
  %892 = load i32*, i32** %10, align 8
  %893 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %894 = load i8*, i8** %42, align 8
  %895 = load i32, i32* %17, align 4
  %896 = load %struct.genstate*, %struct.genstate** %18, align 8
  %897 = call i32 @generate_text(i32* %892, %struct.TYPE_45__* %893, i8* %894, i32 %895, %struct.genstate* %896)
  br label %898

898:                                              ; preds = %891, %840
  br label %899

899:                                              ; preds = %898, %831
  br label %900

900:                                              ; preds = %899, %814
  %901 = load i32*, i32** %11, align 8
  %902 = call i32* @fz_xml_next(i32* %901)
  store i32* %902, i32** %11, align 8
  br label %45

903:                                              ; preds = %45
  %904 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  ret %struct.TYPE_45__* %904
}

declare dso_local i8* @fz_xml_tag(i32*) #1

declare dso_local i32 @fz_match_css(i32*, %struct.TYPE_47__*, i32, i32*) #1

declare dso_local i32 @fz_get_css_match_display(%struct.TYPE_47__*) #1

declare dso_local i32 @add_flow_break(i32*, i32, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_45__* @new_short_box(i32*, i32, i32) #1

declare dso_local i32 @fz_apply_css_style(i32*, i32, %struct.TYPE_46__*, %struct.TYPE_47__*) #1

declare dso_local i8* @fz_css_enlist(i32*, %struct.TYPE_46__*, i32*, i32) #1

declare dso_local %struct.TYPE_45__* @insert_break_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_atoi(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @insert_inline_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*, i32, %struct.genstate*) #1

declare dso_local i32 @generate_image(i32*, %struct.TYPE_45__*, i32, %struct.genstate*) #1

declare dso_local i32 @load_html_image(i32*, i32, i32, i8*) #1

declare dso_local i32 @load_svg_image(i32*, i32, i32, i32*) #1

declare dso_local i32* @fz_tree_lookup(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_45__* @new_box(i32*, i32, i32) #1

declare dso_local i32 @fz_default_css_style(i32*, %struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_45__* @insert_block_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i32 @fz_keep_image(i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fz_text_language_from_string(i8*) #1

declare dso_local i8* @fz_pool_strdup(i32*, i32, i8*) #1

declare dso_local signext i8 @fz_mini(i32, i32) #1

declare dso_local i32 @generate_anchor(i32*, %struct.TYPE_45__*, %struct.genstate*) #1

declare dso_local %struct.TYPE_45__* @insert_table_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_45__* @insert_table_row_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_45__* @insert_table_cell_box(i32*, %struct.TYPE_45__*, %struct.TYPE_45__*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @insert_box(i32*, %struct.TYPE_45__*, i32, %struct.TYPE_45__*) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i8* @fz_xml_text(i32*) #1

declare dso_local i64 @is_all_white(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @generate_text(i32*, %struct.TYPE_45__*, i8*, i32, %struct.genstate*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
