; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_make_csconv.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_make_csconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i8*, i8*, i32*, i64 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nocompat\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"translit\00", align 1
@FLAG_TRANSLIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@FLAG_IGNORE = common dso_local global i32 0, align 4
@utf16_mbtowc = common dso_local global i8* null, align 8
@utf16_wctomb = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"UTF16\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"UCS-2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"UCS2\00", align 1
@FLAG_USE_BOM = common dso_local global i32 0, align 4
@utf32_mbtowc = common dso_local global i8* null, align 8
@utf32_wctomb = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"UTF-32\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"UTF32\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UCS-4\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"UCS4\00", align 1
@kernel_mbtowc = common dso_local global i8* null, align 8
@kernel_wctomb = common dso_local global i8* null, align 8
@utf8_mblen = common dso_local global i32* null, align 8
@iso2022jp_mbtowc = common dso_local global i8* null, align 8
@iso2022jp_wctomb = common dso_local global i8* null, align 8
@iso2022jp_flush = common dso_local global i32* null, align 8
@mlang_mbtowc = common dso_local global i8* null, align 8
@mlang_wctomb = common dso_local global i8* null, align 8
@eucjp_mblen = common dso_local global i32* null, align 8
@sbcs_mblen = common dso_local global i32* null, align 8
@dbcs_mblen = common dso_local global i32* null, align 8
@mbcs_mblen = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@cp932_compat = common dso_local global i32* null, align 8
@cp20932_compat = common dso_local global i32* null, align 8
@cp51932_compat = common dso_local global i32* null, align 8
@cp5022x_compat = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @make_csconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_csconv(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i8* @xstrndup(i8* %12, i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %286

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @strrstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i64 @_stricmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %7, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i64 @_stricmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @FLAG_TRANSLIT, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call i64 @_stricmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @FLAG_IGNORE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i8*, i8** %10, align 8
  store i8 0, i8* %53, align 1
  br label %21

54:                                               ; preds = %21
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @name_to_codepage(i8* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1200
  br i1 %73, label %79, label %74

74:                                               ; preds = %54
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1201
  br i1 %78, label %79, label %108

79:                                               ; preds = %74, %54
  %80 = load i8*, i8** @utf16_mbtowc, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @utf16_wctomb, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @_stricmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %79
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @_stricmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @_stricmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @_stricmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97, %93, %89, %79
  %102 = load i32, i32* @FLAG_USE_BOM, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %97
  br label %258

108:                                              ; preds = %74
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 12000
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 12001
  br i1 %117, label %118, label %147

118:                                              ; preds = %113, %108
  %119 = load i8*, i8** @utf32_mbtowc, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @utf32_wctomb, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i64 @_stricmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %118
  %129 = load i8*, i8** %9, align 8
  %130 = call i64 @_stricmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %9, align 8
  %134 = call i64 @_stricmp(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = call i64 @_stricmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136, %132, %128, %118
  %141 = load i32, i32* @FLAG_USE_BOM, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %136
  br label %257

147:                                              ; preds = %113
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 65001
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load i8*, i8** @kernel_mbtowc, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 5
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** @kernel_wctomb, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load i32*, i32** @utf8_mblen, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  br label %256

162:                                              ; preds = %147
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 50220
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 50221
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 50222
  br i1 %176, label %177, label %190

177:                                              ; preds = %172, %167, %162
  %178 = call i64 (...) @load_mlang()
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i8*, i8** @iso2022jp_mbtowc, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @iso2022jp_wctomb, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = load i32*, i32** @iso2022jp_flush, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 6
  store i32* %187, i32** %189, align 8
  br label %255

190:                                              ; preds = %177, %172
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 51932
  br i1 %194, label %195, label %208

195:                                              ; preds = %190
  %196 = call i64 (...) @load_mlang()
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i8*, i8** @mlang_mbtowc, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 5
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @mlang_wctomb, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  %205 = load i32*, i32** @eucjp_mblen, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  store i32* %205, i32** %207, align 8
  br label %254

208:                                              ; preds = %195, %190
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @IsValidCodePage(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %248

214:                                              ; preds = %208
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @GetCPInfo(i32 %217, %struct.TYPE_6__* %6)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %248

220:                                              ; preds = %214
  %221 = load i8*, i8** @kernel_mbtowc, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 5
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** @kernel_wctomb, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  store i8* %224, i8** %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %234

230:                                              ; preds = %220
  %231 = load i32*, i32** @sbcs_mblen, align 8
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  store i32* %231, i32** %233, align 8
  br label %247

234:                                              ; preds = %220
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i32*, i32** @dbcs_mblen, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  store i32* %239, i32** %241, align 8
  br label %246

242:                                              ; preds = %234
  %243 = load i32*, i32** @mbcs_mblen, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 3
  store i32* %243, i32** %245, align 8
  br label %246

246:                                              ; preds = %242, %238
  br label %247

247:                                              ; preds = %246, %230
  br label %253

248:                                              ; preds = %214, %208
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 @free(i8* %249)
  %251 = load i32, i32* @EINVAL, align 4
  store i32 %251, i32* @errno, align 4
  %252 = load i32, i32* @FALSE, align 4
  store i32 %252, i32* %3, align 4
  br label %286

253:                                              ; preds = %247
  br label %254

254:                                              ; preds = %253, %198
  br label %255

255:                                              ; preds = %254, %180
  br label %256

256:                                              ; preds = %255, %152
  br label %257

257:                                              ; preds = %256, %146
  br label %258

258:                                              ; preds = %257, %107
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %282

261:                                              ; preds = %258
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  switch i32 %264, label %281 [
    i32 932, label %265
    i32 20932, label %269
    i32 51932, label %273
    i32 50220, label %277
    i32 50221, label %277
    i32 50222, label %277
  ]

265:                                              ; preds = %261
  %266 = load i32*, i32** @cp932_compat, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  store i32* %266, i32** %268, align 8
  br label %281

269:                                              ; preds = %261
  %270 = load i32*, i32** @cp20932_compat, align 8
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  store i32* %270, i32** %272, align 8
  br label %281

273:                                              ; preds = %261
  %274 = load i32*, i32** @cp51932_compat, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 2
  store i32* %274, i32** %276, align 8
  br label %281

277:                                              ; preds = %261, %261, %261
  %278 = load i32*, i32** @cp5022x_compat, align 8
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  store i32* %278, i32** %280, align 8
  br label %281

281:                                              ; preds = %261, %277, %273, %269, %265
  br label %282

282:                                              ; preds = %281, %258
  %283 = load i8*, i8** %9, align 8
  %284 = call i32 @free(i8* %283)
  %285 = load i32, i32* @TRUE, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %282, %248, %18
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrstr(i8*, i8*) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i32 @name_to_codepage(i8*) #1

declare dso_local i64 @load_mlang(...) #1

declare dso_local i64 @IsValidCodePage(i32) #1

declare dso_local i64 @GetCPInfo(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
