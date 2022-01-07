; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_12__*, i32, i64, i8*, i8*, i64, i32*, i64, i64, i64, i64, i64, i64, i32* }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i8* null, align 8
@GWL_STYLE = common dso_local global i32 0, align 4
@LBS_NOSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[%p]: resetting owner %p -> %p\0A\00", align 1
@LBS_EXTENDEDSEL = common dso_local global i32 0, align 4
@LBS_MULTIPLESEL = common dso_local global i32 0, align 4
@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@LBS_NOINTEGRALHEIGHT = common dso_local global i32 0, align 4
@LBS_NODATA = common dso_local global i32 0, align 4
@LBS_OWNERDRAWFIXED = common dso_local global i32 0, align 4
@LBS_HASSTRINGS = common dso_local global i32 0, align 4
@LBS_SORT = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODT_LISTBOX = common dso_local global i32 0, align 4
@WM_MEASUREITEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"owner: %p, style: %08x, width: %d, height: %d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_12__*)* @LISTBOX_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @LISTBOX_Create(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = call i32 (...) @GetProcessHeap()
  %11 = call %struct.TYPE_13__* @HeapAlloc(i32 %10, i32 0, i32 168)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** %3, align 8
  br label %287

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GetClientRect(i32 %16, %struct.TYPE_10__* %8)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GetParent(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GWL_STYLE, align 4
  %31 = call i32 @GetWindowLongPtrW(i32 %29, i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %35, %37
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 8
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 7
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 24
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 23
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 22
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 21
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i32 -1, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  store i32 150, i32* %65, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 20
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 19
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 18
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 17
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 16
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = icmp ne %struct.TYPE_12__* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LBS_NOSEL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %15
  %89 = load i8*, i8** @FALSE, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %15
  %94 = load i8*, i8** @FALSE, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 15
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @FALSE, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 14
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 13
  store i64 0, i64* %101, align 8
  %102 = call i32 (...) @GetUserDefaultLCID()
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 11
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = icmp ne %struct.TYPE_12__* %108, null
  br i1 %109, label %110, label %127

110:                                              ; preds = %93
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 (i8*, i32, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116, i64 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %110, %93
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = ptrtoint %struct.TYPE_13__* %131 to i32
  %133 = call i32 @SetWindowLongPtrW(i32 %130, i32 0, i32 %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = call i32 @LISTBOX_update_uistate(%struct.TYPE_13__* %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %127
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %155, %148
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load i32, i32* @LBS_NOINTEGRALHEIGHT, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @LBS_NODATA, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %175
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @LBS_OWNERDRAWFIXED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %182
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @LBS_HASSTRINGS, align 4
  %194 = load i32, i32* @LBS_SORT, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %189, %182
  %199 = load i32, i32* @LBS_NODATA, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %189, %175
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %207 = call i32 @LISTBOX_SetFont(%struct.TYPE_13__* %206, i32 0)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @LBS_OWNERDRAWFIXED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %272

216:                                              ; preds = %205
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 11
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = icmp ne %struct.TYPE_12__* %219, null
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 11
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CBS_DROPDOWN, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %221
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  br label %271

236:                                              ; preds = %221, %216
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 10
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @GWLP_ID, align 4
  %241 = call i32 @GetWindowLongPtrW(i32 %239, i32 %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* @ODT_LISTBOX, align 4
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* %9, align 4
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32 %244, i32* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 -1, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i64 0, i64* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %251, i32* %252, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @WM_MEASUREITEM, align 4
  %257 = load i32, i32* %9, align 4
  %258 = ptrtoint %struct.TYPE_11__* %7 to i32
  %259 = call i32 @SendMessageW(i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %236
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  br label %267

266:                                              ; preds = %236
  br label %267

267:                                              ; preds = %266, %263
  %268 = phi i32 [ %265, %263 ], [ 1, %266 ]
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  br label %271

271:                                              ; preds = %267, %230
  br label %272

272:                                              ; preds = %271, %205
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 7
  %284 = load i64, i64* %283, align 8
  %285 = call i32 (i8*, i32, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %275, i32 %278, i64 %281, i64 %284)
  %286 = load i8*, i8** @TRUE, align 8
  store i8* %286, i8** %3, align 8
  br label %287

287:                                              ; preds = %272, %13
  %288 = load i8*, i8** %3, align 8
  ret i8* %288
}

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @GetUserDefaultLCID(...) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i64, ...) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @LISTBOX_update_uistate(%struct.TYPE_13__*) #1

declare dso_local i32 @LISTBOX_SetFont(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
