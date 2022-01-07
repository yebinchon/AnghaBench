; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_AugmentFrameMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_AugmentFrameMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"frame %p,child %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SC_RESTORE = common dso_local global i64 0, align 8
@SC_CLOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"system buttons already exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"child %p doesn't have a system menu\0A\00", align 1
@MF_HELP = common dso_local global i32 0, align 4
@MF_BITMAP = common dso_local global i32 0, align 4
@HBMMENU_MBAR_CLOSE = common dso_local global i64 0, align 8
@HBMMENU_MBAR_CLOSE_D = common dso_local global i64 0, align 8
@HBMMENU_MBAR_RESTORE = common dso_local global i64 0, align 8
@SC_MINIMIZE = common dso_local global i64 0, align 8
@HBMMENU_MBAR_MINIMIZE = common dso_local global i64 0, align 8
@WM_GETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i32 0, align 4
@GCLP_HICONSM = common dso_local global i32 0, align 4
@ICON_BIG = common dso_local global i32 0, align 4
@GCLP_HICON = common dso_local global i32 0, align 4
@IDI_WINLOGO = common dso_local global i64 0, align 8
@IMAGE_ICON = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@MM_TEXT = common dso_local global i32 0, align 4
@COLOR_MENU = common dso_local global i32 0, align 4
@DI_NORMAL = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_POPUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"not inserted\0A\00", align 1
@SC_SIZE = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@SC_MOVE = common dso_local global i32 0, align 4
@SC_MAXIMIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @MDI_AugmentFrameMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDI_AugmentFrameMenu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @GetMenu(i32 %19)
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %218

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @GetMenuItemCount(i64 %29)
  %31 = sub nsw i64 %30, 1
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @GetMenuItemID(i64 %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @SC_RESTORE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @SC_CLOSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %28
  %43 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %218

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i64 @GetSystemMenu(i32 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %218

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @MF_HELP, align 4
  %57 = load i32, i32* @MF_BITMAP, align 4
  %58 = or i32 %56, %57
  %59 = load i64, i64* @SC_CLOSE, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @is_close_enabled(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i64, i64* @HBMMENU_MBAR_CLOSE, align 8
  %66 = trunc i64 %65 to i32
  br label %70

67:                                               ; preds = %54
  %68 = load i64, i64* @HBMMENU_MBAR_CLOSE_D, align 8
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ %66, %64 ], [ %69, %67 ]
  %72 = call i32 @AppendMenuW(i64 %55, i32 %58, i64 %59, i32 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* @MF_HELP, align 4
  %75 = load i32, i32* @MF_BITMAP, align 4
  %76 = or i32 %74, %75
  %77 = load i64, i64* @SC_RESTORE, align 8
  %78 = load i64, i64* @HBMMENU_MBAR_RESTORE, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @AppendMenuW(i64 %73, i32 %76, i64 %77, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @MF_HELP, align 4
  %83 = load i32, i32* @MF_BITMAP, align 4
  %84 = or i32 %82, %83
  %85 = load i64, i64* @SC_MINIMIZE, align 8
  %86 = load i64, i64* @HBMMENU_MBAR_MINIMIZE, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @AppendMenuW(i64 %81, i32 %84, i64 %85, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @WM_GETICON, align 4
  %91 = load i32, i32* @ICON_SMALL, align 4
  %92 = call i64 @SendMessageW(i32 %89, i32 %90, i32 %91, i32 0)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @GCLP_HICONSM, align 4
  %98 = call i64 @GetClassLongPtrW(i32 %96, i32 %97)
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %95, %70
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @WM_GETICON, align 4
  %105 = load i32, i32* @ICON_BIG, align 4
  %106 = call i64 @SendMessageW(i32 %103, i32 %104, i32 %105, i32 0)
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @GCLP_HICON, align 4
  %113 = call i64 @GetClassLongPtrW(i32 %111, i32 %112)
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i64, i64* %9, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* @IDI_WINLOGO, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @IMAGE_ICON, align 4
  %121 = load i32, i32* @SM_CXSMICON, align 4
  %122 = call i32 @GetSystemMetrics(i32 %121)
  %123 = load i32, i32* @SM_CYSMICON, align 4
  %124 = call i32 @GetSystemMetrics(i32 %123)
  %125 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %126 = call i64 @LoadImageW(i32 0, i32 %119, i32 %120, i32 %122, i32 %124, i32 %125)
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %117, %114
  %128 = load i64, i64* %9, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %174

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @GetDC(i32 %131)
  store i64 %132, i64* %16, align 8
  %133 = load i64, i64* %16, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %173

135:                                              ; preds = %130
  %136 = load i32, i32* @SM_CXSMICON, align 4
  %137 = call i32 @GetSystemMetrics(i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* @SM_CYSMICON, align 4
  %139 = call i32 @GetSystemMetrics(i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load i64, i64* %16, align 8
  %141 = call i64 @CreateCompatibleDC(i64 %140)
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i64 @CreateCompatibleBitmap(i64 %142, i32 %143, i32 %144)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i64 @SelectObject(i64 %146, i64 %147)
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i32, i32* @MM_TEXT, align 4
  %151 = call i32 @SetMapMode(i64 %149, i32 %150)
  %152 = load i32, i32* @COLOR_MENU, align 4
  %153 = call i32 @GetSysColor(i32 %152)
  %154 = call i32 @CreateSolidBrush(i32 %153)
  store i32 %154, i32* %15, align 4
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @DI_NORMAL, align 4
  %161 = call i32 @DrawIconEx(i64 %155, i32 0, i32 0, i64 %156, i32 %157, i32 %158, i32 0, i32 %159, i32 %160)
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i64 @SelectObject(i64 %162, i64 %163)
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @DeleteObject(i32 %165)
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @DeleteDC(i64 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i64, i64* %16, align 8
  %171 = call i32 @ReleaseDC(i32 %169, i64 %170)
  %172 = load i64, i64* %13, align 8
  store i64 %172, i64* %8, align 8
  br label %173

173:                                              ; preds = %135, %130
  br label %174

174:                                              ; preds = %173, %127
  %175 = load i64, i64* %6, align 8
  %176 = load i32, i32* @MF_BYPOSITION, align 4
  %177 = load i32, i32* @MF_BITMAP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MF_POPUP, align 4
  %180 = or i32 %178, %179
  %181 = load i64, i64* %7, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @InsertMenuA(i64 %175, i32 0, i32 %180, i32 %182, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %174
  %188 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i64, i64* %7, align 8
  %190 = call i32 @DestroyMenu(i64 %189)
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %3, align 4
  br label %218

192:                                              ; preds = %174
  %193 = load i64, i64* %7, align 8
  %194 = load i32, i32* @SC_SIZE, align 4
  %195 = load i32, i32* @MF_BYCOMMAND, align 4
  %196 = load i32, i32* @MF_GRAYED, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @EnableMenuItem(i64 %193, i32 %194, i32 %197)
  %199 = load i64, i64* %7, align 8
  %200 = load i32, i32* @SC_MOVE, align 4
  %201 = load i32, i32* @MF_BYCOMMAND, align 4
  %202 = load i32, i32* @MF_GRAYED, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @EnableMenuItem(i64 %199, i32 %200, i32 %203)
  %205 = load i64, i64* %7, align 8
  %206 = load i32, i32* @SC_MAXIMIZE, align 4
  %207 = load i32, i32* @MF_BYCOMMAND, align 4
  %208 = load i32, i32* @MF_GRAYED, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @EnableMenuItem(i64 %205, i32 %206, i32 %209)
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* @SC_CLOSE, align 8
  %213 = load i32, i32* @FALSE, align 4
  %214 = call i32 @SetMenuDefaultItem(i64 %211, i64 %212, i32 %213)
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @DrawMenuBar(i32 %215)
  %217 = load i32, i32* @TRUE, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %192, %187, %50, %42, %26
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @GetMenu(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @GetMenuItemCount(i64) #1

declare dso_local i64 @GetMenuItemID(i64, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @GetSystemMenu(i32, i32) #1

declare dso_local i32 @AppendMenuW(i64, i32, i64, i32) #1

declare dso_local i64 @is_close_enabled(i32, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @GetClassLongPtrW(i32, i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @GetDC(i32) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i64 @CreateCompatibleBitmap(i64, i32, i32) #1

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i32 @SetMapMode(i64, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @DrawIconEx(i64, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i32 @InsertMenuA(i64, i32, i32, i32, i32) #1

declare dso_local i32 @DestroyMenu(i64) #1

declare dso_local i32 @EnableMenuItem(i64, i32, i32) #1

declare dso_local i32 @SetMenuDefaultItem(i64, i64, i32) #1

declare dso_local i32 @DrawMenuBar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
