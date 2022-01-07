; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showfield.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@TU = common dso_local global i32 0, align 4
@FT = common dso_local global i32 0, align 4
@Parent = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"field %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"    Type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"    Flags:\00", align 1
@PDF_FIELD_IS_READ_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" readonly\00", align 1
@PDF_FIELD_IS_REQUIRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" required\00", align 1
@PDF_FIELD_IS_NO_EXPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" noExport\00", align 1
@Btn = common dso_local global i32 0, align 4
@PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c" noToggleToOff\00", align 1
@PDF_BTN_FIELD_IS_RADIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" radio\00", align 1
@PDF_BTN_FIELD_IS_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c" pushButton\00", align 1
@PDF_BTN_FIELD_IS_RADIOS_IN_UNISON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c" radiosInUnison\00", align 1
@Tx = common dso_local global i32 0, align 4
@PDF_TX_FIELD_IS_MULTILINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c" multiline\00", align 1
@PDF_TX_FIELD_IS_PASSWORD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c" password\00", align 1
@PDF_TX_FIELD_IS_FILE_SELECT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c" fileSelect\00", align 1
@PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c" dontSpellCheck\00", align 1
@PDF_TX_FIELD_IS_DO_NOT_SCROLL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c" dontScroll\00", align 1
@PDF_TX_FIELD_IS_COMB = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c" comb\00", align 1
@PDF_TX_FIELD_IS_RICH_TEXT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c" richText\00", align 1
@Ch = common dso_local global i32 0, align 4
@PDF_CH_FIELD_IS_COMBO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c" combo\00", align 1
@PDF_CH_FIELD_IS_EDIT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c" edit\00", align 1
@PDF_CH_FIELD_IS_SORT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c" sort\00", align 1
@PDF_CH_FIELD_IS_MULTI_SELECT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c" multiSelect\00", align 1
@PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK = common dso_local global i32 0, align 4
@PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c" commitOnSelChange\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"    Name: %(\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"    Label: %q\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"    Parent: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"AA/K\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Keystroke\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"AA/V\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Validate\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"AA/F\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"AA/C\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Calculate\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"AA/E\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Enter\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"AA/X\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"AA/D\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"AA/U\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"AA/Fo\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Focus\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"AA/Bl\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@Kids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @showfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showfield(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32, i32* @ctx, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @pdf_field_name(i32 %11, i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* @ctx, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @TU, align 4
  %17 = call i32* @PDF_NAME(i32 %16)
  %18 = call i8* @pdf_dict_get_text_string(i32 %14, i32* %15, i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* @ctx, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @FT, align 4
  %22 = call i32* @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get_inheritable(i32 %19, i32* %20, i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32, i32* @ctx, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @pdf_field_flags(i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @ctx, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @Parent, align 4
  %30 = call i32* @PDF_NAME(i32 %29)
  %31 = call i32* @pdf_dict_get(i32 %27, i32* %28, i32* %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* @ctx, align 4
  %33 = load i32, i32* @out, align 4
  %34 = load i32, i32* @ctx, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i8* @pdf_to_num(i32 %34, i32* %35)
  %37 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %32, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @ctx, align 4
  %39 = load i32, i32* @out, align 4
  %40 = load i32, i32* @ctx, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @pdf_to_name(i32 %40, i32* %41)
  %43 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %251

46:                                               ; preds = %1
  %47 = load i32, i32* @ctx, align 4
  %48 = load i32, i32* @out, align 4
  %49 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %47, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PDF_FIELD_IS_READ_ONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @ctx, align 4
  %56 = load i32, i32* @out, align 4
  %57 = call i32 @fz_write_string(i32 %55, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @PDF_FIELD_IS_REQUIRED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @ctx, align 4
  %65 = load i32, i32* @out, align 4
  %66 = call i32 @fz_write_string(i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PDF_FIELD_IS_NO_EXPORT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @ctx, align 4
  %74 = load i32, i32* @out, align 4
  %75 = call i32 @fz_write_string(i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @Btn, align 4
  %79 = call i32* @PDF_NAME(i32 %78)
  %80 = icmp eq i32* %77, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @ctx, align 4
  %88 = load i32, i32* @out, align 4
  %89 = call i32 @fz_write_string(i32 %87, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PDF_BTN_FIELD_IS_RADIO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @ctx, align 4
  %97 = load i32, i32* @out, align 4
  %98 = call i32 @fz_write_string(i32 %96, i32 %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @PDF_BTN_FIELD_IS_PUSHBUTTON, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @ctx, align 4
  %106 = load i32, i32* @out, align 4
  %107 = call i32 @fz_write_string(i32 %105, i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @PDF_BTN_FIELD_IS_RADIOS_IN_UNISON, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @ctx, align 4
  %115 = load i32, i32* @out, align 4
  %116 = call i32 @fz_write_string(i32 %114, i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %76
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @Tx, align 4
  %121 = call i32* @PDF_NAME(i32 %120)
  %122 = icmp eq i32* %119, %121
  br i1 %122, label %123, label %187

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @PDF_TX_FIELD_IS_MULTILINE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @ctx, align 4
  %130 = load i32, i32* @out, align 4
  %131 = call i32 @fz_write_string(i32 %129, i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PDF_TX_FIELD_IS_PASSWORD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @ctx, align 4
  %139 = load i32, i32* @out, align 4
  %140 = call i32 @fz_write_string(i32 %138, i32 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @PDF_TX_FIELD_IS_FILE_SELECT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @ctx, align 4
  %148 = load i32, i32* @out, align 4
  %149 = call i32 @fz_write_string(i32 %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @ctx, align 4
  %157 = load i32, i32* @out, align 4
  %158 = call i32 @fz_write_string(i32 %156, i32 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @PDF_TX_FIELD_IS_DO_NOT_SCROLL, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @ctx, align 4
  %166 = load i32, i32* @out, align 4
  %167 = call i32 @fz_write_string(i32 %165, i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @PDF_TX_FIELD_IS_COMB, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @ctx, align 4
  %175 = load i32, i32* @out, align 4
  %176 = call i32 @fz_write_string(i32 %174, i32 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @PDF_TX_FIELD_IS_RICH_TEXT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @ctx, align 4
  %184 = load i32, i32* @out, align 4
  %185 = call i32 @fz_write_string(i32 %183, i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %177
  br label %187

187:                                              ; preds = %186, %118
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* @Ch, align 4
  %190 = call i32* @PDF_NAME(i32 %189)
  %191 = icmp eq i32* %188, %190
  br i1 %191, label %192, label %247

192:                                              ; preds = %187
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @PDF_CH_FIELD_IS_COMBO, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @ctx, align 4
  %199 = load i32, i32* @out, align 4
  %200 = call i32 @fz_write_string(i32 %198, i32 %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %192
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @PDF_CH_FIELD_IS_EDIT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load i32, i32* @ctx, align 4
  %208 = load i32, i32* @out, align 4
  %209 = call i32 @fz_write_string(i32 %207, i32 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @PDF_CH_FIELD_IS_SORT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* @ctx, align 4
  %217 = load i32, i32* @out, align 4
  %218 = call i32 @fz_write_string(i32 %216, i32 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %219

219:                                              ; preds = %215, %210
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @PDF_CH_FIELD_IS_MULTI_SELECT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %219
  %225 = load i32, i32* @ctx, align 4
  %226 = load i32, i32* @out, align 4
  %227 = call i32 @fz_write_string(i32 %225, i32 %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  br label %228

228:                                              ; preds = %224, %219
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, i32* @ctx, align 4
  %235 = load i32, i32* @out, align 4
  %236 = call i32 @fz_write_string(i32 %234, i32 %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load i32, i32* @ctx, align 4
  %244 = load i32, i32* @out, align 4
  %245 = call i32 @fz_write_string(i32 %243, i32 %244, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  br label %246

246:                                              ; preds = %242, %237
  br label %247

247:                                              ; preds = %246, %187
  %248 = load i32, i32* @ctx, align 4
  %249 = load i32, i32* @out, align 4
  %250 = call i32 @fz_write_string(i32 %248, i32 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %251

251:                                              ; preds = %247, %1
  %252 = load i32, i32* @ctx, align 4
  %253 = load i32, i32* @out, align 4
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %252, i32 %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %254)
  %256 = load i8*, i8** %6, align 8
  %257 = load i8, i8* %256, align 1
  %258 = icmp ne i8 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load i32, i32* @ctx, align 4
  %261 = load i32, i32* @out, align 4
  %262 = load i8*, i8** %6, align 8
  %263 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %260, i32 %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* %262)
  br label %264

264:                                              ; preds = %259, %251
  %265 = load i32*, i32** %5, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load i32, i32* @ctx, align 4
  %269 = load i32, i32* @out, align 4
  %270 = load i32, i32* @ctx, align 4
  %271 = load i32*, i32** %5, align 8
  %272 = call i8* @pdf_to_num(i32 %270, i32* %271)
  %273 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %268, i32 %269, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %272)
  br label %274

274:                                              ; preds = %267, %264
  %275 = load i32, i32* @ctx, align 4
  %276 = load i32*, i32** %2, align 8
  %277 = call i32 @pdf_dict_getp(i32 %275, i32* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %278 = call i32 @showaction(i32 %277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %279 = load i32, i32* @ctx, align 4
  %280 = load i32*, i32** %2, align 8
  %281 = call i32 @pdf_dict_getp(i32 %279, i32* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %282 = call i32 @showaction(i32 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %283 = load i32, i32* @ctx, align 4
  %284 = load i32*, i32** %2, align 8
  %285 = call i32 @pdf_dict_getp(i32 %283, i32* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %286 = call i32 @showaction(i32 %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %287 = load i32, i32* @ctx, align 4
  %288 = load i32*, i32** %2, align 8
  %289 = call i32 @pdf_dict_getp(i32 %287, i32* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %290 = call i32 @showaction(i32 %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %291 = load i32, i32* @ctx, align 4
  %292 = load i32*, i32** %2, align 8
  %293 = call i32 @pdf_dict_getp(i32 %291, i32* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %294 = call i32 @showaction(i32 %293, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  %295 = load i32, i32* @ctx, align 4
  %296 = load i32*, i32** %2, align 8
  %297 = call i32 @pdf_dict_getp(i32 %295, i32* %296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %298 = call i32 @showaction(i32 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %299 = load i32, i32* @ctx, align 4
  %300 = load i32*, i32** %2, align 8
  %301 = call i32 @pdf_dict_getp(i32 %299, i32* %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %302 = call i32 @showaction(i32 %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0))
  %303 = load i32, i32* @ctx, align 4
  %304 = load i32*, i32** %2, align 8
  %305 = call i32 @pdf_dict_getp(i32 %303, i32* %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  %306 = call i32 @showaction(i32 %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %307 = load i32, i32* @ctx, align 4
  %308 = load i32*, i32** %2, align 8
  %309 = call i32 @pdf_dict_getp(i32 %307, i32* %308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %310 = call i32 @showaction(i32 %309, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  %311 = load i32, i32* @ctx, align 4
  %312 = load i32*, i32** %2, align 8
  %313 = call i32 @pdf_dict_getp(i32 %311, i32* %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %314 = call i32 @showaction(i32 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0))
  %315 = load i32, i32* @ctx, align 4
  %316 = load i32*, i32** %2, align 8
  %317 = call i32 @pdf_dict_getp(i32 %315, i32* %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0))
  %318 = call i32 @showaction(i32 %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0))
  %319 = load i32, i32* @ctx, align 4
  %320 = load i32, i32* @out, align 4
  %321 = call i32 @fz_write_string(i32 %319, i32 %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %322 = load i32, i32* @ctx, align 4
  %323 = load i32*, i32** %2, align 8
  %324 = load i32, i32* @Kids, align 4
  %325 = call i32* @PDF_NAME(i32 %324)
  %326 = call i32* @pdf_dict_get(i32 %322, i32* %323, i32* %325)
  store i32* %326, i32** %3, align 8
  %327 = load i32, i32* @ctx, align 4
  %328 = load i32*, i32** %3, align 8
  %329 = call i32 @pdf_array_len(i32 %327, i32* %328)
  store i32 %329, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %330

330:                                              ; preds = %339, %274
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %330
  %335 = load i32, i32* @ctx, align 4
  %336 = load i32*, i32** %3, align 8
  %337 = load i32, i32* %9, align 4
  %338 = call i32* @pdf_array_get(i32 %335, i32* %336, i32 %337)
  call void @showfield(i32* %338)
  br label %339

339:                                              ; preds = %334
  %340 = load i32, i32* %9, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %9, align 4
  br label %330

342:                                              ; preds = %330
  ret void
}

declare dso_local i8* @pdf_field_name(i32, i32*) #1

declare dso_local i8* @pdf_dict_get_text_string(i32, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get_inheritable(i32, i32*, i32*) #1

declare dso_local i32 @pdf_field_flags(i32, i32*) #1

declare dso_local i32* @pdf_dict_get(i32, i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32, i32, i8*, ...) #1

declare dso_local i8* @pdf_to_num(i32, i32*) #1

declare dso_local i8* @pdf_to_name(i32, i32*) #1

declare dso_local i32 @fz_write_string(i32, i32, i8*) #1

declare dso_local i32 @showaction(i32, i8*) #1

declare dso_local i32 @pdf_dict_getp(i32, i32*, i8*) #1

declare dso_local i32 @pdf_array_len(i32, i32*) #1

declare dso_local i32* @pdf_array_get(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
