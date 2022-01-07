; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_ghost.c_Ghost_OnCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64 }

@FNID_GHOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Wrong window class for Ghost! fnId 0x%x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@GHOST_PROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hbm32bpp was NULL\0A\00", align 1
@GWLP_USERDATA = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Ghost_GetText failed\0A\00", align 1
@WS_HSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@User32Instance = common dso_local global i32 0, align 4
@IDS_NOT_RESPONDING = common dso_local global i32 0, align 4
@GW_HWNDPREV = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@SWP_DRAWFRAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GHOST_TIMER_ID = common dso_local global i32 0, align 4
@GHOST_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_22__*)* @Ghost_OnCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ghost_OnCreate(i64 %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [320 x %struct.TYPE_19__], align 16
  %14 = alloca [32 x %struct.TYPE_19__], align 16
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.TYPE_21__* @ValidateHwnd(i64 %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %19, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %23 = icmp ne %struct.TYPE_21__* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @FNID_GHOST, align 8
  %32 = call i32 @NtUserSetWindowFNID(i64 %30, i64 %31)
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FNID_GHOST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %250

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @IsWindowVisible(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @GWL_STYLE, align 4
  %57 = call i32 @GetWindowLongPtrW(i64 %55, i32 %56)
  %58 = load i32, i32* @WS_CHILD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @IsHungAppWindow(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61, %54, %47
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %250

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* @GHOST_PROP, align 4
  %70 = call i64 @GetPropW(i64 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %250

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @GHOST_PROP, align 4
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @SetPropW(i64 %75, i32 %76, i64 %77)
  %79 = call i32 (...) @GetProcessHeap()
  %80 = call %struct.TYPE_19__* @HeapAlloc(i32 %79, i32 0, i32 24)
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %9, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %250

86:                                               ; preds = %74
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @GetWindowRect(i64 %87, %struct.TYPE_20__* %10)
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %91, %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  %100 = call i64 @IntGetWindowBitmap(i64 %89, i64 %94, i64 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %86
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = call i32 @HeapFree(i32 %105, i32 0, %struct.TYPE_19__* %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %250

109:                                              ; preds = %86
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @IntMakeGhostImage(i64 %110)
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @FALSE, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* %4, align 8
  %122 = load i32, i32* @GWLP_USERDATA, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = ptrtoint %struct.TYPE_19__* %123 to i32
  %125 = call i32 @SetWindowLongPtrW(i64 %121, i32 %122, i32 %124)
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* @GWL_STYLE, align 4
  %128 = call i32 @GetWindowLongPtrW(i64 %126, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load i32, i32* @GWL_EXSTYLE, align 4
  %131 = call i32 @GetWindowLongPtrW(i64 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = getelementptr inbounds [320 x %struct.TYPE_19__], [320 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %133 = call i32 @ARRAYSIZE(%struct.TYPE_19__* %132)
  store i32 %133, i32* %16, align 4
  %134 = getelementptr inbounds [32 x %struct.TYPE_19__], [32 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %135 = call i32 @ARRAYSIZE(%struct.TYPE_19__* %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %18, align 4
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds [320 x %struct.TYPE_19__], [320 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @InternalGetWindowText(i64 %139, %struct.TYPE_19__* %140, i32 %141)
  %143 = load i32, i32* %18, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %109
  %147 = getelementptr inbounds [320 x %struct.TYPE_19__], [320 x %struct.TYPE_19__]* %13, i64 0, i64 0
  store %struct.TYPE_19__* %147, %struct.TYPE_19__** %15, align 8
  br label %165

148:                                              ; preds = %109
  %149 = load i32, i32* %16, align 4
  %150 = mul nsw i32 %149, 2
  store i32 %150, i32* %16, align 4
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %17, align 4
  %153 = call %struct.TYPE_19__* @Ghost_GetText(i64 %151, i32* %16, i32 %152)
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %15, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %155 = icmp ne %struct.TYPE_19__* %154, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %148
  %157 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @DeleteObject(i64 %158)
  %160 = call i32 (...) @GetProcessHeap()
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %162 = call i32 @HeapFree(i32 %160, i32 0, %struct.TYPE_19__* %161)
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %3, align 4
  br label %250

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %146
  %166 = load i32, i32* @WS_HSCROLL, align 4
  %167 = load i32, i32* @WS_VSCROLL, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @WS_VISIBLE, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load i64, i64* %4, align 8
  %175 = load i32, i32* @GWL_STYLE, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @SetWindowLongPtrW(i64 %174, i32 %175, i32 %176)
  %178 = load i64, i64* %4, align 8
  %179 = load i32, i32* @GWL_EXSTYLE, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @SetWindowLongPtrW(i64 %178, i32 %179, i32 %180)
  %182 = load i32, i32* @User32Instance, align 4
  %183 = load i32, i32* @IDS_NOT_RESPONDING, align 4
  %184 = getelementptr inbounds [32 x %struct.TYPE_19__], [32 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %185 = getelementptr inbounds [32 x %struct.TYPE_19__], [32 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %186 = call i32 @ARRAYSIZE(%struct.TYPE_19__* %185)
  %187 = call i32 @LoadStringW(i32 %182, i32 %183, %struct.TYPE_19__* %184, i32 %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %189 = load i32, i32* %16, align 4
  %190 = getelementptr inbounds [32 x %struct.TYPE_19__], [32 x %struct.TYPE_19__]* %14, i64 0, i64 0
  %191 = call i32 @StringCchCatW(%struct.TYPE_19__* %188, i32 %189, %struct.TYPE_19__* %190)
  %192 = load i64, i64* %4, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %194 = call i32 @SetWindowTextW(i64 %192, %struct.TYPE_19__* %193)
  %195 = getelementptr inbounds [320 x %struct.TYPE_19__], [320 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %197 = icmp ne %struct.TYPE_19__* %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %165
  %199 = call i32 (...) @GetProcessHeap()
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %201 = call i32 @HeapFree(i32 %199, i32 0, %struct.TYPE_19__* %200)
  br label %202

202:                                              ; preds = %198, %165
  %203 = load i64, i64* %7, align 8
  %204 = load i32, i32* @GW_HWNDPREV, align 4
  %205 = call i64 @GetWindow(i64 %203, i32 %204)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i32, i32* @SW_HIDE, align 4
  %208 = call i32 @ShowWindowAsync(i64 %206, i32 %207)
  %209 = load i64, i64* %4, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load i32, i32* @SWP_NOMOVE, align 4
  %212 = load i32, i32* @SWP_NOACTIVATE, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @SWP_DRAWFRAME, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @SetWindowPos(i64 %209, i64 %210, i32 0, i32 0, i32 0, i32 0, i32 %217)
  %219 = load i64, i64* %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %225, %227
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %230, %232
  %234 = load i32, i32* @TRUE, align 4
  %235 = call i32 @MoveWindow(i64 %219, i64 %221, i64 %223, i64 %228, i64 %233, i32 %234)
  %236 = load i64, i64* %4, align 8
  %237 = load i32, i32* @GWL_STYLE, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @WS_VISIBLE, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @SetWindowLongPtrW(i64 %236, i32 %237, i32 %240)
  %242 = load i64, i64* %4, align 8
  %243 = load i32, i32* @TRUE, align 4
  %244 = call i32 @InvalidateRect(i64 %242, i32* null, i32 %243)
  %245 = load i64, i64* %4, align 8
  %246 = load i32, i32* @GHOST_TIMER_ID, align 4
  %247 = load i32, i32* @GHOST_INTERVAL, align 4
  %248 = call i32 @SetTimer(i64 %245, i32 %246, i32 %247, i32* null)
  %249 = load i32, i32* @TRUE, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %202, %156, %103, %83, %72, %65, %39
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.TYPE_21__* @ValidateHwnd(i64) #1

declare dso_local i32 @NtUserSetWindowFNID(i64, i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @IsWindowVisible(i64) #1

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @IsHungAppWindow(i64) #1

declare dso_local i64 @GetPropW(i64, i32) #1

declare dso_local i32 @SetPropW(i64, i32, i64) #1

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_20__*) #1

declare dso_local i64 @IntGetWindowBitmap(i64, i64, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @IntMakeGhostImage(i64) #1

declare dso_local i32 @SetWindowLongPtrW(i64, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @InternalGetWindowText(i64, %struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_19__* @Ghost_GetText(i64, i32*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @LoadStringW(i32, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @StringCchCatW(%struct.TYPE_19__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @SetWindowTextW(i64, %struct.TYPE_19__*) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i32 @ShowWindowAsync(i64, i32) #1

declare dso_local i32 @SetWindowPos(i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MoveWindow(i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @SetTimer(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
