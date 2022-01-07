; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i8*, %struct.TYPE_13__, %struct.TYPE_12__, i32, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@COMBO_Create.clbName = internal constant [10 x i8] c"ComboLBox\00", align 1
@COMBO_Create.editName = internal constant [5 x i8] c"Edit\00", align 1
@CBS_SIMPLE = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i32 0, align 4
@CBF_EDIT = common dso_local global i32 0, align 4
@CBF_MEASUREITEM = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@LBS_NOTIFY = common dso_local global i32 0, align 4
@LBS_COMBOBOX = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@CBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@CBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@CBS_SORT = common dso_local global i32 0, align 4
@LBS_SORT = common dso_local global i32 0, align 4
@CBS_HASSTRINGS = common dso_local global i32 0, align 4
@LBS_HASSTRINGS = common dso_local global i32 0, align 4
@CBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@LBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@CBS_DISABLENOSCROLL = common dso_local global i32 0, align 4
@LBS_DISABLENOSCROLL = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@ID_CB_LISTBOX = common dso_local global i64 0, align 8
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ComboLBox\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@ES_LEFT = common dso_local global i32 0, align 4
@ES_COMBO = common dso_local global i32 0, align 4
@CBS_OEMCONVERT = common dso_local global i32 0, align 4
@ES_OEMCONVERT = common dso_local global i32 0, align 4
@CBS_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@CBS_LOWERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@CBS_UPPERCASE = common dso_local global i32 0, align 4
@ES_UPPERCASE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@ID_CB_EDIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@FALSE = common dso_local global i64 0, align 8
@HWND_DESKTOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"init done\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"edit control failure.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"listbox failure.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"no owner for visible combo.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_11__*, i64, i32, i64)* @COMBO_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_Create(i64 %0, %struct.TYPE_11__* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @CBS_SIMPLE, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %25)
  %27 = load i32, i32* @CBS_DROPDOWNLIST, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @CBF_EDIT, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @CBF_MEASUREITEM, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @WS_VISIBLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %489, label %57

57:                                               ; preds = %52, %35
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = call i32 @GetClientRect(i64 %58, %struct.TYPE_12__* %60)
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = call i32 @CBCalcPlacement(i64 %62, %struct.TYPE_11__* %63, %struct.TYPE_13__* %65, i32* %67, %struct.TYPE_12__* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %71)
  %73 = load i32, i32* @CBS_SIMPLE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %138

75:                                               ; preds = %57
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 (...) @COMBO_YBORDERSIZE()
  %81 = add nsw i64 %79, %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %85)
  %87 = load i32, i32* @CBS_DROPDOWN, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = call i64 (...) @COMBO_EDITBUTTONSPACE()
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %90
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %89, %75
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %96
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %118, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %124, %114
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  %136 = ptrtoint %struct.TYPE_12__* %135 to i32
  %137 = call i32 @MapWindowPoints(i64 %133, i32 0, i32 %136, i32 2)
  br label %138

138:                                              ; preds = %132, %57
  %139 = load i32, i32* @LBS_NOTIFY, align 4
  %140 = load i32, i32* @LBS_COMBOBOX, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @WS_BORDER, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @WS_CHILD, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @WS_VSCROLL, align 4
  %150 = load i32, i32* @CBS_OWNERDRAWFIXED, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @CBS_OWNERDRAWVARIABLE, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %148, %153
  %155 = or i32 %147, %154
  store i32 %155, i32* %12, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CBS_SORT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %138
  %163 = load i32, i32* @LBS_SORT, align 4
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %162, %138
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CBS_HASSTRINGS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @LBS_HASSTRINGS, align 4
  %175 = load i32, i32* %12, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %173, %166
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CBS_NOINTEGRALHEIGHT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @LBS_NOINTEGRALHEIGHT, align 4
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CBS_DISABLENOSCROLL, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @LBS_DISABLENOSCROLL, align 4
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %195, %188
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %201 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %200)
  %202 = load i32, i32* @CBS_SIMPLE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load i32, i32* @WS_VISIBLE, align 4
  %206 = load i32, i32* %12, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* @WS_BORDER, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %12, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %213 = load i32, i32* %13, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %13, align 4
  br label %221

