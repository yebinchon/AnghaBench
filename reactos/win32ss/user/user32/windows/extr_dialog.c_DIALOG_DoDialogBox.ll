; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_DoDialogBox.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_DoDialogBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@DF_END = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@GWL_STYLE = common dso_local global i32 0, align 4
@DS_NOIDLEMSG = common dso_local global i32 0, align 4
@WM_ENTERIDLE = common dso_local global i32 0, align 4
@MSGF_DIALOGBOX = common dso_local global i32 0, align 4
@WM_QUIT = common dso_local global i64 0, align 8
@WM_KEYDOWN = common dso_local global i64 0, align 8
@WNDS_MSGBOX = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@WM_COPY = common dso_local global i32 0, align 4
@WM_TIMER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIALOG_DoDialogBox(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.TYPE_11__* @ValidateHwnd(i64 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %155

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.TYPE_13__* @GETDLGINFO(i64 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %155

21:                                               ; preds = %16
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DF_END, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %148, label %29

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %146, %29
  %31 = load i32, i32* @PM_REMOVE, align 4
  %32 = call i32 @PeekMessageW(%struct.TYPE_12__* %7, i32 0, i32 0, i32 0, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @SW_SHOWNORMAL, align 4
  %40 = call i32 @ShowWindow(i64 %38, i32 %39)
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @GWL_STYLE, align 4
  %45 = call i32 @GetWindowLongPtrW(i64 %43, i32 %44)
  %46 = load i32, i32* @DS_NOIDLEMSG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @WM_ENTERIDLE, align 4
  %52 = load i32, i32* @MSGF_DIALOGBOX, align 4
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @SendMessageW(i64 %50, i32 %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %49, %42
  %57 = call i32 @GetMessageW(%struct.TYPE_12__* %7, i32 0, i32 0, i32 0)
  br label %58

58:                                               ; preds = %56, %30
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WM_QUIT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PostQuitMessage(i32 %65)
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @IsWindow(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %155

71:                                               ; preds = %63
  br label %147

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WM_KEYDOWN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WNDS_MSGBOX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = call i64 (...) @GetForegroundWindow()
  %86 = load i64, i64* %4, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 67
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* @VK_CONTROL, align 4
  %94 = call i64 @GetKeyState(i32 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64, i64* %4, align 8
  %98 = load i32, i32* @WM_COPY, align 4
  %99 = call i32 @SendMessageW(i64 %97, i32 %98, i32 0, i32 0)
  br label %100

100:                                              ; preds = %96, %92, %88
  br label %101

101:                                              ; preds = %100, %84, %77, %72
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @IsWindow(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %155

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DF_END, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @IsDialogMessageW(i64 %114, %struct.TYPE_12__* %7)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = call i32 @TranslateMessage(%struct.TYPE_12__* %7)
  %119 = call i32 @DispatchMessageW(%struct.TYPE_12__* %7)
  br label %120

120:                                              ; preds = %117, %113, %106
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @IsWindow(i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %155

125:                                              ; preds = %120
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DF_END, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %147

133:                                              ; preds = %125
  %134 = load i64, i64* %9, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @WM_TIMER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i64, i64* %4, align 8
  %143 = load i32, i32* @SW_SHOWNORMAL, align 4
  %144 = call i32 @ShowWindow(i64 %142, i32 %143)
  %145 = load i64, i64* @FALSE, align 8
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %141, %136, %133
  br label %30

147:                                              ; preds = %132, %71
  br label %148

148:                                              ; preds = %147, %21
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @DestroyWindow(i64 %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %124, %105, %70, %20, %15
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_11__* @ValidateHwnd(i64) #1

declare dso_local %struct.TYPE_13__* @GETDLGINFO(i64) #1

declare dso_local i32 @PeekMessageW(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @GetMessageW(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @PostQuitMessage(i32) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i64 @GetForegroundWindow(...) #1

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i32 @IsDialogMessageW(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @TranslateMessage(%struct.TYPE_12__*) #1

declare dso_local i32 @DispatchMessageW(%struct.TYPE_12__*) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
