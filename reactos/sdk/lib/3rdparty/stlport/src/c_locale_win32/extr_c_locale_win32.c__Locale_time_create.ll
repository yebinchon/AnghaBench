; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_time_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_time_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_STLP_LOC_NO_MEMORY = common dso_local global i32 0, align 4
@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@LOCALE_SMONTHNAME1 = common dso_local global i32 0, align 4
@LOCALE_SMONTHNAME12 = common dso_local global i32 0, align 4
@LOCALE_SABBREVMONTHNAME1 = common dso_local global i32 0, align 4
@LOCALE_SABBREVMONTHNAME12 = common dso_local global i32 0, align 4
@LOCALE_SDAYNAME1 = common dso_local global i32 0, align 4
@LOCALE_SDAYNAME7 = common dso_local global i32 0, align 4
@LOCALE_SABBREVDAYNAME1 = common dso_local global i32 0, align 4
@LOCALE_SABBREVDAYNAME7 = common dso_local global i32 0, align 4
@LOCALE_SSHORTDATE = common dso_local global i32 0, align 4
@LOCALE_SLONGDATE = common dso_local global i32 0, align 4
@LOCALE_STIMEFORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@LOCALE_S1159 = common dso_local global i32 0, align 4
@LOCALE_S2359 = common dso_local global i32 0, align 4
@INVARIANT_LCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @_Locale_time_create(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i32], align 16
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = call i64 @malloc(i64 96)
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %14, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %4, align 8
  br label %538

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %27 = call i32 @memset(%struct.TYPE_8__* %26, i32 0, i32 96)
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @__GetLCIDFromName(i8* %28, i32* %31, i32 %34, i32* %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %40 = call i32 @free(%struct.TYPE_8__* %39)
  %41 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

43:                                               ; preds = %25
  %44 = load i32, i32* @LOCALE_SMONTHNAME1, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %104, %43
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @LOCALE_SMONTHNAME12, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @GetLocaleInfoA(i32 %53, i32 %54, i32* null, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = call i64 @malloc(i64 %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @LOCALE_SMONTHNAME1, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %62, i64 %66
  store i8* %59, i8** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @LOCALE_SMONTHNAME1, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %49
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %80 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %79)
  %81 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

83:                                               ; preds = %49
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @LOCALE_SMONTHNAME1, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %94, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %103 = call i32 @__GetLocaleInfoUsingACP(i32 %87, i32 %90, i32 %91, i8* %100, i32 %101, i32* %102, i32 80)
  br label %104

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %45

107:                                              ; preds = %45
  %108 = load i32, i32* @LOCALE_SABBREVMONTHNAME1, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %168, %107
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @LOCALE_SABBREVMONTHNAME12, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %171

113:                                              ; preds = %109
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @GetLocaleInfoA(i32 %117, i32 %118, i32* null, i32 0)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = call i64 @malloc(i64 %121)
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @LOCALE_SABBREVMONTHNAME1, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %126, i64 %130
  store i8* %123, i8** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @LOCALE_SABBREVMONTHNAME1, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %134, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %113
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %144 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %143)
  %145 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %146 = load i32*, i32** %7, align 8
  store i32 %145, i32* %146, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

147:                                              ; preds = %113
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 12
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @LOCALE_SABBREVMONTHNAME1, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %158, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %167 = call i32 @__GetLocaleInfoUsingACP(i32 %151, i32 %154, i32 %155, i8* %164, i32 %165, i32* %166, i32 80)
  br label %168

168:                                              ; preds = %147
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %109

171:                                              ; preds = %109
  %172 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %237, %171
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @LOCALE_SDAYNAME7, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %240

177:                                              ; preds = %173
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @LOCALE_SDAYNAME7, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  %184 = sub nsw i32 %182, %183
  %185 = add nsw i32 %184, 1
  br label %187

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %181
  %188 = phi i32 [ %185, %181 ], [ 0, %186 ]
  store i32 %188, i32* %15, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 12
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @GetLocaleInfoA(i32 %192, i32 %193, i32* null, i32 0)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = call i64 @malloc(i64 %196)
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  store i8* %198, i8** %204, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %187
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %215 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %214)
  %216 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %217 = load i32*, i32** %7, align 8
  store i32 %216, i32* %217, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

