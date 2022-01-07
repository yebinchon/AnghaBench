; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_main.c_InitInstance.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_main.c_InitInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@FrameWndProc = common dso_local global i32 0, align 4
@IDI_MDI_APP = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i32 0, align 4
@szFrameClass = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@LR_SHARED = common dso_local global i32 0, align 4
@IDC_MDI_APP = common dso_local global i32 0, align 4
@ID_OPTIONS_MENU = common dso_local global i32 0, align 4
@ICC_BAR_CLASSES = common dso_local global i32 0, align 4
@hMenuFrame = common dso_local global i32 0, align 4
@hAccel = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MS Sans Serif\00", align 1
@hFont = common dso_local global i32 0, align 4
@szTitle = common dso_local global i32 0, align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hFrameWnd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TBSTYLE_SEP = common dso_local global i32 0, align 4
@ID_WINDOW_NEW_WINDOW = common dso_local global i32 0, align 4
@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@TBSTYLE_BUTTON = common dso_local global i32 0, align 4
@ID_WINDOW_CASCADE = common dso_local global i32 0, align 4
@ID_WINDOW_TILE_HORZ = common dso_local global i32 0, align 4
@ID_WINDOW_TILE_VERT = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@IDC_TOOLBAR = common dso_local global i32 0, align 4
@IDB_TOOLBAR = common dso_local global i32 0, align 4
@hToolBar = common dso_local global i32 0, align 4
@ID_OPTIONS_TOOLBAR = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@SBT_NOBORDERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IDC_STATUSBAR = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i32 0, align 4
@ID_OPTIONS_STATUSBAR = common dso_local global i32 0, align 4
@SB_SETPARTS = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CS_CLASSDC = common dso_local global i32 0, align 4
@CS_DBLCLKS = common dso_local global i32 0, align 4
@ChildWndProc = common dso_local global i32 0, align 4
@szChildClass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitInstance(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [7 x %struct.TYPE_11__], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 48, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %16 = load i32, i32* @CS_HREDRAW, align 4
  %17 = load i32, i32* @CS_VREDRAW, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %20 = load i32, i32* @FrameWndProc, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 6
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IDI_MDI_APP, align 4
  %28 = call i32 @MAKEINTRESOURCE(i32 %27)
  %29 = call i32 @LoadIcon(i32 %26, i32 %28)
  store i32 %29, i32* %25, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 7
  %31 = load i32, i32* @IDC_ARROW, align 4
  %32 = call i32 @LoadCursor(i32 0, i32 %31)
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 8
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 9
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 10
  %36 = load i32, i32* @szFrameClass, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 11
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IDI_MDI_APP, align 4
  %40 = call i32 @MAKEINTRESOURCE(i32 %39)
  %41 = load i32, i32* @IMAGE_ICON, align 4
  %42 = load i32, i32* @SM_CXSMICON, align 4
  %43 = call i32 @GetSystemMetrics(i32 %42)
  %44 = load i32, i32* @SM_CYSMICON, align 4
  %45 = call i32 @GetSystemMetrics(i32 %44)
  %46 = load i32, i32* @LR_SHARED, align 4
  %47 = call i32 @LoadImage(i32 %38, i32 %40, i32 %41, i32 %43, i32 %45, i32 %46)
  store i32 %47, i32* %37, align 4
  %48 = call i64 @RegisterClassEx(%struct.TYPE_9__* %6)
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IDC_MDI_APP, align 4
  %51 = call i32 @MAKEINTRESOURCE(i32 %50)
  %52 = call i32 @LoadMenu(i32 %49, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ID_OPTIONS_MENU, align 4
  %55 = call i32 @GetSubMenu(i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 8, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %58 = load i32, i32* @ICC_BAR_CLASSES, align 4
  store i32 %58, i32* %57, align 4
  %59 = call i32 @GetDC(i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* @hMenuFrame, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IDC_MDI_APP, align 4
  %63 = call i32 @MAKEINTRESOURCE(i32 %62)
  %64 = call i32 @LoadAccelerators(i32 %61, i32 %63)
  store i32 %64, i32* @hAccel, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @LOGPIXELSY, align 4
  %67 = call i32 @GetDeviceCaps(i32 %65, i32 %66)
  %68 = call i32 @MulDiv(i32 8, i32 %67, i32 72)
  %69 = sub nsw i32 0, %68
  %70 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @CreateFont(i32 %69, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %70)
  store i32 %71, i32* @hFont, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ReleaseDC(i32 0, i32 %72)
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @szTitle, align 4
  %77 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %78 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CW_USEDEFAULT, align 4
  %81 = load i32, i32* @CW_USEDEFAULT, align 4
  %82 = load i32, i32* @CW_USEDEFAULT, align 4
  %83 = load i32, i32* @CW_USEDEFAULT, align 4
  %84 = load i32, i32* @hMenuFrame, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @CreateWindowEx(i32 0, i32 %75, i32 %76, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32* null, i32 %84, i32 %85, i32* null)
  store i32 %86, i32* @hFrameWnd, align 4
  %87 = load i32, i32* @hFrameWnd, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %2
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %212

91:                                               ; preds = %2
  %92 = call i64 @InitCommonControlsEx(%struct.TYPE_12__* %10)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %191

94:                                               ; preds = %91
  %95 = getelementptr inbounds [7 x %struct.TYPE_11__], [7 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 16
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %100 = load i32, i32* @TBSTYLE_SEP, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 16
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %104 = load i32, i32* @ID_WINDOW_NEW_WINDOW, align 4
  store i32 %104, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %106 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %106, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %108 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 16
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %112 = load i32, i32* @ID_WINDOW_CASCADE, align 4
  store i32 %112, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %114 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %114, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %116 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %116, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32 2, i32* %118, align 16
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %120 = load i32, i32* @ID_WINDOW_TILE_HORZ, align 4
  store i32 %120, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %122 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %124 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 3, i32* %126, align 16
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %128 = load i32, i32* @ID_WINDOW_TILE_VERT, align 4
  store i32 %128, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %130 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %130, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %132 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %132, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 4, i32* %134, align 16
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 2, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %137 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %137, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %139 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i64 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 5, i32* %141, align 16
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32 2, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %144 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %144, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %146 = load i32, i32* @TBSTYLE_BUTTON, align 4
  store i32 %146, i32* %145, align 4
  %147 = load i32, i32* @hFrameWnd, align 4
  %148 = load i32, i32* @WS_CHILD, align 4
  %149 = load i32, i32* @WS_VISIBLE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @IDC_TOOLBAR, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @IDB_TOOLBAR, align 4
  %154 = getelementptr inbounds [7 x %struct.TYPE_11__], [7 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %155 = call i32 @CreateToolbarEx(i32 %147, i32 %150, i32 %151, i32 2, i32 %152, i32 %153, %struct.TYPE_11__* %154, i32 7, i32 16, i32 15, i32 16, i32 15, i32 16)
  store i32 %155, i32* @hToolBar, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @ID_OPTIONS_TOOLBAR, align 4
  %158 = load i32, i32* @MF_BYCOMMAND, align 4
  %159 = load i32, i32* @MF_CHECKED, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @CheckMenuItem(i32 %156, i32 %157, i32 %160)
  %162 = load i32, i32* @WS_VISIBLE, align 4
  %163 = load i32, i32* @WS_CHILD, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @SBT_NOBORDERS, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @hFrameWnd, align 4
  %170 = load i32, i32* @IDC_STATUSBAR, align 4
  %171 = call i32 @CreateStatusWindow(i32 %168, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %170)
  store i32 %171, i32* @hStatusBar, align 4
  %172 = load i32, i32* @hStatusBar, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %94
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %3, align 4
  br label %212

176:                                              ; preds = %94
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @ID_OPTIONS_STATUSBAR, align 4
  %179 = load i32, i32* @MF_BYCOMMAND, align 4
  %180 = load i32, i32* @MF_CHECKED, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @CheckMenuItem(i32 %177, i32 %178, i32 %181)
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 100, i32* %183, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 210, i32* %184, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 400, i32* %185, align 4
  %186 = load i32, i32* @hStatusBar, align 4
  %187 = load i32, i32* @SB_SETPARTS, align 4
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %189 = ptrtoint i32* %188 to i32
  %190 = call i32 @SendMessage(i32 %186, i32 %187, i32 3, i32 %189)
  br label %204

191:                                              ; preds = %91
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @ID_OPTIONS_TOOLBAR, align 4
  %194 = load i32, i32* @MF_BYCOMMAND, align 4
  %195 = load i32, i32* @MF_GRAYED, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @CheckMenuItem(i32 %192, i32 %193, i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @ID_OPTIONS_STATUSBAR, align 4
  %200 = load i32, i32* @MF_BYCOMMAND, align 4
  %201 = load i32, i32* @MF_GRAYED, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @CheckMenuItem(i32 %198, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %191, %176
  %205 = load i32, i32* @hFrameWnd, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @ShowWindow(i32 %205, i32 %206)
  %208 = load i32, i32* @hFrameWnd, align 4
  %209 = call i32 @UpdateWindow(i32 %208)
  %210 = call i32 (...) @UpdateStatusBar()
  %211 = load i32, i32* @TRUE, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %204, %174, %89
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @LoadIcon(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @LoadCursor(i32, i32) #1

declare dso_local i32 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @RegisterClassEx(%struct.TYPE_9__*) #1

declare dso_local i32 @LoadMenu(i32, i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @LoadAccelerators(i32, i32) #1

declare dso_local i32 @CreateFont(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @CreateWindowEx(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @InitCommonControlsEx(%struct.TYPE_12__*) #1

declare dso_local i32 @CreateToolbarEx(i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @CreateStatusWindow(i32, i8*, i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @UpdateWindow(i32) #1

declare dso_local i32 @UpdateStatusBar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
