; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_Proc.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_Proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@WM_CTLCOLORDLG = common dso_local global i32 0, align 4
@DWLP_ROS_DIALOGINFO = common dso_local global i32 0, align 4
@DF_DIALOGACTIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DF_END = common dso_local global i32 0, align 4
@DC_HASDEFID = common dso_local global i32 0, align 4
@CB_SHOWDROPDOWN = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@BN_CLICKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_6__*)* @DEFDLG_Proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DEFDLG_Proc(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %239 [
    i32 135, label %21
    i32 132, label %40
    i32 128, label %80
    i32 138, label %92
    i32 129, label %120
    i32 139, label %124
    i32 141, label %140
    i32 130, label %172
    i32 136, label %196
    i32 133, label %196
    i32 131, label %196
    i32 134, label %219
    i32 137, label %229
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @WM_CTLCOLORDLG, align 4
  %26 = call i32 @GetControlColor(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @GetClientRect(i32 %31, i32* %13)
  %33 = load i32, i32* %14, align 4
  %34 = ptrtoint i32* %13 to i32
  %35 = call i32 @DPtoLP(i32 %33, i32 %34, i32 2)
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @FillRect(i32 %36, i32* %13, i32 %37)
  br label %39

39:                                               ; preds = %29, %21
  store i32 1, i32* %6, align 4
  br label %240

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DWLP_ROS_DIALOGINFO, align 4
  %43 = call i64 @SetWindowLongPtrW(i32 %41, i32 %42, i32 0)
  %44 = inttoptr i64 %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %11, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %74

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DeleteObject(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DestroyMenu(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = call i32 @HeapFree(i32 %67, i32 0, %struct.TYPE_6__* %68)
  %70 = load i32, i32* @DF_DIALOGACTIVE, align 4
  %71 = call i32 @NtUserSetThreadState(i32 0, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @NtUserxSetDialogPointer(i32 %72, i32 0)
  br label %74

74:                                               ; preds = %66, %40
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DefWindowProcA(i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %240

80:                                               ; preds = %5
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @DEFDLG_SaveFocus(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @DefWindowProcA(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %240

92:                                               ; preds = %5
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @DIALOG_FindMsgDestination(i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @DF_DIALOGACTIVE, align 4
  br label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @DF_DIALOGACTIVE, align 4
  %108 = call i32 @NtUserSetThreadState(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @DEFDLG_RestoreFocus(i32 %113, i32 %114)
  br label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DEFDLG_SaveFocus(i32 %117)
  br label %119

119:                                              ; preds = %116, %112
  store i32 0, i32* %6, align 4
  br label %240

120:                                              ; preds = %5
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32 @DEFDLG_RestoreFocus(i32 %121, i32 %122)
  store i32 0, i32* %6, align 4
  br label %240

124:                                              ; preds = %5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %126 = icmp ne %struct.TYPE_6__* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DF_END, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @DEFDLG_SetDefId(i32 %135, %struct.TYPE_6__* %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %127, %124
  store i32 1, i32* %6, align 4
  br label %240

140:                                              ; preds = %5
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = icmp ne %struct.TYPE_6__* %141, null
  br i1 %142, label %143, label %171

143:                                              ; preds = %140
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DF_END, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %171, label %150

150:                                              ; preds = %143
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DC_HASDEFID, align 4
  %160 = call i32 @MAKELONG(i32 %158, i32 %159)
  store i32 %160, i32* %6, align 4
  br label %240

161:                                              ; preds = %150
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @DEFDLG_FindDefButton(i32 %162)
  store i32 %163, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @GetDlgCtrlID(i32 %166)
  %168 = load i32, i32* @DC_HASDEFID, align 4
  %169 = call i32 @MAKELONG(i32 %167, i32 %168)
  store i32 %169, i32* %6, align 4
  br label %240

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %143, %140
  store i32 0, i32* %6, align 4
  br label %240

172:                                              ; preds = %5
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %174 = icmp ne %struct.TYPE_6__* %173, null
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = call i32 (...) @GetFocus()
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @GetNextDlgTabItem(i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %179, %175
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @DEFDLG_SetFocus(i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @DEFDLG_SetDefButton(i32 %191, %struct.TYPE_6__* %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %172
  store i32 0, i32* %6, align 4
  br label %240

196:                                              ; preds = %5, %5, %5
  %197 = call i32 (...) @GetFocus()
  store i32 %197, i32* %19, align 4
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* @CB_SHOWDROPDOWN, align 4
  %203 = load i32, i32* @FALSE, align 4
  %204 = call i32 @SendMessageW(i32 %201, i32 %202, i32 %203, i32 0)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @GetParent(i32 %207)
  %209 = load i32, i32* @CB_SHOWDROPDOWN, align 4
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i32 @SendMessageW(i32 %208, i32 %209, i32 %210, i32 0)
  br label %212

212:                                              ; preds = %206, %200
  br label %213

213:                                              ; preds = %212, %196
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @DefWindowProcA(i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %6, align 4
  br label %240

219:                                              ; preds = %5
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %221 = icmp ne %struct.TYPE_6__* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  br label %227

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %222
  %228 = phi i32 [ %225, %222 ], [ 0, %226 ]
  store i32 %228, i32* %6, align 4
  br label %240

229:                                              ; preds = %5
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @WM_COMMAND, align 4
  %232 = load i32, i32* @IDCANCEL, align 4
  %233 = load i32, i32* @BN_CLICKED, align 4
  %234 = call i32 @MAKEWPARAM(i32 %232, i32 %233)
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @IDCANCEL, align 4
  %237 = call i32 @GetDlgItem(i32 %235, i32 %236)
  %238 = call i32 @PostMessageA(i32 %230, i32 %231, i32 %234, i32 %237)
  store i32 0, i32* %6, align 4
  br label %240

239:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %239, %229, %227, %213, %195, %171, %165, %155, %139, %120, %119, %86, %74, %39
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @GetControlColor(i32, i32, i32, i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @DPtoLP(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i64 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DestroyMenu(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @NtUserSetThreadState(i32, i32) #1

declare dso_local i32 @NtUserxSetDialogPointer(i32, i32) #1

declare dso_local i32 @DefWindowProcA(i32, i32, i32, i32) #1

declare dso_local i32 @DEFDLG_SaveFocus(i32) #1

declare dso_local i32 @DIALOG_FindMsgDestination(i32) #1

declare dso_local i32 @DEFDLG_RestoreFocus(i32, i32) #1

declare dso_local i32 @DEFDLG_SetDefId(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @DEFDLG_FindDefButton(i32) #1

declare dso_local i32 @GetDlgCtrlID(i32) #1

declare dso_local i32 @GetNextDlgTabItem(i32, i32, i32) #1

declare dso_local i32 @GetFocus(...) #1

declare dso_local i32 @DEFDLG_SetFocus(i32) #1

declare dso_local i32 @DEFDLG_SetDefButton(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @PostMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
