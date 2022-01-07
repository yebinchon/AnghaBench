; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_SetCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_SetCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_17__, i64, i64, i64 }
%struct.TYPE_17__ = type { i16, i16, i16 }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i16, i16 }
%struct.TYPE_20__ = type { i32, i32*, i32 }

@OBJID_HSCROLL = common dso_local global i32 0, align 4
@STATE_SYSTEM_INVISIBLE = common dso_local global i32 0, align 4
@STATE_SYSTEM_OFFSCREEN = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@OBJID_VSCROLL = common dso_local global i32 0, align 4
@stLine = common dso_local global i64 0, align 8
@hLeft = common dso_local global i32 0, align 4
@IDC_IBEAM = common dso_local global i64 0, align 8
@IDC_HAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @ME_SetCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ME_SetCursor(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__, align 8
  %5 = alloca %struct.TYPE_21__, align 2
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %13 = call i32 (...) @GetMessagePos()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @LOWORD(i32 %14)
  %16 = trunc i64 %15 to i16
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store i16 %16, i16* %17, align 2
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @HIWORD(i32 %18)
  %20 = trunc i64 %19 to i16
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @OBJID_HSCROLL, align 4
  %32 = call i32 @GetScrollBarInfo(i64 %30, i32 %31, %struct.TYPE_20__* %7)
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STATE_SYSTEM_INVISIBLE, align 4
  %38 = load i32, i32* @STATE_SYSTEM_OFFSCREEN, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %44 = bitcast %struct.TYPE_21__* %5 to i32*
  %45 = load i32, i32* %44, align 2
  %46 = call i64 @PtInRect(i32* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @IDC_ARROW, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @LoadCursorW(i32* null, i32* %53)
  %55 = load i64, i64* @FALSE, align 8
  %56 = call i32 @ITextHost_TxSetCursor(i32 %51, i32 %54, i64 %55)
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %2, align 8
  br label %274

58:                                               ; preds = %42, %26
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 24, i32* %59, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @OBJID_VSCROLL, align 4
  %64 = call i32 @GetScrollBarInfo(i64 %62, i32 %63, %struct.TYPE_20__* %7)
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @STATE_SYSTEM_INVISIBLE, align 4
  %70 = load i32, i32* @STATE_SYSTEM_OFFSCREEN, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %76 = bitcast %struct.TYPE_21__* %5 to i32*
  %77 = load i32, i32* %76, align 2
  %78 = call i64 @PtInRect(i32* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* @IDC_ARROW, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = call i32 @LoadCursorW(i32* null, i32* %85)
  %87 = load i64, i64* @FALSE, align 8
  %88 = call i32 @ITextHost_TxSetCursor(i32 %83, i32 %86, i64 %87)
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %2, align 8
  br label %274

90:                                               ; preds = %74, %58
  br label %91

91:                                               ; preds = %90, %1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ITextHost_TxScreenToClient(i32 %94, %struct.TYPE_21__* %5)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @stLine, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @hLeft, align 4
  %111 = load i64, i64* @FALSE, align 8
  %112 = call i32 @ITextHost_TxSetCursor(i32 %109, i32 %110, i64 %111)
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %2, align 8
  br label %274

114:                                              ; preds = %101, %91
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %147, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %121 = load i16, i16* %120, align 2
  %122 = sext i16 %121 to i32
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i16, i16* %125, align 4
  %127 = sext i16 %126 to i32
  %128 = icmp slt i32 %122, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  %138 = icmp slt i32 %132, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %129
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @hLeft, align 4
  %144 = load i64, i64* @FALSE, align 8
  %145 = call i32 @ITextHost_TxSetCursor(i32 %142, i32 %143, i64 %144)
  %146 = load i64, i64* @TRUE, align 8
  store i64 %146, i64* %2, align 8
  br label %274

147:                                              ; preds = %129, %119, %114
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i32
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i16, i16* %153, align 4
  %155 = sext i16 %154 to i32
  %156 = icmp slt i32 %150, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %159 = load i16, i16* %158, align 2
  %160 = sext i16 %159 to i32
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  %164 = load i16, i16* %163, align 4
  %165 = sext i16 %164 to i32
  %166 = icmp sgt i32 %160, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %157, %147
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i64, i64* @IDC_ARROW, align 8
  %177 = inttoptr i64 %176 to i32*
  %178 = call i32 @LoadCursorW(i32* null, i32* %177)
  %179 = load i64, i64* @FALSE, align 8
  %180 = call i32 @ITextHost_TxSetCursor(i32 %175, i32 %178, i64 %179)
  br label %190

181:                                              ; preds = %167
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* @IDC_IBEAM, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = call i32 @LoadCursorW(i32* null, i32* %186)
  %188 = load i64, i64* @TRUE, align 8
  %189 = call i32 @ITextHost_TxSetCursor(i32 %184, i32 %187, i64 %188)
  br label %190

190:                                              ; preds = %181, %172
  %191 = load i64, i64* @TRUE, align 8
  store i64 %191, i64* %2, align 8
  br label %274

192:                                              ; preds = %157
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %194 = load i16, i16* %193, align 2
  %195 = sext i16 %194 to i32
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i16, i16* %198, align 2
  %200 = sext i16 %199 to i32
  %201 = icmp slt i32 %195, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %192
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @hLeft, align 4
  %207 = load i64, i64* @FALSE, align 8
  %208 = call i32 @ITextHost_TxSetCursor(i32 %205, i32 %206, i64 %207)
  %209 = load i64, i64* @TRUE, align 8
  store i64 %209, i64* %2, align 8
  br label %274

210:                                              ; preds = %192
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %213 = load i16, i16* %212, align 2
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %215 = load i16, i16* %214, align 2
  %216 = call i32 @ME_CharFromPos(%struct.TYPE_22__* %211, i16 signext %213, i16 signext %215, %struct.TYPE_23__* %4, i64* %6)
  %217 = load i64, i64* %6, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %264

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  store i32* %223, i32** %9, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = call i64 @is_link(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %219
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i64, i64* @IDC_HAND, align 8
  %232 = inttoptr i64 %231 to i32*
  %233 = call i32 @LoadCursorW(i32* null, i32* %232)
  %234 = load i64, i64* @FALSE, align 8
  %235 = call i32 @ITextHost_TxSetCursor(i32 %230, i32 %233, i64 %234)
  %236 = load i64, i64* @TRUE, align 8
  store i64 %236, i64* %2, align 8
  br label %274

237:                                              ; preds = %219
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %239 = call i64 @ME_IsSelection(%struct.TYPE_22__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %237
  %242 = call i32 @ME_GetCursorOfs(%struct.TYPE_23__* %4)
  store i32 %242, i32* %12, align 4
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %244 = call i32 @ME_GetSelectionOfs(%struct.TYPE_22__* %243, i32* %10, i32* %11)
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %12, align 4
  %247 = icmp sle i32 %245, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %241
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i64, i64* @IDC_ARROW, align 8
  %257 = inttoptr i64 %256 to i32*
  %258 = call i32 @LoadCursorW(i32* null, i32* %257)
  %259 = load i64, i64* @FALSE, align 8
  %260 = call i32 @ITextHost_TxSetCursor(i32 %255, i32 %258, i64 %259)
  %261 = load i64, i64* @TRUE, align 8
  store i64 %261, i64* %2, align 8
  br label %274

262:                                              ; preds = %248, %241
  br label %263

263:                                              ; preds = %262, %237
  br label %264

264:                                              ; preds = %263, %210
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load i64, i64* @IDC_IBEAM, align 8
  %269 = inttoptr i64 %268 to i32*
  %270 = call i32 @LoadCursorW(i32* null, i32* %269)
  %271 = load i64, i64* @TRUE, align 8
  %272 = call i32 @ITextHost_TxSetCursor(i32 %267, i32 %270, i64 %271)
  %273 = load i64, i64* @TRUE, align 8
  store i64 %273, i64* %2, align 8
  br label %274

274:                                              ; preds = %264, %252, %227, %202, %190, %139, %106, %80, %48
  %275 = load i64, i64* %2, align 8
  ret i64 %275
}

declare dso_local i32 @GetMessagePos(...) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @GetScrollBarInfo(i64, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @PtInRect(i32*, i32) #1

declare dso_local i32 @ITextHost_TxSetCursor(i32, i32, i64) #1

declare dso_local i32 @LoadCursorW(i32*, i32*) #1

declare dso_local i32 @ITextHost_TxScreenToClient(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ME_CharFromPos(%struct.TYPE_22__*, i16 signext, i16 signext, %struct.TYPE_23__*, i64*) #1

declare dso_local i64 @is_link(i32*) #1

declare dso_local i64 @ME_IsSelection(%struct.TYPE_22__*) #1

declare dso_local i32 @ME_GetCursorOfs(%struct.TYPE_23__*) #1

declare dso_local i32 @ME_GetSelectionOfs(%struct.TYPE_22__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
