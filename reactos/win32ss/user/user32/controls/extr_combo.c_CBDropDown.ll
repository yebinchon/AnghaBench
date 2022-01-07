; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBDropDown.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBDropDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"[%p]: drop down\0A\00", align 1
@CBN_DROPDOWN = common dso_local global i32 0, align 4
@CBF_DROPPED = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CBF_CAPTURE = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_SETTOPINDEX = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@LB_CARETON = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETITEMHEIGHT = common dso_local global i32 0, align 4
@MONITOR_DEFAULTTOPRIMARY = common dso_local global i32 0, align 4
@HWND_TOPMOST = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_SHOWWINDOW = common dso_local global i32 0, align 4
@CBF_NOREDRAW = common dso_local global i32 0, align 4
@RDW_INVALIDATE = common dso_local global i32 0, align 4
@RDW_ERASE = common dso_local global i32 0, align 4
@RDW_UPDATENOW = common dso_local global i32 0, align 4
@RDW_NOCHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @CBDropDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBDropDown(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = load i32, i32* @CBN_DROPDOWN, align 4
  %17 = call i32 @CB_NOTIFY(%struct.TYPE_18__* %15, i32 %16)
  %18 = load i32, i32* @CBF_DROPPED, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = call i64 @CB_GETTYPE(%struct.TYPE_18__* %23)
  %25 = load i64, i64* @CBS_DROPDOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i64 @CBUpdateLBox(%struct.TYPE_18__* %28, i32 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CBF_CAPTURE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @CBUpdateEdit(%struct.TYPE_18__* %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %39, %27
  br label %82

51:                                               ; preds = %1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @LB_GETCURSEL, align 4
  %56 = call i64 @SendMessageW(i64 %54, i32 %55, i32 0, i32 0)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @LB_SETTOPINDEX, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LB_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %73

69:                                               ; preds = %51
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i64 [ 0, %68 ], [ %72, %69 ]
  %75 = trunc i64 %74 to i32
  %76 = call i64 @SendMessageW(i64 %61, i32 %62, i32 %75, i32 0)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @LB_CARETON, align 4
  %81 = call i64 @SendMessageW(i64 %79, i32 %80, i32 0, i32 0)
  br label %82

82:                                               ; preds = %73, %50
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @GetWindowRect(i64 %85, %struct.TYPE_16__* %5)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = call i64 @CB_GETTYPE(%struct.TYPE_18__* %87)
  %89 = load i64, i64* @CBS_DROPDOWN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %92
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %100, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @GetWindowRect(i64 %108, %struct.TYPE_16__* %6)
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %112, %114
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %96
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %119, %121
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %117, %96
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @LB_GETCOUNT, align 4
  %128 = call i64 @SendMessageW(i64 %126, i32 %127, i32 0, i32 0)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %123
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @LB_GETITEMHEIGHT, align 4
  %137 = call i64 @SendMessageW(i64 %135, i32 %136, i32 0, i32 0)
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (...) @COMBO_YBORDERSIZE()
  %145 = sub nsw i32 %143, %144
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %132
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (...) @COMBO_YBORDERSIZE()
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %132
  br label %152

152:                                              ; preds = %151, %123
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %160, %164
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %165, %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  store i64 %170, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %173, %174
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = load i32, i32* @MONITOR_DEFAULTTOPRIMARY, align 4
  %178 = call i32 @MonitorFromRect(%struct.TYPE_16__* %5, i32 %177)
  store i32 %178, i32* %3, align 4
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  store i32 24, i32* %179, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @GetMonitorInfoW(i32 %180, %struct.TYPE_17__* %4)
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %152
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %8, align 4
  %193 = sub nsw i32 %191, %192
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @max(i32 %193, i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %200, %201
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @min(i32 %202, i64 %205)
  %207 = trunc i64 %206 to i32
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 %207, i32* %208, align 8
  br label %209

209:                                              ; preds = %189, %152
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @HWND_TOPMOST, align 4
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %219, %221
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %224, %226
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* @SWP_NOACTIVATE, align 4
  %230 = load i32, i32* @SWP_SHOWWINDOW, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @SetWindowPos(i64 %212, i32 %213, i64 %215, i32 %217, i64 %222, i64 %228, i32 %231)
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CBF_NOREDRAW, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %209
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* @RDW_INVALIDATE, align 4
  %244 = load i32, i32* @RDW_ERASE, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @RDW_UPDATENOW, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @RDW_NOCHILDREN, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @RedrawWindow(i64 %242, i32* null, i32 0, i32 %249)
  br label %251

251:                                              ; preds = %239, %209
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* @TRUE, align 4
  %256 = call i32 @EnableWindow(i64 %254, i32 %255)
  %257 = call i64 (...) @GetCapture()
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %257, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %251
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @SetCapture(i64 %265)
  br label %267

267:                                              ; preds = %262, %251
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @CB_NOTIFY(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_18__*) #1

declare dso_local i64 @CBUpdateLBox(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @CBUpdateEdit(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_16__*) #1

declare dso_local i64 @COMBO_EDITBUTTONSPACE(...) #1

declare dso_local i32 @COMBO_YBORDERSIZE(...) #1

declare dso_local i32 @MonitorFromRect(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @GetMonitorInfoW(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @SetWindowPos(i64, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @RedrawWindow(i64, i32*, i32, i32) #1

declare dso_local i32 @EnableWindow(i64, i32) #1

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @SetCapture(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
