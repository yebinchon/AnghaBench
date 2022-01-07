; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_UpdateScrollBar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_UpdateScrollBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i8* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i8*, i64 }

@.str = private unnamed_addr constant [56 x i8] c"ME_UpdateScrollBar had to call ME_WrapMarkedParagraphs\0A\00", align 1
@SIF_PAGE = common dso_local global i32 0, align 4
@SIF_RANGE = common dso_local global i32 0, align 4
@SIF_POS = common dso_local global i32 0, align 4
@ES_DISABLENOSCROLL = common dso_local global i32 0, align 4
@SIF_DISABLENOSCROLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"min=%d max=%d page=%d\0A\00", align 1
@WS_HSCROLL = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_UpdateScrollBar(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = call i64 @ME_WrapMarkedParagraphs(%struct.TYPE_16__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = load i32, i32* @SIF_PAGE, align 4
  %14 = load i32, i32* @SIF_RANGE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SIF_POS, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load i32, i32* @SIF_DISABLENOSCROLL, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %11
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %44, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %31
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = call i32 @ME_HScrollAbs(%struct.TYPE_16__* %60, i32 0)
  br label %394

62:                                               ; preds = %56, %31
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %171

94:                                               ; preds = %86, %62
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32 %98, i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %94
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %115, %94
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @WS_HSCROLL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 65535
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @MulDiv(i8* %131, i32 65535, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 65535, i32* %136, align 8
  br label %137

137:                                              ; preds = %129, %125
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @SB_HORZ, align 4
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @SetScrollInfo(i64 %145, i32 %146, %struct.TYPE_15__* %3, i32 %147)
  br label %168

149:                                              ; preds = %137
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SB_HORZ, align 4
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @ITextHost_TxSetScrollRange(i32 %152, i32 %153, i64 %155, i32 %157, i32 %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SB_HORZ, align 4
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* @TRUE, align 4
  %167 = call i32 @ITextHost_TxSetScrollPos(i32 %162, i32 %163, i8* %165, i32 %166)
  br label %168

168:                                              ; preds = %149, %142
  %169 = call i32 @ME_PostSetScrollRangeVisibility(%struct.TYPE_15__* %3)
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %118, %115
  br label %171

171:                                              ; preds = %170, %86
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @WS_HSCROLL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %208

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SIF_DISABLENOSCROLL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @TRUE, align 4
  store i32 %185, i32* %5, align 4
  br label %196

186:                                              ; preds = %178
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @WS_HSCROLL, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %193, %186
  br label %196

196:                                              ; preds = %195, %184
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SB_HORZ, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @ITextHost_TxShowScrollBar(i32 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %200, %196
  br label %208

208:                                              ; preds = %207, %171
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %212, %216
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %4, align 4
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %221, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %208
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @ES_MULTILINE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br label %234

234:                                              ; preds = %227, %208
  %235 = phi i1 [ false, %208 ], [ %233, %227 ]
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %5, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %234
  %243 = load i32, i32* %5, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %247 = call i32 @ME_VScrollAbs(%struct.TYPE_16__* %246, i32 0)
  br label %394

248:                                              ; preds = %242, %234
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %251, i32* %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i8* %256, i8** %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i64 %262, i64* %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %265, %269
  br i1 %270, label %280, label %271

271:                                              ; preds = %248
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = icmp ne i64 %273, %278
  br i1 %279, label %280, label %357

280:                                              ; preds = %271, %248
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %282, i32 %284, i64 %286)
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  store i32 %295, i32* %298, align 4
  %299 = load i32, i32* %5, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %280
  %302 = load i32, i32* %4, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %356

304:                                              ; preds = %301, %280
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @WS_VSCROLL, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %356

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = icmp sgt i32 %313, 65535
  br i1 %314, label %315, label %323

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  %317 = load i8*, i8** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i8* @MulDiv(i8* %317, i32 65535, i32 %319)
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i8* %320, i8** %321, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 65535, i32* %322, align 8
  br label %323

323:                                              ; preds = %315, %311
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %323
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* @SB_VERT, align 4
  %333 = load i32, i32* @TRUE, align 4
  %334 = call i32 @SetScrollInfo(i64 %331, i32 %332, %struct.TYPE_15__* %3, i32 %333)
  br label %354

335:                                              ; preds = %323
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @SB_VERT, align 4
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @FALSE, align 4
  %345 = call i32 @ITextHost_TxSetScrollRange(i32 %338, i32 %339, i64 %341, i32 %343, i32 %344)
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @SB_VERT, align 4
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* @TRUE, align 4
  %353 = call i32 @ITextHost_TxSetScrollPos(i32 %348, i32 %349, i8* %351, i32 %352)
  br label %354

354:                                              ; preds = %335, %328
  %355 = call i32 @ME_PostSetScrollRangeVisibility(%struct.TYPE_15__* %3)
  store i32 %355, i32* %4, align 4
  br label %356

356:                                              ; preds = %354, %304, %301
  br label %357

357:                                              ; preds = %356, %271
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @WS_VSCROLL, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %394

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @SIF_DISABLENOSCROLL, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %364
  %371 = load i32, i32* @TRUE, align 4
  store i32 %371, i32* %5, align 4
  br label %382

372:                                              ; preds = %364
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @WS_VSCROLL, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %372
  %380 = load i32, i32* @FALSE, align 4
  store i32 %380, i32* %5, align 4
  br label %381

381:                                              ; preds = %379, %372
  br label %382

382:                                              ; preds = %381, %370
  %383 = load i32, i32* %4, align 4
  %384 = load i32, i32* %5, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %393

386:                                              ; preds = %382
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @SB_VERT, align 4
  %391 = load i32, i32* %5, align 4
  %392 = call i32 @ITextHost_TxShowScrollBar(i32 %389, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %386, %382
  br label %394

394:                                              ; preds = %59, %245, %393, %357
  ret void
}

declare dso_local i64 @ME_WrapMarkedParagraphs(%struct.TYPE_16__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @ME_HScrollAbs(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i64) #1

declare dso_local i8* @MulDiv(i8*, i32, i32) #1

declare dso_local i32 @SetScrollInfo(i64, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ITextHost_TxSetScrollRange(i32, i32, i64, i32, i32) #1

declare dso_local i32 @ITextHost_TxSetScrollPos(i32, i32, i8*, i32) #1

declare dso_local i32 @ME_PostSetScrollRangeVisibility(%struct.TYPE_15__*) #1

declare dso_local i32 @ITextHost_TxShowScrollBar(i32, i32, i32) #1

declare dso_local i32 @ME_VScrollAbs(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
