; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_supported_locales.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_supported_locales.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i32 }
%struct.TYPE_6__ = type { i32, i8**, i32, i32*, i8**, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid loc file: the file is too small!\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Invalid loc file: the file should not have a BOM (Byte Order Mark)\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Invalid loc file: the file MUST be saved in DOS mode (CR/LF)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@loc_line_nr = common dso_local global i32 0, align 4
@space = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"localization: no compatible version was found - this locale will be ignored\0A\00", align 1
@locale_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"localization: found locale '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"[a]ttributes cannot precede [l]ocale\00", align 1
@attr_parse = common dso_local global %struct.TYPE_7__* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"unknown attribute '%c' - ignored\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"[v]ersion was already provided at line %d\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"[v]ersion format is invalid\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"[v]ersion cannot precede [l]ocale\00", align 1
@LOC_NEEDS_UPDATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [311 x i8] c"the version of this translation is older than the base one and may result in some messages not being properly translated.\0AIf you are the translator, please update your translation with the changes that intervened between v%d.%d and v%d.%d.\0ASee https://github.com/pbatard/rufus/blob/master/res/loc/ChangeLog.txt\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"localization: '%s' contains no valid locale sections\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_supported_locales(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %4, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32* @open_loc_file(i8* %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %371

21:                                               ; preds = %1
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @fread(i8* %22, i32 1, i32 1024, i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %25, 1024
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %371

29:                                               ; preds = %21
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = icmp sgt i32 %32, 128
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %371

36:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %38, 1023
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %58

54:                                               ; preds = %46, %40
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %37

58:                                               ; preds = %53, %37
  %59 = load i64, i64* %6, align 8
  %60 = icmp uge i64 %59, 1023
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %371

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @SEEK_SET, align 4
  %66 = call i32 @fseek(i32* %64, i32 0, i32 %65)
  store i32 0, i32* @loc_line_nr, align 4
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %67, align 16
  %68 = call i32 (...) @free_locale_list()
  br label %69

69:                                               ; preds = %336, %63
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @ftell(i32* %70)
  store i64 %71, i64* %11, align 8
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %73 = load i32*, i32** %3, align 8
  %74 = call i32* @fgets(i8* %72, i32 1024, i32* %73)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %337

77:                                               ; preds = %69
  %78 = load i32, i32* @loc_line_nr, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @loc_line_nr, align 4
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %81 = load i32, i32* @space, align 4
  %82 = call i64 @strspn(i8* %80, i32 %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 108
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 118
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 97
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %336

101:                                              ; preds = %94, %88, %77
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %106
  %108 = call %struct.TYPE_6__* @get_loc_cmd(i8 signext %104, i8* %107)
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %9, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = icmp eq %struct.TYPE_6__* %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %101
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 129
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 128
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 130
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %101
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = call i32 @free_loc_cmd(%struct.TYPE_6__* %127)
  br label %336

129:                                              ; preds = %121, %116, %111
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %335 [
    i32 129, label %133
    i32 130, label %172
    i32 128, label %249
  ]

133:                                              ; preds = %129
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = icmp ne %struct.TYPE_6__* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = call i32 @list_del(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = call i32 @free_loc_cmd(%struct.TYPE_6__* %144)
  br label %153

146:                                              ; preds = %136
  %147 = load i64, i64* %11, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %146, %139
  br label %154

154:                                              ; preds = %153, %133
  %155 = load i32*, i32** %3, align 8
  %156 = call i64 @ftell(i32* %155)
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* %157, i8** %161, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 5
  %164 = call i32 @list_add_tail(i32* %163, i32* @locale_list)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %335

172:                                              ; preds = %129
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %174 = icmp eq %struct.TYPE_6__* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @luprint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %246

177:                                              ; preds = %172
  store i64 0, i64* %7, align 8
  br label %178

178:                                              ; preds = %242, %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %245

189:                                              ; preds = %178
  store i64 0, i64* %8, align 8
  br label %190

190:                                              ; preds = %223, %189
  %191 = load i64, i64* %8, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** @attr_parse, align 8
  %193 = call i64 @ARRAYSIZE(%struct.TYPE_7__* %192)
  %194 = icmp ult i64 %191, %193
  br i1 %194, label %195, label %226

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** @attr_parse, align 8
  %197 = load i64, i64* %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 4
  %201 = sext i8 %200 to i32
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %201, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %195
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** @attr_parse, align 8
  %214 = load i64, i64* %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %226

222:                                              ; preds = %195
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %8, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %8, align 8
  br label %190

226:                                              ; preds = %212, %190
  %227 = load i64, i64* %8, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** @attr_parse, align 8
  %229 = call i64 @ARRAYSIZE(%struct.TYPE_7__* %228)
  %230 = icmp uge i64 %227, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i64, i64* %7, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = call i32 (i8*, i8, ...) @luprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8 signext %239)
  br label %241

241:                                              ; preds = %231, %226
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %7, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %7, align 8
  br label %178

245:                                              ; preds = %178
  br label %246

246:                                              ; preds = %245, %175
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %248 = call i32 @free_loc_cmd(%struct.TYPE_6__* %247)
  br label %335

249:                                              ; preds = %129
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* %12, align 4
  %254 = trunc i32 %253 to i8
  %255 = call i32 (i8*, i8, ...) @luprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8 signext %254)
  br label %332

256:                                              ; preds = %249
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 2
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = call i32 @luprint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %331

263:                                              ; preds = %256
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %265 = icmp eq %struct.TYPE_6__* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = call i32 @luprint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %330

268:                                              ; preds = %263
  %269 = load i32, i32* %13, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %13, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* @loc_line_nr, align 4
  store i32 %282, i32* %12, align 4
  br label %329

283:                                              ; preds = %268
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %307, label %291

291:                                              ; preds = %283
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %327

299:                                              ; preds = %291
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %299, %283
  %308 = load i32, i32* @LOC_NEEDS_UPDATE, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = trunc i32 %317 to i8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* %14, align 4
  %326 = call i32 (i8*, i8, ...) @luprintf(i8* getelementptr inbounds ([311 x i8], [311 x i8]* @.str.10, i64 0, i64 0), i8 signext %318, i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %307, %299, %291
  %328 = load i32, i32* @loc_line_nr, align 4
  store i32 %328, i32* %12, align 4
  br label %329

329:                                              ; preds = %327, %271
  br label %330

330:                                              ; preds = %329, %266
  br label %331

331:                                              ; preds = %330, %261
  br label %332

332:                                              ; preds = %331, %252
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %334 = call i32 @free_loc_cmd(%struct.TYPE_6__* %333)
  br label %335

335:                                              ; preds = %129, %332, %246, %154
  br label %336

336:                                              ; preds = %335, %126, %100
  br i1 true, label %69, label %337

337:                                              ; preds = %336, %76
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %339 = icmp ne %struct.TYPE_6__* %338, null
  br i1 %339, label %340, label %359

340:                                              ; preds = %337
  %341 = load i32, i32* %12, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %340
  %344 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 5
  %347 = call i32 @list_del(i32* %346)
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %349 = call i32 @free_loc_cmd(%struct.TYPE_6__* %348)
  br label %358

350:                                              ; preds = %340
  %351 = load i32*, i32** %3, align 8
  %352 = call i64 @ftell(i32* %351)
  %353 = inttoptr i64 %352 to i8*
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 4
  %356 = load i8**, i8*** %355, align 8
  %357 = getelementptr inbounds i8*, i8** %356, i64 1
  store i8* %353, i8** %357, align 8
  br label %358

358:                                              ; preds = %350, %343
  br label %359

359:                                              ; preds = %358, %337
  %360 = call i32 @list_empty(i32* @locale_list)
  %361 = icmp ne i32 %360, 0
  %362 = xor i1 %361, true
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %4, align 4
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* @FALSE, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %359
  %368 = load i8*, i8** %2, align 8
  %369 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %368)
  br label %370

370:                                              ; preds = %367, %359
  br label %371

371:                                              ; preds = %370, %61, %34, %27, %20
  %372 = load i32*, i32** %3, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %371
  %375 = load i32*, i32** %3, align 8
  %376 = call i32 @fclose(i32* %375)
  br label %377

377:                                              ; preds = %374, %371
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32* @open_loc_file(i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @free_locale_list(...) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @get_loc_cmd(i8 signext, i8*) #1

declare dso_local i32 @free_loc_cmd(%struct.TYPE_6__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @luprint(i8*) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @luprintf(i8*, i8 signext, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
