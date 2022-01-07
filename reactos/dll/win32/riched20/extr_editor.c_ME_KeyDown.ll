; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_KeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_KeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_26__ = type { i32 }

@VK_CONTROL = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VK_MENU = common dso_local global i32 0, align 4
@stPosition = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@WM_CLOSE = common dso_local global i32 0, align 4
@WM_NEXTDLGCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Style dump\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32)* @ME_KeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_KeyDown(%struct.TYPE_25__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__, align 4
  %10 = alloca [2048 x i8], align 16
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @VK_CONTROL, align 4
  %12 = call i32 @GetKeyState(i32 %11)
  %13 = and i32 %12, 32768
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @VK_SHIFT, align 4
  %15 = call i32 @GetKeyState(i32 %14)
  %16 = and i32 %15, 32768
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %254

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VK_SHIFT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VK_CONTROL, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VK_MENU, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @stPosition, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %211 [
    i32 134, label %41
    i32 130, label %41
    i32 135, label %41
    i32 137, label %41
    i32 128, label %44
    i32 138, label %44
    i32 132, label %44
    i32 133, label %44
    i32 140, label %53
    i32 139, label %53
    i32 131, label %123
    i32 136, label %132
    i32 129, label %150
    i32 65, label %169
    i32 86, label %177
    i32 67, label %185
    i32 88, label %185
    i32 90, label %195
    i32 89, label %203
  ]

41:                                               ; preds = %39, %39, %39, %39
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %39, %39, %39, %41
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = call i32 @ME_CommitUndo(%struct.TYPE_25__* %45)
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ME_ArrowKey(%struct.TYPE_25__* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %3, align 4
  br label %254

53:                                               ; preds = %39, %39
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ES_READONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %254

64:                                               ; preds = %53
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = call i32 @ME_IsSelection(%struct.TYPE_25__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %70 = call i32 @ME_DeleteSelection(%struct.TYPE_25__* %69)
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %72 = call i32 @ME_CommitUndo(%struct.TYPE_25__* %71)
  br label %111

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 139
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = call i32 @ME_DeleteTextAtCursor(%struct.TYPE_25__* %77, i32 1, i32 1)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = call i32 @ME_CommitUndo(%struct.TYPE_25__* %79)
  br label %110

81:                                               ; preds = %73
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @ME_ArrowKey(%struct.TYPE_25__* %82, i32 134, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %89 = call i32 @ME_ContinueCoalescingTransaction(%struct.TYPE_25__* %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = call i32 @ME_DeleteTextAtCursor(%struct.TYPE_25__* %90, i32 1, i32 1)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i32 @ME_ArrowKey(%struct.TYPE_25__* %100, i32 130, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94, %87
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %106 = call i32 @ME_CommitCoalescingUndo(%struct.TYPE_25__* %105)
  br label %109

107:                                              ; preds = %81
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %3, align 4
  br label %254

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %68
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = call i32 @ME_MoveCursorFromTableRowStartParagraph(%struct.TYPE_25__* %112)
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = call i32 @ME_UpdateSelectionLinkAttribute(%struct.TYPE_25__* %114)
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = load i32, i32* @FALSE, align 4
  %118 = call i32 @ME_UpdateRepaint(%struct.TYPE_25__* %116, i32 %117)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @ME_SendRequestResize(%struct.TYPE_25__* %119, i32 %120)
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  br label %254

123:                                              ; preds = %39
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = call i32 @handle_enter(%struct.TYPE_25__* %129)
  store i32 %130, i32* %3, align 4
  br label %254

131:                                              ; preds = %123
  br label %252

132:                                              ; preds = %39
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @WM_CLOSE, align 4
  %147 = call i32 @PostMessageW(i32 %145, i32 %146, i32 0, i32 0)
  br label %148

148:                                              ; preds = %142, %137, %132
  %149 = load i32, i32* @TRUE, align 4
  store i32 %149, i32* %3, align 4
  br label %254

150:                                              ; preds = %39
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %150
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @WM_NEXTDLGCTL, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @SendMessageW(i32 %163, i32 %164, i32 %165, i32 0)
  br label %167

167:                                              ; preds = %160, %155, %150
  %168 = load i32, i32* @TRUE, align 4
  store i32 %168, i32* %3, align 4
  br label %254

169:                                              ; preds = %39
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %174 = call i32 @handle_EM_EXSETSEL(%struct.TYPE_25__* %173, i32 0, i32 -1)
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %3, align 4
  br label %254

176:                                              ; preds = %169
  br label %252

177:                                              ; preds = %39
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %182 = load i32, i32* @FALSE, align 4
  %183 = call i32 @paste_special(%struct.TYPE_25__* %181, i32 0, i32* null, i32 %182)
  store i32 %183, i32* %3, align 4
  br label %254

184:                                              ; preds = %177
  br label %252

185:                                              ; preds = %39, %39
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = load i32, i32* %5, align 4
  %191 = icmp eq i32 %190, 88
  %192 = zext i1 %191 to i32
  %193 = call i32 @copy_or_cut(%struct.TYPE_25__* %189, i32 %192)
  store i32 %193, i32* %3, align 4
  br label %254

194:                                              ; preds = %185
  br label %252

195:                                              ; preds = %39
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %200 = call i32 @ME_Undo(%struct.TYPE_25__* %199)
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %3, align 4
  br label %254

202:                                              ; preds = %195
  br label %252

203:                                              ; preds = %39
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %208 = call i32 @ME_Redo(%struct.TYPE_25__* %207)
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %254

210:                                              ; preds = %203
  br label %252

211:                                              ; preds = %39
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* @VK_SHIFT, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %211
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @VK_CONTROL, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @VK_MENU, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  store i32 -1, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %222, %219, %215, %211
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = icmp eq i32 %233, 87
  br i1 %234, label %235, label %244

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  store i32 4, i32* %236, align 4
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %238 = call i32 @ME_GetSelectionCharFormat(%struct.TYPE_25__* %237, %struct.TYPE_26__* %9)
  %239 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %240 = call i32 @ME_DumpStyleToBuf(%struct.TYPE_26__* %9, i8* %239)
  %241 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %242 = load i32, i32* @MB_OK, align 4
  %243 = call i32 @MessageBoxA(i32* null, i8* %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %235, %232
  %245 = load i32, i32* %5, align 4
  %246 = icmp eq i32 %245, 81
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %249 = call i32 @ME_CheckCharOffsets(%struct.TYPE_25__* %248)
  br label %250

250:                                              ; preds = %247, %244
  br label %251

251:                                              ; preds = %250, %229
  br label %252

252:                                              ; preds = %251, %210, %202, %194, %184, %176, %131
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %252, %206, %198, %188, %180, %172, %167, %148, %128, %111, %107, %62, %44, %21
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @ME_CommitUndo(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_ArrowKey(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @ME_IsSelection(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_DeleteSelection(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_DeleteTextAtCursor(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ME_ContinueCoalescingTransaction(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_CommitCoalescingUndo(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_MoveCursorFromTableRowStartParagraph(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_UpdateSelectionLinkAttribute(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_UpdateRepaint(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ME_SendRequestResize(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @handle_enter(%struct.TYPE_25__*) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @handle_EM_EXSETSEL(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @paste_special(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @copy_or_cut(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ME_Undo(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_Redo(%struct.TYPE_25__*) #1

declare dso_local i32 @ME_GetSelectionCharFormat(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ME_DumpStyleToBuf(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @MessageBoxA(i32*, i8*, i8*, i32) #1

declare dso_local i32 @ME_CheckCharOffsets(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
