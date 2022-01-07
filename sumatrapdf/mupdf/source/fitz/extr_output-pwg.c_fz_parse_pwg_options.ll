; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_fz_parse_pwg_options.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pwg.c_fz_parse_pwg_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"media_class\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"media_color\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"media_type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"output_type\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"rendering_intent\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"page_size_name\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"advance_distance\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"advance_media\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"cut_media\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"insert_sheet\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"jog\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"leading_edge\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"manual_feed\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"media_position\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"media_weight\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"mirror_print\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"negative_print\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"num_copies\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"output_face_up\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"page_size_x\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"page_size_y\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"separations\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"tray_switch\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"tumble\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"media_type_num\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"row_count\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"row_feed\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"row_step\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @fz_parse_pwg_options(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 224)
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @fz_has_option(i32* %10, i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 30
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fz_copy_option(i32* %16, i8* %17, i32 %20, i32 64)
  %22 = call i32 @warn_if_long(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @fz_has_option(i32* %24, i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 29
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fz_copy_option(i32* %30, i8* %31, i32 %34, i32 64)
  %36 = call i32 @warn_if_long(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @fz_has_option(i32* %38, i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 28
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fz_copy_option(i32* %44, i8* %45, i32 %48, i32 64)
  %50 = call i32 @warn_if_long(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @fz_has_option(i32* %52, i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 27
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @fz_copy_option(i32* %58, i8* %59, i32 %62, i32 64)
  %64 = call i32 @warn_if_long(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @fz_has_option(i32* %66, i8* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 26
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fz_copy_option(i32* %72, i8* %73, i32 %76, i32 64)
  %78 = call i32 @warn_if_long(i32* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @fz_has_option(i32* %80, i8* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 25
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @fz_copy_option(i32* %86, i8* %87, i32 %90, i32 64)
  %92 = call i32 @warn_if_long(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @fz_has_option(i32* %94, i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @fz_atoi(i8* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 24
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @fz_has_option(i32* %104, i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %7)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = call i8* @fz_atoi(i8* %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 23
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32*, i32** %4, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @fz_has_option(i32* %114, i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %7)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = call i8* @fz_atoi(i8* %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 22
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32*, i32** %4, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @fz_has_option(i32* %124, i8* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %7)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @fz_atoi(i8* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 21
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32*, i32** %4, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @fz_has_option(i32* %134, i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %7)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i8*, i8** %7, align 8
  %140 = call i8* @fz_atoi(i8* %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 20
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32*, i32** %4, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i64 @fz_has_option(i32* %144, i8* %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %7)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8*, i8** %7, align 8
  %150 = call i8* @fz_atoi(i8* %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 19
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32*, i32** %4, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i64 @fz_has_option(i32* %154, i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %7)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** %7, align 8
  %160 = call i8* @fz_atoi(i8* %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 18
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32*, i32** %4, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i64 @fz_has_option(i32* %164, i8* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %7)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i8*, i8** %7, align 8
  %170 = call i8* @fz_atoi(i8* %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 17
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32*, i32** %4, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = call i64 @fz_has_option(i32* %174, i8* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %7)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i8*, i8** %7, align 8
  %180 = call i8* @fz_atoi(i8* %179)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 16
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32*, i32** %4, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = call i64 @fz_has_option(i32* %184, i8* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %7)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** %7, align 8
  %190 = call i8* @fz_atoi(i8* %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 15
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %188, %183
  %194 = load i32*, i32** %4, align 8
  %195 = load i8*, i8** %6, align 8
  %196 = call i64 @fz_has_option(i32* %194, i8* %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %7)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i8*, i8** %7, align 8
  %200 = call i8* @fz_atoi(i8* %199)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 14
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32*, i32** %4, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = call i64 @fz_has_option(i32* %204, i8* %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %7)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8*, i8** %7, align 8
  %210 = call i8* @fz_atoi(i8* %209)
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 13
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32*, i32** %4, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i64 @fz_has_option(i32* %214, i8* %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %7)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i8*, i8** %7, align 8
  %220 = call i8* @fz_atoi(i8* %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 12
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %218, %213
  %224 = load i32*, i32** %4, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = call i64 @fz_has_option(i32* %224, i8* %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %7)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i8*, i8** %7, align 8
  %230 = call i8* @fz_atoi(i8* %229)
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 11
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i32*, i32** %4, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = call i64 @fz_has_option(i32* %234, i8* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %7)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load i8*, i8** %7, align 8
  %240 = call i8* @fz_atoi(i8* %239)
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 10
  store i8* %240, i8** %242, align 8
  br label %243

243:                                              ; preds = %238, %233
  %244 = load i32*, i32** %4, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = call i64 @fz_has_option(i32* %244, i8* %245, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %7)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i8*, i8** %7, align 8
  %250 = call i8* @fz_atoi(i8* %249)
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 9
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %248, %243
  %254 = load i32*, i32** %4, align 8
  %255 = load i8*, i8** %6, align 8
  %256 = call i64 @fz_has_option(i32* %254, i8* %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %7)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load i8*, i8** %7, align 8
  %260 = call i8* @fz_atoi(i8* %259)
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 8
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 0
  store i8* %260, i8** %264, align 8
  br label %265

265:                                              ; preds = %258, %253
  %266 = load i32*, i32** %4, align 8
  %267 = load i8*, i8** %6, align 8
  %268 = call i64 @fz_has_option(i32* %266, i8* %267, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %7)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %265
  %271 = load i8*, i8** %7, align 8
  %272 = call i8* @fz_atoi(i8* %271)
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 8
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 1
  store i8* %272, i8** %276, align 8
  br label %277

277:                                              ; preds = %270, %265
  %278 = load i32*, i32** %4, align 8
  %279 = load i8*, i8** %6, align 8
  %280 = call i64 @fz_has_option(i32* %278, i8* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %7)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load i8*, i8** %7, align 8
  %284 = call i8* @fz_atoi(i8* %283)
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 7
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %282, %277
  %288 = load i32*, i32** %4, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = call i64 @fz_has_option(i32* %288, i8* %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** %7)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load i8*, i8** %7, align 8
  %294 = call i8* @fz_atoi(i8* %293)
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 6
  store i8* %294, i8** %296, align 8
  br label %297

297:                                              ; preds = %292, %287
  %298 = load i32*, i32** %4, align 8
  %299 = load i8*, i8** %6, align 8
  %300 = call i64 @fz_has_option(i32* %298, i8* %299, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8** %7)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i8*, i8** %7, align 8
  %304 = call i8* @fz_atoi(i8* %303)
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 5
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %302, %297
  %308 = load i32*, i32** %4, align 8
  %309 = load i8*, i8** %6, align 8
  %310 = call i64 @fz_has_option(i32* %308, i8* %309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8** %7)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load i8*, i8** %7, align 8
  %314 = call i8* @fz_atoi(i8* %313)
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 4
  store i8* %314, i8** %316, align 8
  br label %317

317:                                              ; preds = %312, %307
  %318 = load i32*, i32** %4, align 8
  %319 = load i8*, i8** %6, align 8
  %320 = call i64 @fz_has_option(i32* %318, i8* %319, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8** %7)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load i8*, i8** %7, align 8
  %324 = call i8* @fz_atoi(i8* %323)
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 3
  store i8* %324, i8** %326, align 8
  br label %327

327:                                              ; preds = %322, %317
  %328 = load i32*, i32** %4, align 8
  %329 = load i8*, i8** %6, align 8
  %330 = call i64 @fz_has_option(i32* %328, i8* %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8** %7)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load i8*, i8** %7, align 8
  %334 = call i8* @fz_atoi(i8* %333)
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 2
  store i8* %334, i8** %336, align 8
  br label %337

337:                                              ; preds = %332, %327
  %338 = load i32*, i32** %4, align 8
  %339 = load i8*, i8** %6, align 8
  %340 = call i64 @fz_has_option(i32* %338, i8* %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %7)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %337
  %343 = load i8*, i8** %7, align 8
  %344 = call i8* @fz_atoi(i8* %343)
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 1
  store i8* %344, i8** %346, align 8
  br label %347

347:                                              ; preds = %342, %337
  %348 = load i32*, i32** %4, align 8
  %349 = load i8*, i8** %6, align 8
  %350 = call i64 @fz_has_option(i32* %348, i8* %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %7)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load i8*, i8** %7, align 8
  %354 = call i8* @fz_atoi(i8* %353)
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %352, %347
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %358
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @fz_has_option(i32*, i8*, i8*, i8**) #1

declare dso_local i32 @warn_if_long(i32*, i8*, i32) #1

declare dso_local i32 @fz_copy_option(i32*, i8*, i32, i32) #1

declare dso_local i8* @fz_atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