218:                                              ; preds = %187
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 12
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %236 = call i32 @__GetLocaleInfoUsingACP(i32 %222, i32 %225, i32 %226, i8* %233, i32 %234, i32* %235, i32 80)
  br label %237

237:                                              ; preds = %218
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %173

240:                                              ; preds = %173
  %241 = load i32, i32* @LOCALE_SABBREVDAYNAME1, align 4
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %306, %240
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @LOCALE_SABBREVDAYNAME7, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %309

246:                                              ; preds = %242
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @LOCALE_SABBREVDAYNAME7, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @LOCALE_SABBREVDAYNAME1, align 4
  %253 = sub nsw i32 %251, %252
  %254 = add nsw i32 %253, 1
  br label %256

255:                                              ; preds = %246
  br label %256

256:                                              ; preds = %255, %250
  %257 = phi i32 [ %254, %250 ], [ 0, %255 ]
  store i32 %257, i32* %16, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 12
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @GetLocaleInfoA(i32 %261, i32 %262, i32* null, i32 0)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = call i64 @malloc(i64 %265)
  %267 = inttoptr i64 %266 to i8*
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 3
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  store i8* %267, i8** %273, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i8**, i8*** %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %256
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %284 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %283)
  %285 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %286 = load i32*, i32** %7, align 8
  store i32 %285, i32* %286, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

287:                                              ; preds = %256
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 12
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 3
  %298 = load i8**, i8*** %297, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = load i8*, i8** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %305 = call i32 @__GetLocaleInfoUsingACP(i32 %291, i32 %294, i32 %295, i8* %302, i32 %303, i32* %304, i32 80)
  br label %306

306:                                              ; preds = %287
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %10, align 4
  br label %242

309:                                              ; preds = %242
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 12
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 11
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @LOCALE_SSHORTDATE, align 4
  %318 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %319 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %320 = call i32 @__GetLocaleInfoUsingACP(i32 %313, i32 %316, i32 %317, i8* %318, i32 80, i32* %319, i32 80)
  %321 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %322 = call i32 @__ConvertDate(i8* %321, i8* null, i32 0)
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = call i64 @malloc(i64 %324)
  %326 = inttoptr i64 %325 to i8*
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 4
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %338, label %333

333:                                              ; preds = %309
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %335 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %334)
  %336 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %337 = load i32*, i32** %7, align 8
  store i32 %336, i32* %337, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

338:                                              ; preds = %309
  %339 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 4
  %342 = load i8*, i8** %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @__ConvertDate(i8* %339, i8* %342, i32 %343)
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 12
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 11
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @LOCALE_SLONGDATE, align 4
  %353 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %354 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %355 = call i32 @__GetLocaleInfoUsingACP(i32 %348, i32 %351, i32 %352, i8* %353, i32 80, i32* %354, i32 80)
  %356 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %357 = call i32 @__ConvertDate(i8* %356, i8* null, i32 0)
  store i32 %357, i32* %8, align 4
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = call i64 @malloc(i64 %359)
  %361 = inttoptr i64 %360 to i8*
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 5
  store i8* %361, i8** %363, align 8
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 5
  %366 = load i8*, i8** %365, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %338
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %370 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %369)
  %371 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %372 = load i32*, i32** %7, align 8
  store i32 %371, i32* %372, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

373:                                              ; preds = %338
  %374 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 5
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* %8, align 4
  %379 = call i32 @__ConvertDate(i8* %374, i8* %377, i32 %378)
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 12
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 11
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @LOCALE_STIMEFORMAT, align 4
  %388 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %389 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %390 = call i32 @__GetLocaleInfoUsingACP(i32 %383, i32 %386, i32 %387, i8* %388, i32 80, i32* %389, i32 80)
  %391 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %392 = call i32 @__ConvertTime(i8* %391, i8* null, i32 0)
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = call i64 @malloc(i64 %394)
  %396 = inttoptr i64 %395 to i8*
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 6
  store i8* %396, i8** %398, align 8
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 6
  %401 = load i8*, i8** %400, align 8
  %402 = icmp ne i8* %401, null
  br i1 %402, label %408, label %403

403:                                              ; preds = %373
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %405 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %404)
  %406 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %407 = load i32*, i32** %7, align 8
  store i32 %406, i32* %407, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

