; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_HandleLButtonDownCombo.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_HandleLButtonDownCombo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@WM_LBUTTONDOWN = common dso_local global i64 0, align 8
@LBS_NOTIFY = common dso_local global i32 0, align 4
@LBN_DBLCLK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@SM_CXVSCROLL = common dso_local global i32 0, align 4
@HTVSCROLL = common dso_local global i64 0, align 8
@WS_HSCROLL = common dso_local global i32 0, align 4
@SM_CYHSCROLL = common dso_local global i32 0, align 4
@HTHSCROLL = common dso_local global i64 0, align 8
@WM_NCLBUTTONDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64, i32, i64, i64)* @LISTBOX_HandleLButtonDownCombo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_HandleLButtonDownCombo(%struct.TYPE_18__* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @GetClientRect(i32 %25, %struct.TYPE_16__* %12)
  %27 = bitcast %struct.TYPE_17__* %14 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @PtInRect(%struct.TYPE_16__* %12, i64 %29, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @WM_LBUTTONDOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ -1, %47 ]
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @LISTBOX_HandleLButtonDown(%struct.TYPE_18__* %54, i32 %55, i64 %56, i64 %57)
  store i32 %58, i32* %6, align 4
  br label %191

59:                                               ; preds = %34
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @LBS_NOTIFY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = load i32, i32* @LBN_DBLCLK, align 4
  %69 = call i32 @SEND_NOTIFICATION(%struct.TYPE_18__* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  br label %71

71:                                               ; preds = %70
  br label %190

72:                                               ; preds = %5
  %73 = bitcast %struct.TYPE_17__* %15 to i8*
  %74 = bitcast %struct.TYPE_17__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = call i64 (...) @GetCapture()
  store i64 %75, i64* %16, align 8
  %76 = call i32 (...) @ReleaseCapture()
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @GetWindowRect(i32 %79, %struct.TYPE_16__* %13)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ClientToScreen(i32 %83, %struct.TYPE_17__* %15)
  %85 = bitcast %struct.TYPE_17__* %15 to { i64, i64 }*
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @PtInRect(%struct.TYPE_16__* %13, i64 %87, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %72
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @LISTBOX_SetCaretIndex(%struct.TYPE_18__* %93, i32 %98, i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i32 @LISTBOX_SetSelection(%struct.TYPE_18__* %101, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @COMBO_FlipListbox(%struct.TYPE_15__* %112, i32 %113, i32 %114)
  br label %189

116:                                              ; preds = %72
  store i64 0, i64* %17, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GWL_STYLE, align 4
  %121 = call i32 @GetWindowLongPtrW(i32 %119, i32 %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @WS_VSCROLL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %116
  %127 = load i32, i32* @SM_CXVSCROLL, align 4
  %128 = call i64 @GetSystemMetrics(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %128
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = bitcast %struct.TYPE_17__* %14 to { i64, i64 }*
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @PtInRect(%struct.TYPE_16__* %12, i64 %136, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = load i64, i64* @HTVSCROLL, align 8
  store i64 %142, i64* %17, align 8
  br label %143

143:                                              ; preds = %141, %126
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @WS_HSCROLL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load i32, i32* @SM_CYHSCROLL, align 4
  %151 = call i64 @GetSystemMetrics(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %151
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = bitcast %struct.TYPE_17__* %14 to { i64, i64 }*
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @PtInRect(%struct.TYPE_16__* %12, i64 %159, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i64, i64* @HTHSCROLL, align 8
  store i64 %165, i64* %17, align 8
  br label %166

166:                                              ; preds = %164, %149
  br label %167

167:                                              ; preds = %166, %144
  %168 = load i64, i64* %17, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @WM_NCLBUTTONDOWN, align 4
  %175 = load i64, i64* %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @MAKELONG(i64 %177, i64 %179)
  %181 = call i32 @SendMessageW(i32 %173, i32 %174, i64 %175, i32 %180)
  br label %182

182:                                              ; preds = %170, %167
  %183 = load i64, i64* %16, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @SetCapture(i64 %186)
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %92
  br label %190

190:                                              ; preds = %189, %71
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %190, %48
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @PtInRect(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @LISTBOX_HandleLButtonDown(%struct.TYPE_18__*, i32, i64, i64) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_18__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @LISTBOX_SetCaretIndex(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @COMBO_FlipListbox(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i64, i32) #1

declare dso_local i32 @MAKELONG(i64, i64) #1

declare dso_local i32 @SetCapture(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