215:                                              ; preds = %199
  %216 = load i32, i32* @WS_EX_TOPMOST, align 4
  %217 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %13, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %215, %204
  %222 = load i64, i64* %11, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %264

224:                                              ; preds = %221
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %238, %242
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %247, %251
  %253 = load i64, i64* %7, align 8
  %254 = load i64, i64* @ID_CB_LISTBOX, align 8
  %255 = trunc i64 %254 to i32
  %256 = load i64, i64* %7, align 8
  %257 = load i32, i32* @GWLP_HINSTANCE, align 4
  %258 = call i64 @GetWindowLongPtrW(i64 %256, i32 %257)
  %259 = trunc i64 %258 to i32
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %261 = call i8* @CreateWindowExW(i32 %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @COMBO_Create.clbName, i64 0, i64 0), i32* null, i32 %226, i64 %230, i64 %234, i64 %243, i64 %252, i64 %253, i32 %255, i32 %259, %struct.TYPE_11__* %260)
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  br label %304

264:                                              ; preds = %221
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %278, %282
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %287, %291
  %293 = load i64, i64* %7, align 8
  %294 = load i64, i64* @ID_CB_LISTBOX, align 8
  %295 = trunc i64 %294 to i32
  %296 = load i64, i64* %7, align 8
  %297 = load i32, i32* @GWLP_HINSTANCE, align 4
  %298 = call i64 @GetWindowLongPtrW(i64 %296, i32 %297)
  %299 = trunc i64 %298 to i32
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %301 = call i8* @CreateWindowExA(i32 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %266, i64 %270, i64 %274, i64 %283, i64 %292, i64 %293, i32 %295, i32 %299, %struct.TYPE_11__* %300)
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %304

304:                                              ; preds = %264, %224
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %486

309:                                              ; preds = %304
  %310 = load i64, i64* @TRUE, align 8
  store i64 %310, i64* %14, align 8
  %311 = load i32, i32* @WS_CHILD, align 4
  %312 = load i32, i32* @WS_VISIBLE, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @ES_NOHIDESEL, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @ES_LEFT, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @ES_COMBO, align 4
  %319 = or i32 %317, %318
  store i32 %319, i32* %12, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @CBF_EDIT, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %466

326:                                              ; preds = %309
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @CBS_OEMCONVERT, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %326
  %334 = load i32, i32* @ES_OEMCONVERT, align 4
  %335 = load i32, i32* %12, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %12, align 4
  br label %337

337:                                              ; preds = %333, %326
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @CBS_AUTOHSCROLL, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %337
  %345 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %346 = load i32, i32* %12, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %12, align 4
  br label %348

348:                                              ; preds = %344, %337
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @CBS_LOWERCASE, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %348
  %356 = load i32, i32* @ES_LOWERCASE, align 4
  %357 = load i32, i32* %12, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %12, align 4
  br label %371

359:                                              ; preds = %348
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @CBS_UPPERCASE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %359
  %367 = load i32, i32* @ES_UPPERCASE, align 4
  %368 = load i32, i32* %12, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %12, align 4
  br label %370

370:                                              ; preds = %366, %359
  br label %371