408:                                              ; preds = %373
  %409 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 6
  %412 = load i8*, i8** %411, align 8
  %413 = load i32, i32* %8, align 4
  %414 = call i32 @__ConvertTime(i8* %409, i8* %412, i32 %413)
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 4
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @strlen(i8* %417)
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 6
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @strlen(i8* %421)
  %423 = add nsw i32 %418, %422
  %424 = add nsw i32 %423, 1
  %425 = add nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %11, align 8
  %427 = load i64, i64* %11, align 8
  %428 = call i64 @malloc(i64 %427)
  %429 = inttoptr i64 %428 to i8*
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 7
  store i8* %429, i8** %431, align 8
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 7
  %434 = load i8*, i8** %433, align 8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %441, label %436

436:                                              ; preds = %408
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %438 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %437)
  %439 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %440 = load i32*, i32** %7, align 8
  store i32 %439, i32* %440, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

441:                                              ; preds = %408
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 7
  %444 = load i8*, i8** %443, align 8
  %445 = load i64, i64* %11, align 8
  %446 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 4
  %448 = load i8*, i8** %447, align 8
  %449 = call i32 @_STLP_STRCPY(i8* %444, i64 %445, i8* %448)
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 7
  %452 = load i8*, i8** %451, align 8
  %453 = load i64, i64* %11, align 8
  %454 = call i32 @_STLP_STRCAT(i8* %452, i64 %453, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 7
  %457 = load i8*, i8** %456, align 8
  %458 = load i64, i64* %11, align 8
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 6
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 @_STLP_STRCAT(i8* %457, i64 %458, i8* %461)
  %463 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 5
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @strlen(i8* %465)
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 6
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 @strlen(i8* %469)
  %471 = add nsw i32 %466, %470
  %472 = add nsw i32 %471, 1
  %473 = add nsw i32 %472, 1
  %474 = sext i32 %473 to i64
  store i64 %474, i64* %11, align 8
  %475 = load i64, i64* %11, align 8
  %476 = call i64 @malloc(i64 %475)
  %477 = inttoptr i64 %476 to i8*
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 8
  store i8* %477, i8** %479, align 8
  %480 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 8
  %482 = load i8*, i8** %481, align 8
  %483 = icmp ne i8* %482, null
  br i1 %483, label %489, label %484

484:                                              ; preds = %441
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %486 = call i32 @_Locale_time_destroy(%struct.TYPE_8__* %485)
  %487 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %488 = load i32*, i32** %7, align 8
  store i32 %487, i32* %488, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %538

489:                                              ; preds = %441
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 8
  %492 = load i8*, i8** %491, align 8
  %493 = load i64, i64* %11, align 8
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 5
  %496 = load i8*, i8** %495, align 8
  %497 = call i32 @_STLP_STRCPY(i8* %492, i64 %493, i8* %496)
  %498 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 8
  %500 = load i8*, i8** %499, align 8
  %501 = load i64, i64* %11, align 8
  %502 = call i32 @_STLP_STRCAT(i8* %500, i64 %501, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 8
  %505 = load i8*, i8** %504, align 8
  %506 = load i64, i64* %11, align 8
  %507 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 6
  %509 = load i8*, i8** %508, align 8
  %510 = call i32 @_STLP_STRCAT(i8* %505, i64 %506, i8* %509)
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 12
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 11
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @LOCALE_S1159, align 4
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 9
  %521 = load i8*, i8** %520, align 8
  %522 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %523 = call i32 @__GetLocaleInfoUsingACP(i32 %514, i32 %517, i32 %518, i8* %521, i32 9, i32* %522, i32 80)
  %524 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 12
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 11
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* @LOCALE_S2359, align 4
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 10
  %534 = load i8*, i8** %533, align 8
  %535 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %536 = call i32 @__GetLocaleInfoUsingACP(i32 %527, i32 %530, i32 %531, i8* %534, i32 9, i32* %535, i32 80)
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %537, %struct.TYPE_8__** %4, align 8
  br label %538

538:                                              ; preds = %489, %484, %436, %403, %368, %333, %282, %213, %142, %78, %38, %21
  %539 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %539
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @__GetLCIDFromName(i8*, i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @GetLocaleInfoA(i32, i32, i32*, i32) #1

declare dso_local i32 @_Locale_time_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @__GetLocaleInfoUsingACP(i32, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @__ConvertDate(i8*, i8*, i32) #1

declare dso_local i32 @__ConvertTime(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_STLP_STRCPY(i8*, i64, i8*) #1

declare dso_local i32 @_STLP_STRCAT(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
