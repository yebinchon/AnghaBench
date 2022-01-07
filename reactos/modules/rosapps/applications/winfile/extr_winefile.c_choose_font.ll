; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_choose_font.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_choose_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i32, i32*, i32, i32*, i32*, i64, i32, i32*, i32*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BUFFER_LEN = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CF_SCREENFONTS = common dso_local global i32 0, align 4
@CF_FORCEFONTEXIST = common dso_local global i32 0, align 4
@CF_LIMITSIZE = common dso_local global i32 0, align 4
@CF_NOSCRIPTSEL = common dso_local global i32 0, align 4
@CF_INITTOLOGFONTSTRUCT = common dso_local global i32 0, align 4
@CF_NOVERTFONTS = common dso_local global i32 0, align 4
@SIMULATED_FONTTYPE = common dso_local global i32 0, align 4
@sSpace = common dso_local global i32 0, align 4
@GW_CHILD = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LB_SETITEMHEIGHT = common dso_local global i32 0, align 4
@IMAGE_HEIGHT = common dso_local global i64 0, align 8
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@IDS_FONT_SEL_DLG_NAME = common dso_local global i32 0, align 4
@IDS_FONT_SEL_ERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @choose_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_font(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i32, i32* @BUFFER_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @BUFFER_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @GetDC(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %22 = call i32 @GetObjectW(i64 %21, i32 4, i32* %7)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 104, i32* %23, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 13
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 12
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 11
  store i32* %7, i32** %27, align 8
  %28 = load i32, i32* @CF_SCREENFONTS, align 4
  %29 = load i32, i32* @CF_FORCEFONTEXIST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CF_LIMITSIZE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CF_NOSCRIPTSEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CF_INITTOLOGFONTSTRUCT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CF_NOVERTFONTS, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = call i32 @RGB(i32 0, i32 0, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 10
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 8
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @SIMULATED_FONTTYPE, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 24, i32* %51, align 8
  %52 = call i64 @ChooseFontW(%struct.TYPE_11__* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %133

54:                                               ; preds = %1
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %56 = call i32 @DeleteObject(i64 %55)
  %57 = call i64 @CreateFontIndirectW(i32* %7)
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %60 = call i64 @SelectObject(i32 %58, i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @sSpace, align 4
  %63 = call i32 @GetTextExtentPoint32W(i32 %61, i32 %62, i32 1, %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1))
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 3), align 8
  %65 = load i32, i32* @GW_CHILD, align 4
  %66 = call i64 @GetWindow(i32 %64, i32 %65)
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %125, %54
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %129

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @GWLP_USERDATA, align 4
  %73 = call i64 @GetWindowLongPtrW(i64 %71, i32 %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %11, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WM_SETFONT, align 4
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @SendMessageW(i32 %78, i32 %79, i32 %81, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @WM_SETFONT, align 4
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 2), align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @SendMessageW(i32 %87, i32 %88, i32 %90, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @LB_SETITEMHEIGHT, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1, i32 0), align 4
  %99 = load i64, i64* @IMAGE_HEIGHT, align 8
  %100 = add nsw i64 %99, 3
  %101 = call i32 @max(i32 %98, i64 %100)
  %102 = call i32 @SendMessageW(i32 %96, i32 %97, i32 1, i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @LB_SETITEMHEIGHT, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 1, i32 0), align 4
  %109 = load i64, i64* @IMAGE_HEIGHT, align 8
  %110 = add nsw i64 %109, 3
  %111 = call i32 @max(i32 %108, i64 %110)
  %112 = call i32 @SendMessageW(i32 %106, i32 %107, i32 1, i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32 @InvalidateRect(i32 %116, i32* null, i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = call i32 @InvalidateRect(i32 %122, i32* null, i32 %123)
  br label %125

125:                                              ; preds = %70
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* @GW_HWNDNEXT, align 4
  %128 = call i64 @GetNextWindow(i64 %126, i32 %127)
  store i64 %128, i64* %9, align 8
  br label %67

129:                                              ; preds = %67
  %130 = load i32, i32* %8, align 4
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @SelectObject(i32 %130, i64 %131)
  br label %149

133:                                              ; preds = %1
  %134 = call i64 (...) @CommDlgExtendedError()
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 0), align 8
  %138 = load i32, i32* @IDS_FONT_SEL_DLG_NAME, align 4
  %139 = load i32, i32* @BUFFER_LEN, align 4
  %140 = call i32 @LoadStringW(i32 %137, i32 %138, i32* %15, i32 %139)
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Globals, i32 0, i32 0), align 8
  %142 = load i32, i32* @IDS_FONT_SEL_ERROR, align 4
  %143 = load i32, i32* @BUFFER_LEN, align 4
  %144 = call i32 @LoadStringW(i32 %141, i32 %142, i32* %18, i32 %143)
  %145 = load i64, i64* %2, align 8
  %146 = load i32, i32* @MB_OK, align 4
  %147 = call i32 @MessageBoxW(i64 %145, i32* %18, i32* %15, i32 %146)
  br label %148

148:                                              ; preds = %136, %133
  br label %149

149:                                              ; preds = %148, %129
  %150 = load i64, i64* %2, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @ReleaseDC(i64 %150, i32 %151)
  %153 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetDC(i64) #2

declare dso_local i32 @GetObjectW(i64, i32, i32*) #2

declare dso_local i32 @RGB(i32, i32, i32) #2

declare dso_local i64 @ChooseFontW(%struct.TYPE_11__*) #2

declare dso_local i32 @DeleteObject(i64) #2

declare dso_local i64 @CreateFontIndirectW(i32*) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i32 @GetTextExtentPoint32W(i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i64 @GetWindow(i32, i32) #2

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #2

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @max(i32, i64) #2

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #2

declare dso_local i64 @GetNextWindow(i64, i32) #2

declare dso_local i64 @CommDlgExtendedError(...) #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #2

declare dso_local i32 @MessageBoxW(i64, i32*, i32*, i32) #2

declare dso_local i32 @ReleaseDC(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
