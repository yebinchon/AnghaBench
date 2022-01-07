; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MoveCursorWords.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MoveCursorWords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@WB_MOVEWORDLEFT = common dso_local global i32 0, align 4
@diRunOrParagraph = common dso_local global i64 0, align 8
@diRun = common dso_local global i64 0, align 8
@WB_ISDELIMITER = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@diTextStart = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@WB_MOVEWORDRIGHT = common dso_local global i32 0, align 4
@diRunOrParagraphOrEnd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ME_MoveCursorWords(i32* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %179

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %177, %24
  %26 = load i8*, i8** @TRUE, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %178

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = call i32 @get_text(%struct.TYPE_15__* %32, i32 0)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @WB_MOVEWORDLEFT, align 4
  %41 = call i8* @ME_CallWordBreakProc(i32* %29, i32 %33, i32 %38, i32 %39, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %178

46:                                               ; preds = %28
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = load i64, i64* @diRunOrParagraph, align 8
  %49 = call %struct.TYPE_13__* @ME_FindItemBack(%struct.TYPE_13__* %47, i64 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @diRun, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %117

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = call i32 @get_text(%struct.TYPE_15__* %59, i32 0)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @WB_ISDELIMITER, align 4
  %73 = call i8* @ME_CallWordBreakProc(i32* %56, i32 %60, i32 %65, i32 %71, i32 %72)
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %110

75:                                               ; preds = %55
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MERF_ENDPARA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = icmp eq %struct.TYPE_13__* %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %90, %84
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @get_text(%struct.TYPE_15__* %99, i32 0)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @WB_ISDELIMITER, align 4
  %107 = call i8* @ME_CallWordBreakProc(i32* %96, i32 %100, i32 %105, i32 0, i32 %106)
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %95
  br label %178

110:                                              ; preds = %95, %90, %75, %55
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %8, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %11, align 4
  br label %177

117:                                              ; preds = %46
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @diParagraph, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %117
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = icmp eq %struct.TYPE_13__* %126, %127
  br i1 %128, label %129, label %175

129:                                              ; preds = %123
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %175

134:                                              ; preds = %129
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %10, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MEPF_ROWSTART, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %134
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %10, align 8
  br label %154

154:                                              ; preds = %148, %134
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @diTextStart, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i8*, i8** @FALSE, align 8
  store i8* %165, i8** %4, align 8
  br label %306

166:                                              ; preds = %154
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %168 = load i64, i64* @diRun, align 8
  %169 = call %struct.TYPE_13__* @ME_FindItemBack(%struct.TYPE_13__* %167, i64 %168)
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %8, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** %10, align 8
  br label %175

175:                                              ; preds = %166, %129, %123
  br label %178

176:                                              ; preds = %117
  br label %177

177:                                              ; preds = %176, %110
  br label %25

178:                                              ; preds = %175, %109, %45, %25
  br label %295

179:                                              ; preds = %3
  %180 = load i8*, i8** @FALSE, align 8
  store i8* %180, i8** %12, align 8
  br label %181

181:                                              ; preds = %293, %179
  %182 = load i8*, i8** @TRUE, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %294

184:                                              ; preds = %181
  %185 = load i8*, i8** %12, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load i32*, i32** %5, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = call i32 @get_text(%struct.TYPE_15__* %191, i32 0)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @WB_ISDELIMITER, align 4
  %200 = call i8* @ME_CallWordBreakProc(i32* %188, i32 %192, i32 %197, i32 %198, i32 %199)
  %201 = icmp ne i8* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %187
  br label %294

203:                                              ; preds = %187, %184
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = call i32 @get_text(%struct.TYPE_15__* %207, i32 0)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @WB_MOVEWORDRIGHT, align 4
  %216 = call i8* @ME_CallWordBreakProc(i32* %204, i32 %208, i32 %213, i32 %214, i32 %215)
  %217 = ptrtoint i8* %216 to i32
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %218, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %203
  br label %294

226:                                              ; preds = %203
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %228 = load i64, i64* @diRunOrParagraphOrEnd, align 8
  %229 = call %struct.TYPE_13__* @ME_FindItemFwd(%struct.TYPE_13__* %227, i64 %228)
  store %struct.TYPE_13__* %229, %struct.TYPE_13__** %9, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @diRun, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %251

235:                                              ; preds = %226
  %236 = load i32*, i32** %5, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = call i32 @get_text(%struct.TYPE_15__* %239, i32 0)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 %246, 1
  %248 = load i32, i32* @WB_ISDELIMITER, align 4
  %249 = call i8* @ME_CallWordBreakProc(i32* %236, i32 %240, i32 %245, i32 %247, i32 %248)
  store i8* %249, i8** %12, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %250, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %293

251:                                              ; preds = %226
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @diParagraph, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %284

257:                                              ; preds = %251
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @MEPF_ROWSTART, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  store %struct.TYPE_13__* %271, %struct.TYPE_13__** %9, align 8
  br label %272

272:                                              ; preds = %266, %257
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %277 = icmp eq %struct.TYPE_13__* %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %272
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %279, %struct.TYPE_13__** %10, align 8
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %281 = load i64, i64* @diRun, align 8
  %282 = call %struct.TYPE_13__* @ME_FindItemFwd(%struct.TYPE_13__* %280, i64 %281)
  store %struct.TYPE_13__* %282, %struct.TYPE_13__** %8, align 8
  br label %283

283:                                              ; preds = %278, %272
  store i32 0, i32* %11, align 4
  br label %294

284:                                              ; preds = %251
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %286, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %289 = icmp eq %struct.TYPE_13__* %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i8*, i8** @FALSE, align 8
  store i8* %291, i8** %4, align 8
  br label %306

292:                                              ; preds = %284
  store i32 0, i32* %11, align 4
  br label %294

293:                                              ; preds = %235
  br label %181

294:                                              ; preds = %292, %283, %225, %202, %181
  br label %295

295:                                              ; preds = %294, %178
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 2
  store %struct.TYPE_13__* %296, %struct.TYPE_13__** %298, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 1
  store %struct.TYPE_13__* %299, %struct.TYPE_13__** %301, align 8
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load i8*, i8** @TRUE, align 8
  store i8* %305, i8** %4, align 8
  br label %306

306:                                              ; preds = %295, %290, %164
  %307 = load i8*, i8** %4, align 8
  ret i8* %307
}

declare dso_local i8* @ME_CallWordBreakProc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @get_text(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_13__* @ME_FindItemBack(%struct.TYPE_13__*, i64) #1

declare dso_local %struct.TYPE_13__* @ME_FindItemFwd(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
