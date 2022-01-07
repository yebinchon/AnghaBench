; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_PaintItem.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_PaintItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32*, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32 }

@ODA_FOCUS = common dso_local global i32 0, align 4
@UISF_HIDEFOCUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"called with an out of bounds index %d(%d) in owner draw, Not good.\0A\00", align 1
@ODT_LISTBOX = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@ODS_SELECTED = common dso_local global i32 0, align 4
@ODS_FOCUS = common dso_local global i32 0, align 4
@ODS_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"[%p]: drawitem %d (%s) action=%02x state=%02x rect=%s\0A\00", align 1
@WM_DRAWITEM = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"[%p]: painting %d (%s) action=%02x rect=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETO_OPAQUE = common dso_local global i32 0, align 4
@ETO_CLIPPED = common dso_local global i32 0, align 4
@LBS_USETABSTOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, %struct.TYPE_13__*, i64, i32, i32)* @LISTBOX_PaintItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_PaintItem(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_13__* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 10
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %13, align 8
  br label %30

30:                                               ; preds = %24, %6
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = call i64 @IS_OWNERDRAW(%struct.TYPE_15__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %170

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ODA_FOCUS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @UISF_HIDEFOCUS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = call i32 @DrawFocusRect(i32 %49, %struct.TYPE_13__* %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %59

53:                                               ; preds = %37
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %52
  br label %349

60:                                               ; preds = %34
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @GetClientRect(i32 %63, %struct.TYPE_13__* %15)
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @set_control_clipping(i32 %65, %struct.TYPE_13__* %15)
  store i64 %66, i64* %16, align 8
  %67 = load i32, i32* @ODT_LISTBOX, align 4
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 8
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GWLP_ID, align 4
  %73 = call i32 @GetWindowLongPtrW(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 7
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 6
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %60
  %91 = load i32, i32* @ODS_SELECTED, align 4
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %60
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @ODS_FOCUS, align 4
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %109, %104, %98, %95
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @IsWindowEnabled(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @ODS_DISABLED, align 4
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %125, %119
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = bitcast %struct.TYPE_13__* %135 to i8*
  %138 = bitcast %struct.TYPE_13__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i8* @debugstr_w(i32* %145)
  %147 = load i32, i32* %11, align 4
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = call i32 @wine_dbgstr_rect(%struct.TYPE_13__* %150)
  %152 = call i32 (i8*, i32, i64, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %141, i64 %142, i8* %146, i32 %147, i32 %149, i32 %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @WM_DRAWITEM, align 4
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = ptrtoint %struct.TYPE_16__* %14 to i32
  %160 = call i32 @SendMessageW(i32 %155, i32 %156, i32 %158, i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %16, align 8
  %163 = call i32 @SelectClipRgn(i32 %161, i64 %162)
  %164 = load i64, i64* %16, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %130
  %167 = load i64, i64* %16, align 8
  %168 = call i32 @DeleteObject(i64 %167)
  br label %169

169:                                              ; preds = %166, %130
  br label %349

170:                                              ; preds = %30
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ODA_FOCUS, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @UISF_HIDEFOCUS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = call i32 @DrawFocusRect(i32 %182, %struct.TYPE_13__* %183)
  br label %185

185:                                              ; preds = %181, %174
  br label %349

186:                                              ; preds = %170
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %188 = icmp ne %struct.TYPE_14__* %187, null
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %197 = call i32 @GetSysColor(i32 %196)
  %198 = call i32 @SetBkColor(i32 %195, i32 %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %201 = call i32 @GetSysColor(i32 %200)
  %202 = call i32 @SetTextColor(i32 %199, i32 %201)
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %194, %189, %186
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %209 = icmp ne %struct.TYPE_14__* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = call i8* @debugstr_w(i32* %213)
  br label %216

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %210
  %217 = phi i8* [ %214, %210 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %215 ]
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %220 = call i32 @wine_dbgstr_rect(%struct.TYPE_13__* %219)
  %221 = call i32 (i8*, i32, i64, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %206, i64 %207, i8* %217, i32 %218, i32 %220)
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %223 = icmp ne %struct.TYPE_14__* %222, null
  br i1 %223, label %238, label %224

224:                                              ; preds = %216
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ETO_OPAQUE, align 4
  %234 = load i32, i32* @ETO_CLIPPED, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %237 = call i32 @ExtTextOutW(i32 %225, i64 %229, i32 %232, i32 %235, %struct.TYPE_13__* %236, i32* null, i32 0, i32* null)
  br label %303

238:                                              ; preds = %216
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @LBS_USETABSTOPS, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %266, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 1
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ETO_OPAQUE, align 4
  %255 = load i32, i32* @ETO_CLIPPED, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @strlenW(i32* %263)
  %265 = call i32 @ExtTextOutW(i32 %246, i64 %250, i32 %253, i32 %256, %struct.TYPE_13__* %257, i32* %260, i32 %264, i32* null)
  br label %302

266:                                              ; preds = %238
  %267 = load i32, i32* %8, align 4
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ETO_OPAQUE, align 4
  %276 = load i32, i32* @ETO_CLIPPED, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %279 = call i32 @ExtTextOutW(i32 %267, i64 %271, i32 %274, i32 %277, %struct.TYPE_13__* %278, i32* null, i32 0, i32* null)
  %280 = load i32, i32* %8, align 4
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @strlenW(i32* %293)
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @TabbedTextOutW(i32 %280, i64 %284, i32 %287, i32* %290, i32 %294, i32 %297, i32 %300, i32 0)
  br label %302

302:                                              ; preds = %266, %245
  br label %303

303:                                              ; preds = %302, %224
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %305 = icmp ne %struct.TYPE_14__* %304, null
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %18, align 4
  %314 = call i32 @SetBkColor(i32 %312, i32 %313)
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* %17, align 4
  %317 = call i32 @SetTextColor(i32 %315, i32 %316)
  br label %318

318:                                              ; preds = %311, %306, %303
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %348, label %321

321:                                              ; preds = %318
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %10, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %348

327:                                              ; preds = %321
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 5
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %327
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %332
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @UISF_HIDEFOCUS, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %337
  %345 = load i32, i32* %8, align 4
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %347 = call i32 @DrawFocusRect(i32 %345, %struct.TYPE_13__* %346)
  br label %348

348:                                              ; preds = %344, %337, %332, %327, %321, %318
  br label %349

349:                                              ; preds = %59, %185, %348, %169
  ret void
}

declare dso_local i64 @IS_OWNERDRAW(%struct.TYPE_15__*) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*, i64, i64) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @set_control_clipping(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TRACE(i8*, i32, i64, i8*, i32, i32, ...) #1

declare dso_local i8* @debugstr_w(i32*) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_13__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i64) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i64, i32, i32, %struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @TabbedTextOutW(i32, i64, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
