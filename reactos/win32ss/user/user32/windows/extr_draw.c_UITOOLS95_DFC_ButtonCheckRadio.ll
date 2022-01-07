; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DFC_ButtonCheckRadio.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DFC_ButtonCheckRadio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@DEFAULT_CHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Marlett\00", align 1
@DFCS_BUTTONRADIOMASK = common dso_local global i32 0, align 4
@NONANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@NULL_PEN = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i64 0, align 8
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@COLOR_BTNFACE = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@DFCS_MONO = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@COLOR_BTNSHADOW = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_3DDKSHADOW = common dso_local global i32 0, align 4
@COLOR_3DLIGHT = common dso_local global i32 0, align 4
@DFCS_CHECKED = common dso_local global i32 0, align 4
@COLOR_WINDOWTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@OPAQUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_11__*, i32, i64)* @UITOOLS95_DFC_ButtonCheckRadio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UITOOLS95_DFC_ButtonCheckRadio(i32 %0, %struct.TYPE_11__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @GetBkMode(i32 %29)
  store i64 %30, i64* %23, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @GetTextColor(i32 %31)
  store i32 %32, i32* %24, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  store i64 %39, i64* %20, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %21, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %4
  %51 = load i64, i64* %20, align 8
  br label %54

52:                                               ; preds = %4
  %53 = load i64, i64* %21, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %22, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %22, align 8
  %61 = sub nsw i64 %59, %60
  %62 = sdiv i64 %61, 2
  %63 = add nsw i64 %58, %62
  store i64 %63, i64* %18, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %22, align 8
  %69 = sub nsw i64 %67, %68
  %70 = sdiv i64 %69, 2
  %71 = add nsw i64 %66, %70
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %54
  store i8 106, i8* %13, align 1
  store i8 107, i8* %14, align 1
  store i8 108, i8* %15, align 1
  store i8 109, i8* %16, align 1
  store i8 110, i8* %17, align 1
  br label %76

75:                                               ; preds = %54
  store i8 99, i8* %13, align 1
  store i8 100, i8* %14, align 1
  store i8 101, i8* %15, align 1
  store i8 102, i8* %16, align 1
  store i8 103, i8* %17, align 1
  br label %76

76:                                               ; preds = %75, %74
  %77 = call i32 @ZeroMemory(%struct.TYPE_12__* %9, i32 24)
  %78 = load i64, i64* %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* @DEFAULT_CHARSET, align 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @TEXT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 @lstrcpy(i32 %83, i32 %84)
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 255
  %91 = load i32, i32* @DFCS_BUTTONRADIOMASK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @NONANTIALIASED_QUALITY, align 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %88, %76
  %97 = call i64 @CreateFontIndirect(%struct.TYPE_12__* %9)
  store i64 %97, i64* %10, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @SelectObject(i32 %98, i64 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %157

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 255
  %106 = load i32, i32* @DFCS_BUTTONRADIOMASK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %157

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i32, i32* @WHITE_BRUSH, align 4
  %112 = call i64 @GetStockObject(i32 %111)
  %113 = trunc i64 %112 to i32
  %114 = call i32 @FillRect(i32 %109, %struct.TYPE_11__* %110, i32 %113)
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %22, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %22, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @SetRect(%struct.TYPE_10__* %25, i64 %115, i64 %116, i64 %119, i64 %122)
  %124 = load i64, i64* %22, align 8
  %125 = mul nsw i64 %124, 8
  %126 = sub nsw i64 0, %125
  %127 = sdiv i64 %126, 54
  %128 = load i64, i64* %22, align 8
  %129 = mul nsw i64 %128, 8
  %130 = sub nsw i64 0, %129
  %131 = sdiv i64 %130, 54
  %132 = call i32 @InflateRect(%struct.TYPE_10__* %25, i64 %127, i64 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @BLACK_BRUSH, align 4
  %135 = call i64 @GetStockObject(i32 %134)
  %136 = call i64 @SelectObject(i32 %133, i64 %135)
  store i64 %136, i64* %26, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @NULL_PEN, align 4
  %139 = call i64 @GetStockObject(i32 %138)
  %140 = call i64 @SelectObject(i32 %137, i64 %139)
  store i64 %140, i64* %27, align 8
  %141 = load i32, i32* %5, align 4
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @Ellipse(i32 %141, i32 %143, i32 %145, i32 %147, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = load i64, i64* %26, align 8
  %153 = call i64 @SelectObject(i32 %151, i64 %152)
  %154 = load i32, i32* %5, align 4
  %155 = load i64, i64* %27, align 8
  %156 = call i64 @SelectObject(i32 %154, i64 %155)
  br label %260

157:                                              ; preds = %103, %96
  %158 = load i32, i32* %5, align 4
  %159 = load i64, i64* @TRANSPARENT, align 8
  %160 = call i32 @SetBkMode(i32 %158, i64 %159)
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @DFCS_INACTIVE, align 4
  %163 = load i32, i32* @DFCS_PUSHED, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %157
  %168 = load i32, i32* @COLOR_BTNFACE, align 4
  store i32 %168, i32* %12, align 4
  br label %171

169:                                              ; preds = %157
  %170 = load i32, i32* @COLOR_WINDOW, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @GetSysColor(i32 %173)
  %175 = call i32 @SetTextColor(i32 %172, i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = load i64, i64* %18, align 8
  %178 = load i64, i64* %19, align 8
  %179 = call i32 @TextOut(i32 %176, i64 %177, i64 %178, i8* %17, i32 1)
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @DFCS_FLAT, align 4
  %182 = load i32, i32* @DFCS_MONO, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %171
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  %189 = call i32 @GetSysColor(i32 %188)
  %190 = call i32 @SetTextColor(i32 %187, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %19, align 8
  %194 = call i32 @TextOut(i32 %191, i64 %192, i64 %193, i8* %13, i32 1)
  %195 = load i32, i32* %5, align 4
  %196 = load i64, i64* %18, align 8
  %197 = load i64, i64* %19, align 8
  %198 = call i32 @TextOut(i32 %195, i64 %196, i64 %197, i8* %14, i32 1)
  %199 = load i32, i32* %5, align 4
  %200 = load i64, i64* %18, align 8
  %201 = load i64, i64* %19, align 8
  %202 = call i32 @TextOut(i32 %199, i64 %200, i64 %201, i8* %15, i32 1)
  %203 = load i32, i32* %5, align 4
  %204 = load i64, i64* %18, align 8
  %205 = load i64, i64* %19, align 8
  %206 = call i32 @TextOut(i32 %203, i64 %204, i64 %205, i8* %16, i32 1)
  br label %240

207:                                              ; preds = %171
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @COLOR_BTNSHADOW, align 4
  %210 = call i32 @GetSysColor(i32 %209)
  %211 = call i32 @SetTextColor(i32 %208, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = load i64, i64* %18, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i32 @TextOut(i32 %212, i64 %213, i64 %214, i8* %13, i32 1)
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @COLOR_BTNHIGHLIGHT, align 4
  %218 = call i32 @GetSysColor(i32 %217)
  %219 = call i32 @SetTextColor(i32 %216, i32 %218)
  %220 = load i32, i32* %5, align 4
  %221 = load i64, i64* %18, align 8
  %222 = load i64, i64* %19, align 8
  %223 = call i32 @TextOut(i32 %220, i64 %221, i64 %222, i8* %14, i32 1)
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @COLOR_3DDKSHADOW, align 4
  %226 = call i32 @GetSysColor(i32 %225)
  %227 = call i32 @SetTextColor(i32 %224, i32 %226)
  %228 = load i32, i32* %5, align 4
  %229 = load i64, i64* %18, align 8
  %230 = load i64, i64* %19, align 8
  %231 = call i32 @TextOut(i32 %228, i64 %229, i64 %230, i8* %15, i32 1)
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @COLOR_3DLIGHT, align 4
  %234 = call i32 @GetSysColor(i32 %233)
  %235 = call i32 @SetTextColor(i32 %232, i32 %234)
  %236 = load i32, i32* %5, align 4
  %237 = load i64, i64* %18, align 8
  %238 = load i64, i64* %19, align 8
  %239 = call i32 @TextOut(i32 %236, i64 %237, i64 %238, i8* %16, i32 1)
  br label %240

240:                                              ; preds = %207, %186
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @DFCS_CHECKED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load i64, i64* %8, align 8
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 105, i32 98
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %28, align 1
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @COLOR_WINDOWTEXT, align 4
  %253 = call i32 @GetSysColor(i32 %252)
  %254 = call i32 @SetTextColor(i32 %251, i32 %253)
  %255 = load i32, i32* %5, align 4
  %256 = load i64, i64* %18, align 8
  %257 = load i64, i64* %19, align 8
  %258 = call i32 @TextOut(i32 %255, i64 %256, i64 %257, i8* %28, i32 1)
  br label %259

259:                                              ; preds = %245, %240
  br label %260

260:                                              ; preds = %259, %108
  %261 = load i32, i32* %5, align 4
  %262 = load i64, i64* %11, align 8
  %263 = call i64 @SelectObject(i32 %261, i64 %262)
  %264 = load i64, i64* %10, align 8
  %265 = call i32 @DeleteObject(i64 %264)
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %24, align 4
  %268 = call i32 @SetTextColor(i32 %266, i32 %267)
  %269 = load i32, i32* %5, align 4
  %270 = load i64, i64* %23, align 8
  %271 = call i32 @SetBkMode(i32 %269, i64 %270)
  %272 = load i64, i64* @TRUE, align 8
  ret i64 %272
}

declare dso_local i64 @GetBkMode(i32) #1

declare dso_local i32 @GetTextColor(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lstrcpy(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @CreateFontIndirect(%struct.TYPE_12__*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_10__*, i64, i64, i64, i64) #1

declare dso_local i32 @InflateRect(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @Ellipse(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i64) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @TextOut(i32, i64, i64, i8*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
