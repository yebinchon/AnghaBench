; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_para.c_ME_MakeFirstParagraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_para.c_ME_MakeFirstParagraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_41__*, %struct.TYPE_47__*, i32* }
%struct.TYPE_41__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_43__ = type { %struct.TYPE_41__*, %struct.TYPE_47__*, %struct.TYPE_42__*, i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_43__*, i64 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_36__* }
%struct.TYPE_37__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i64, i32, i32, i64, i64, i64, i32 }

@ME_MakeFirstParagraph.cr_lf = internal constant [3 x i8] c"\0D\0A\00", align 1
@SYSTEM_FONT = common dso_local global i32 0, align 4
@CFM_ANIMATION = common dso_local global i32 0, align 4
@CFM_BACKCOLOR = common dso_local global i32 0, align 4
@CFM_CHARSET = common dso_local global i32 0, align 4
@CFM_COLOR = common dso_local global i32 0, align 4
@CFM_FACE = common dso_local global i32 0, align 4
@CFM_KERNING = common dso_local global i32 0, align 4
@CFM_LCID = common dso_local global i32 0, align 4
@CFM_OFFSET = common dso_local global i32 0, align 4
@CFM_REVAUTHOR = common dso_local global i32 0, align 4
@CFM_SIZE = common dso_local global i32 0, align 4
@CFM_SPACING = common dso_local global i32 0, align 4
@CFM_STYLE = common dso_local global i32 0, align 4
@CFM_UNDERLINETYPE = common dso_local global i32 0, align 4
@CFM_WEIGHT = common dso_local global i32 0, align 4
@CFM_ALLCAPS = common dso_local global i32 0, align 4
@CFM_BOLD = common dso_local global i32 0, align 4
@CFM_DISABLED = common dso_local global i32 0, align 4
@CFM_EMBOSS = common dso_local global i32 0, align 4
@CFM_HIDDEN = common dso_local global i32 0, align 4
@CFM_IMPRINT = common dso_local global i32 0, align 4
@CFM_ITALIC = common dso_local global i32 0, align 4
@CFM_LINK = common dso_local global i32 0, align 4
@CFM_OUTLINE = common dso_local global i32 0, align 4
@CFM_PROTECTED = common dso_local global i32 0, align 4
@CFM_REVISED = common dso_local global i32 0, align 4
@CFM_SHADOW = common dso_local global i32 0, align 4
@CFM_SMALLCAPS = common dso_local global i32 0, align 4
@CFM_STRIKEOUT = common dso_local global i32 0, align 4
@CFM_SUBSCRIPT = common dso_local global i32 0, align 4
@CFM_UNDERLINE = common dso_local global i32 0, align 4
@CFE_AUTOCOLOR = common dso_local global i32 0, align 4
@CFE_AUTOBACKCOLOR = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i64 0, align 8
@CFE_BOLD = common dso_local global i32 0, align 4
@CFE_ITALIC = common dso_local global i32 0, align 4
@CFE_UNDERLINE = common dso_local global i32 0, align 4
@CFU_UNDERLINE = common dso_local global i32 0, align 4
@CFE_STRIKEOUT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_MakeFirstParagraph(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca %struct.TYPE_37__, align 4
  %4 = alloca %struct.TYPE_39__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_38__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %13 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  store %struct.TYPE_35__* %15, %struct.TYPE_35__** %8, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %17 = call %struct.TYPE_36__* @make_para(%struct.TYPE_34__* %16)
  store %struct.TYPE_36__* %17, %struct.TYPE_36__** %9, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ITextHost_TxGetDC(i32 %21)
  %23 = call i32 @ME_InitContext(%struct.TYPE_37__* %3, %struct.TYPE_34__* %18, i32 %22)
  %24 = load i32, i32* @SYSTEM_FONT, align 4
  %25 = call i32 @GetStockObject(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GetObjectW(i32 %28, i32 56, %struct.TYPE_38__* %6)
  %30 = call i32 @ZeroMemory(%struct.TYPE_39__* %4, i32 48)
  %31 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 0
  store i32 48, i32* %31, align 8
  %32 = load i32, i32* @CFM_ANIMATION, align 4
  %33 = load i32, i32* @CFM_BACKCOLOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CFM_CHARSET, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CFM_COLOR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CFM_FACE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CFM_KERNING, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CFM_LCID, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CFM_OFFSET, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @CFM_REVAUTHOR, align 4
  %49 = load i32, i32* @CFM_SIZE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CFM_SPACING, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CFM_STYLE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CFM_UNDERLINETYPE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CFM_WEIGHT, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @CFM_ALLCAPS, align 4
  %63 = load i32, i32* @CFM_BOLD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CFM_DISABLED, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CFM_EMBOSS, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CFM_HIDDEN, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @CFM_IMPRINT, align 4
  %75 = load i32, i32* @CFM_ITALIC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CFM_LINK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CFM_OUTLINE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CFM_PROTECTED, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @CFM_REVISED, align 4
  %87 = load i32, i32* @CFM_SHADOW, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @CFM_SMALLCAPS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CFM_STRIKEOUT, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @CFM_SUBSCRIPT, align 4
  %97 = load i32, i32* @CFM_UNDERLINE, align 4
  %98 = or i32 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %103 = load i32, i32* @CFE_AUTOBACKCOLOR, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @lstrcpyW(i32 %107, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 72
  %114 = mul nsw i32 %113, 1440
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %3, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %3, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = sdiv i32 %114, %121
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FW_NORMAL, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %1
  %129 = load i32, i32* @CFE_BOLD, align 4
  %130 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %128, %1
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 4
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i32, i32* @CFE_ITALIC, align 4
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %140, %133
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* @CFE_UNDERLINE, align 4
  %151 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %149, %145
  %155 = load i32, i32* @CFU_UNDERLINE, align 4
  %156 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 8
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load i32, i32* @CFE_STRIKEOUT, align 4
  %162 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %160, %154
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 7
  store i32 %167, i32* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 6
  store i32 %170, i32* %171, align 4
  %172 = call i32 (...) @GetSystemDefaultLCID()
  %173 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 5
  store i32 %172, i32* %173, align 8
  %174 = call i32* @ME_MakeStyle(%struct.TYPE_39__* %4)
  store i32* %174, i32** %11, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 2
  store i32* %175, i32** %177, align 8
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @ITextHost_TxGetCharFormat(i32 %180, i32** %5)
  %182 = load i64, i64* @S_OK, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %165
  %185 = call i32 @ZeroMemory(%struct.TYPE_39__* %4, i32 48)
  %186 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %4, i32 0, i32 0
  store i32 48, i32* %186, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = bitcast i32* %187 to %struct.TYPE_39__*
  %189 = call i32 @cfany_to_cf2w(%struct.TYPE_39__* %4, %struct.TYPE_39__* %188)
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %191 = call i32 @ME_SetDefaultCharFormat(%struct.TYPE_34__* %190, %struct.TYPE_39__* %4)
  br label %192

192:                                              ; preds = %184, %165
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 2, i32 1
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @ME_MakeStringN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ME_MakeFirstParagraph.cr_lf, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %203, i32 0, i32 3
  store i32 %200, i32* %204, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* @MERF_ENDPARA, align 4
  %207 = call %struct.TYPE_36__* @ME_MakeRun(i32* %205, i32 %206)
  store %struct.TYPE_36__* %207, %struct.TYPE_36__** %10, align 8
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 8
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %222, i32 0, i32 1
  store %struct.TYPE_43__* %219, %struct.TYPE_43__** %223, align 8
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 2
  store %struct.TYPE_42__* %226, %struct.TYPE_42__** %230, align 8
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %232, align 8
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %235 = call i32 @ME_InsertBefore(%struct.TYPE_41__* %233, %struct.TYPE_36__* %234)
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %237, align 8
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %240 = call i32 @ME_InsertBefore(%struct.TYPE_41__* %238, %struct.TYPE_36__* %239)
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_47__*, %struct.TYPE_47__** %242, align 8
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %246, i32 0, i32 1
  store %struct.TYPE_47__* %243, %struct.TYPE_47__** %247, align 8
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %249, align 8
  %251 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %253, i32 0, i32 0
  store %struct.TYPE_41__* %250, %struct.TYPE_41__** %254, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_47__*, %struct.TYPE_47__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %260, i32 0, i32 0
  store %struct.TYPE_36__* %255, %struct.TYPE_36__** %261, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %263 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_41__*, %struct.TYPE_41__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %267, i32 0, i32 1
  store %struct.TYPE_36__* %262, %struct.TYPE_36__** %268, align 8
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i32 2, i32 1
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_41__*, %struct.TYPE_41__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %279, i32 0, i32 0
  store i32 %274, i32* %280, align 8
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %283 = call i32 @add_marked_para(%struct.TYPE_34__* %281, %struct.TYPE_36__* %282)
  %284 = call i32 @ME_DestroyContext(%struct.TYPE_37__* %3)
  ret void
}

declare dso_local %struct.TYPE_36__* @make_para(%struct.TYPE_34__*) #1

declare dso_local i32 @ME_InitContext(%struct.TYPE_37__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @ITextHost_TxGetDC(i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_38__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

declare dso_local i32 @GetSystemDefaultLCID(...) #1

declare dso_local i32* @ME_MakeStyle(%struct.TYPE_39__*) #1

declare dso_local i64 @ITextHost_TxGetCharFormat(i32, i32**) #1

declare dso_local i32 @cfany_to_cf2w(%struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i32 @ME_SetDefaultCharFormat(%struct.TYPE_34__*, %struct.TYPE_39__*) #1

declare dso_local i32 @ME_MakeStringN(i8*, i32) #1

declare dso_local %struct.TYPE_36__* @ME_MakeRun(i32*, i32) #1

declare dso_local i32 @ME_InsertBefore(%struct.TYPE_41__*, %struct.TYPE_36__*) #1

declare dso_local i32 @add_marked_para(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ME_DestroyContext(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