371:                                              ; preds = %370, %355
  %372 = load i64, i64* %7, align 8
  %373 = call i32 @IsWindowEnabled(i64 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %371
  %376 = load i32, i32* @WS_DISABLED, align 4
  %377 = load i32, i32* %12, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %12, align 4
  br label %379

379:                                              ; preds = %375, %371
  %380 = load i64, i64* %11, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %420

382:                                              ; preds = %379
  %383 = load i32, i32* %12, align 4
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 4
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = sub nsw i64 %395, %399
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 4
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = sub nsw i64 %404, %408
  %410 = load i64, i64* %7, align 8
  %411 = load i64, i64* @ID_CB_EDIT, align 8
  %412 = trunc i64 %411 to i32
  %413 = load i64, i64* %7, align 8
  %414 = load i32, i32* @GWLP_HINSTANCE, align 4
  %415 = call i64 @GetWindowLongPtrW(i64 %413, i32 %414)
  %416 = trunc i64 %415 to i32
  %417 = call i8* @CreateWindowExW(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @COMBO_Create.editName, i64 0, i64 0), i32* null, i32 %383, i64 %387, i64 %391, i64 %400, i64 %409, i64 %410, i32 %412, i32 %416, %struct.TYPE_11__* null)
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 3
  store i8* %417, i8** %419, align 8
  br label %458

420:                                              ; preds = %379
  %421 = load i32, i32* %12, align 4
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 4
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 4
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 4
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 3
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 4
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = sub nsw i64 %433, %437
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 4
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 4
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = sub nsw i64 %442, %446
  %448 = load i64, i64* %7, align 8
  %449 = load i64, i64* @ID_CB_EDIT, align 8
  %450 = trunc i64 %449 to i32
  %451 = load i64, i64* %7, align 8
  %452 = load i32, i32* @GWLP_HINSTANCE, align 4
  %453 = call i64 @GetWindowLongPtrW(i64 %451, i32 %452)
  %454 = trunc i64 %453 to i32
  %455 = call i8* @CreateWindowExA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %421, i64 %425, i64 %429, i64 %438, i64 %447, i64 %448, i32 %450, i32 %454, %struct.TYPE_11__* null)
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 3
  store i8* %455, i8** %457, align 8
  br label %458

458:                                              ; preds = %420, %382
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 3
  %461 = load i8*, i8** %460, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %458
  %464 = load i64, i64* @FALSE, align 8
  store i64 %464, i64* %14, align 8
  br label %465

465:                                              ; preds = %463, %458
  br label %466

466:                                              ; preds = %465, %309
  %467 = load i64, i64* %14, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %484

469:                                              ; preds = %466
  %470 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %471 = call i32 @CB_GETTYPE(%struct.TYPE_11__* %470)
  %472 = load i32, i32* @CBS_SIMPLE, align 4
  %473 = icmp ne i32 %471, %472
  br i1 %473, label %474, label %482

474:                                              ; preds = %469
  %475 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 2
  %477 = load i8*, i8** %476, align 8
  %478 = load i32, i32* @HWND_DESKTOP, align 4
  %479 = call i32 @SetParent(i8* %477, i32 %478)
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %481 = call i32 @CBForceDummyResize(%struct.TYPE_11__* %480)
  br label %482

482:                                              ; preds = %474, %469
  %483 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %492

484:                                              ; preds = %466
  %485 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %488

486:                                              ; preds = %304
  %487 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %488

488:                                              ; preds = %486, %484
  br label %491

489:                                              ; preds = %52
  %490 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %491

491:                                              ; preds = %489, %488
  store i32 -1, i32* %6, align 4
  br label %492

492:                                              ; preds = %491, %482
  %493 = load i32, i32* %6, align 4
  ret i32 %493
}

declare dso_local i32 @CB_GETTYPE(%struct.TYPE_11__*) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @CBCalcPlacement(i64, %struct.TYPE_11__*, %struct.TYPE_13__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @COMBO_YBORDERSIZE(...) #1

declare dso_local i64 @COMBO_EDITBUTTONSPACE(...) #1

declare dso_local i32 @MapWindowPoints(i64, i32, i32, i32) #1

declare dso_local i8* @CreateWindowExW(i32, i8*, i32*, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i8* @CreateWindowExA(i32, i8*, i32*, i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @SetParent(i8*, i32) #1

declare dso_local i32 @CBForceDummyResize(%struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
