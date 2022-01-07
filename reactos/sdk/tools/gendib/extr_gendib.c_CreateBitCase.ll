; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateBitCase.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateBitCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }

@FLAG_FORCENOUSESSOURCE = common dso_local global i32 0, align 4
@FLAG_PATTERNSURFACE = common dso_local global i32 0, align 4
@FLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"PatternY = (BltInfo->DestRect.top - BltInfo->BrushOrigin.y) %%\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"           BltInfo->PatternSurface->sizlBitmap.cy;\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"PatternY = (BltInfo->DestRect.bottom - 1 -\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"            BltInfo->BrushOrigin.y) %%\0A\00", align 1
@ROPCODE_SRCCOPY = common dso_local global i64 0, align 8
@FLAG_TRIVIALXLATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"CenterCount = %u * (BltInfo->DestRect.right -\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"                   BltInfo->DestRect.left);\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"BasePatternX = (BltInfo->DestRect.left - BltInfo->BrushOrigin.x) %%\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"           BltInfo->PatternSurface->sizlBitmap.cx;\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"for (LineIndex = 0; LineIndex < LineCount; LineIndex++)\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"SourcePtr = (PULONG) SourceBase;\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"RawSource = *SourcePtr++;\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"SourcePixels = BaseSourcePixels;\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"DestPtr = (PULONG) DestBase;\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"PatternX = BasePatternX;\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"RtlMoveMemory(DestBase, SourceBase, CenterCount);\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"if (0 != LeftCount)\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"for (i = 0; i < LeftCount; i++)\0A\00", align 1
@FLAG_FORCERAWSOURCEAVAIL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"for (i = 0; i < CenterCount; i++)\0A\00", align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"Pattern = DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY);\0A\00", align 1
@.str.22 = private unnamed_addr constant [83 x i8] c"Pattern |= DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY) << %u;\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"if (BltInfo->PatternSurface->sizlBitmap.cx <= ++PatternX)\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"PatternX -= BltInfo->PatternSurface->sizlBitmap.cx;\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"DestPtr++;\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"if (0 != RightCount)\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"for (i = 0; i < RightCount; i++)\0A\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"if (BltInfo->PatternSurface->sizlBitmap.cy <= ++PatternY)\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"PatternY -= BltInfo->PatternSurface->sizlBitmap.cy;\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"if (0 == PatternY--)\0A\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"PatternY = BltInfo->PatternSurface->sizlBitmap.cy - 1;\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"SourceBase %c= BltInfo->SourceSurface->lDelta;\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"DestBase %c= BltInfo->DestSurface->lDelta;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_6__*, i32, i32)* @CreateBitCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateBitCase(i32* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @MARK(i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 0, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @CreateBase(i32* %24, i32 1, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @CreateBase(i32* %29, i32 0, i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @CreateCounts(i32* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @MARK(i32* %36)
  br label %38

38:                                               ; preds = %28, %5
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 0, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 0, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 (i32*, i8*, ...) @Output(i32* %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %65

58:                                               ; preds = %48
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 (i32*, i8*, ...) @Output(i32* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 (i32*, i8*, ...) @Output(i32* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 (i32*, i8*, ...) @Output(i32* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65, %43, %38
  %67 = load i64, i64* @ROPCODE_SRCCOPY, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 0, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = lshr i32 %83, 3
  %85 = call i32 (i32*, i8*, ...) @Output(i32* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 (i32*, i8*, ...) @Output(i32* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %77, %72, %66
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 0, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 (i32*, i8*, ...) @Output(i32* %99, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 (i32*, i8*, ...) @Output(i32* %101, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93, %88
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 (i32*, i8*, ...) @Output(i32* %104, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 (i32*, i8*, ...) @Output(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i64, i64* @ROPCODE_SRCCOPY, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 0, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %118, %113, %103
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 0, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 (i32*, i8*, ...) @Output(i32* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %135 = load i32, i32* %10, align 4
  %136 = icmp ule i32 %135, 16
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 (i32*, i8*, ...) @Output(i32* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 (i32*, i8*, ...) @Output(i32* %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %142

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142, %127, %122
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 (i32*, i8*, ...) @Output(i32* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %118
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 0, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 (i32*, i8*, ...) @Output(i32* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %151, %146
  %160 = load i64, i64* @ROPCODE_SRCCOPY, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %159
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 0, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 (i32*, i8*, ...) @Output(i32* %175, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 (i32*, i8*, ...) @Output(i32* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %377

179:                                              ; preds = %170, %165, %159
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 (i32*, i8*, ...) @Output(i32* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 32, %182
  br i1 %183, label %184, label %217

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = icmp eq i32 16, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32*, i32** %6, align 8
  %189 = call i32 (i32*, i8*, ...) @Output(i32* %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %193

190:                                              ; preds = %184
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 (i32*, i8*, ...) @Output(i32* %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 (i32*, i8*, ...) @Output(i32* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %199 = load i32, i32* %7, align 4
  %200 = icmp eq i32 16, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %193
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @FLAG_FORCERAWSOURCEAVAIL, align 4
  %204 = or i32 %202, %203
  br label %207

205:                                              ; preds = %193
  %206 = load i32, i32* %9, align 4
  br label %207

207:                                              ; preds = %205, %201
  %208 = phi i32 [ %204, %201 ], [ %206, %205 ]
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @CreateSetSinglePixel(i32* %196, i32 %197, %struct.TYPE_6__* %198, i32 %208, i32 %209)
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @MARK(i32* %211)
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 (i32*, i8*, ...) @Output(i32* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 (i32*, i8*, ...) @Output(i32* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %217

217:                                              ; preds = %207, %179
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 (i32*, i8*, ...) @Output(i32* %218, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 (i32*, i8*, ...) @Output(i32* %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %217
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %229 = and i32 %227, %228
  %230 = icmp eq i32 0, %229
  br i1 %230, label %231, label %255

231:                                              ; preds = %226
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %249, %231
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %7, align 4
  %235 = udiv i32 32, %234
  %236 = icmp ult i32 %233, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %232
  %238 = load i32*, i32** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %7, align 4
  %245 = mul i32 %243, %244
  %246 = call i32 @CreateGetSource(i32* %238, i32 %239, %struct.TYPE_6__* %240, i32 %241, i32 %242, i32 %245)
  %247 = load i32*, i32** %6, align 8
  %248 = call i32 @MARK(i32* %247)
  br label %249

249:                                              ; preds = %237
  %250 = load i32, i32* %11, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %11, align 4
  br label %232

252:                                              ; preds = %232
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 (i32*, i8*, ...) @Output(i32* %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %226, %217
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %298

260:                                              ; preds = %255
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 0, %263
  br i1 %264, label %265, label %298

265:                                              ; preds = %260
  store i32 0, i32* %11, align 4
  br label %266

266:                                              ; preds = %292, %265
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %7, align 4
  %269 = udiv i32 32, %268
  %270 = icmp ult i32 %267, %269
  br i1 %270, label %271, label %295

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = icmp eq i32 0, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32*, i32** %6, align 8
  %276 = call i32 (i32*, i8*, ...) @Output(i32* %275, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.21, i64 0, i64 0))
  br label %283

277:                                              ; preds = %271
  %278 = load i32*, i32** %6, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* %7, align 4
  %281 = mul i32 %279, %280
  %282 = call i32 (i32*, i8*, ...) @Output(i32* %278, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.22, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %277, %274
  %284 = load i32*, i32** %6, align 8
  %285 = call i32 (i32*, i8*, ...) @Output(i32* %284, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0))
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 (i32*, i8*, ...) @Output(i32* %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %288 = load i32*, i32** %6, align 8
  %289 = call i32 (i32*, i8*, ...) @Output(i32* %288, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0))
  %290 = load i32*, i32** %6, align 8
  %291 = call i32 (i32*, i8*, ...) @Output(i32* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %292

292:                                              ; preds = %283
  %293 = load i32, i32* %11, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %11, align 4
  br label %266

295:                                              ; preds = %266
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 (i32*, i8*, ...) @Output(i32* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %298

298:                                              ; preds = %295, %260, %255
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @CreateOperation(i32* %299, i32 %300, %struct.TYPE_6__* %301, i32 %302, i32 32)
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 (i32*, i8*, ...) @Output(i32* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %306 = load i32*, i32** %6, align 8
  %307 = call i32 @MARK(i32* %306)
  %308 = load i32*, i32** %6, align 8
  %309 = call i32 (i32*, i8*, ...) @Output(i32* %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %310 = load i32*, i32** %6, align 8
  %311 = call i32 (i32*, i8*, ...) @Output(i32* %310, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %312 = load i32*, i32** %6, align 8
  %313 = call i32 (i32*, i8*, ...) @Output(i32* %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %314 = load i32*, i32** %6, align 8
  %315 = call i32 (i32*, i8*, ...) @Output(i32* %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %316 = load i32, i32* %7, align 4
  %317 = icmp ne i32 32, %316
  br i1 %317, label %318, label %342

318:                                              ; preds = %298
  %319 = load i32, i32* %7, align 4
  %320 = icmp eq i32 16, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i32*, i32** %6, align 8
  %323 = call i32 (i32*, i8*, ...) @Output(i32* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  br label %327

324:                                              ; preds = %318
  %325 = load i32*, i32** %6, align 8
  %326 = call i32 (i32*, i8*, ...) @Output(i32* %325, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32*, i32** %6, align 8
  %329 = call i32 (i32*, i8*, ...) @Output(i32* %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %330 = load i32*, i32** %6, align 8
  %331 = load i32, i32* %7, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %10, align 4
  %335 = call i32 @CreateSetSinglePixel(i32* %330, i32 %331, %struct.TYPE_6__* %332, i32 %333, i32 %334)
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 @MARK(i32* %336)
  %338 = load i32*, i32** %6, align 8
  %339 = call i32 (i32*, i8*, ...) @Output(i32* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %340 = load i32*, i32** %6, align 8
  %341 = call i32 (i32*, i8*, ...) @Output(i32* %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %342

342:                                              ; preds = %327, %298
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %376

347:                                              ; preds = %342
  %348 = load i32, i32* %9, align 4
  %349 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 0, %350
  br i1 %351, label %352, label %376

352:                                              ; preds = %347
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %355 = and i32 %353, %354
  %356 = icmp eq i32 0, %355
  br i1 %356, label %357, label %366

357:                                              ; preds = %352
  %358 = load i32*, i32** %6, align 8
  %359 = call i32 (i32*, i8*, ...) @Output(i32* %358, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.29, i64 0, i64 0))
  %360 = load i32*, i32** %6, align 8
  %361 = call i32 (i32*, i8*, ...) @Output(i32* %360, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %362 = load i32*, i32** %6, align 8
  %363 = call i32 (i32*, i8*, ...) @Output(i32* %362, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0))
  %364 = load i32*, i32** %6, align 8
  %365 = call i32 (i32*, i8*, ...) @Output(i32* %364, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %375

366:                                              ; preds = %352
  %367 = load i32*, i32** %6, align 8
  %368 = call i32 (i32*, i8*, ...) @Output(i32* %367, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %369 = load i32*, i32** %6, align 8
  %370 = call i32 (i32*, i8*, ...) @Output(i32* %369, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %371 = load i32*, i32** %6, align 8
  %372 = call i32 (i32*, i8*, ...) @Output(i32* %371, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0))
  %373 = load i32*, i32** %6, align 8
  %374 = call i32 (i32*, i8*, ...) @Output(i32* %373, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %375

375:                                              ; preds = %366, %357
  br label %376

376:                                              ; preds = %375, %347, %342
  br label %377

377:                                              ; preds = %376, %174
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %396

382:                                              ; preds = %377
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %385 = and i32 %383, %384
  %386 = icmp eq i32 0, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %382
  %388 = load i32*, i32** %6, align 8
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %391 = and i32 %389, %390
  %392 = icmp eq i32 0, %391
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i32 43, i32 45
  %395 = call i32 (i32*, i8*, ...) @Output(i32* %388, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0), i32 %394)
  br label %396

396:                                              ; preds = %387, %382, %377
  %397 = load i32*, i32** %6, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %400 = and i32 %398, %399
  %401 = icmp eq i32 0, %400
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 43, i32 45
  %404 = call i32 (i32*, i8*, ...) @Output(i32* %397, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0), i32 %403)
  %405 = load i32*, i32** %6, align 8
  %406 = call i32 (i32*, i8*, ...) @Output(i32* %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @CreateBase(i32*, i32, i32, i32) #1

declare dso_local i32 @CreateCounts(i32*, i32) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

declare dso_local i32 @CreateSetSinglePixel(i32*, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CreateGetSource(i32*, i32, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @CreateOperation(i32*, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
