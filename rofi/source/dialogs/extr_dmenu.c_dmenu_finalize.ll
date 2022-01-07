; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_finalize.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@MENU_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-only-match\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@MENU_CUSTOM_ACTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@MENU_OK = common dso_local global i32 0, align 4
@MENU_QUICK_SWITCH = common dso_local global i32 0, align 4
@MENU_LOWER_MASK = common dso_local global i32 0, align 4
@MENU_CUSTOM_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dmenu_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmenu_finalize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_7__* @rofi_view_get_mode(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @rofi_view_get_user_input(i32* %25)
  %27 = call i8* @g_strdup(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @rofi_view_get_selected_line(i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @rofi_view_get_return_value(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @rofi_view_get_next_position(i32* %34)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %197

40:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MENU_CANCEL, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @MENU_CANCEL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i64 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %181

50:                                               ; preds = %40
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UINT32_MAX, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %180

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MENU_CUSTOM_ACTION, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %136

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %136

66:                                               ; preds = %61
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = udiv i32 %75, 32
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @g_malloc0(i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  br label %85

85:                                               ; preds = %72, %66
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @bitget(i32* %88, i64 %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 -1, i32 1
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @bittoggle(i32* %103, i64 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sub i32 %109, 1
  %111 = call i8* @MIN(i32 %108, i32 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %85
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %122, i32 %125)
  store i8* %126, i8** %11, align 8
  %127 = load i32*, i32** %2, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @rofi_view_set_overlay(i32* %127, i8* %128)
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @g_free(i8* %130)
  br label %135

132:                                              ; preds = %85
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @rofi_view_set_overlay(i32* %133, i8* null)
  br label %135

135:                                              ; preds = %132, %119
  br label %179

136:                                              ; preds = %61, %56
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MENU_OK, align 4
  %139 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %136
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %172

152:                                              ; preds = %143
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @dmenu_print_results(%struct.TYPE_6__* %153, i8* %154)
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @MENU_LOWER_MASK, align 4
  %164 = and i32 %162, %163
  %165 = add nsw i32 10, %164
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %152
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @g_free(i8* %167)
  %169 = load i32*, i32** %2, align 8
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @dmenu_finish(i32* %169, i32 %170)
  br label %348

172:                                              ; preds = %143, %136
  %173 = load i32, i32* %9, align 4
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178, %135
  br label %180

180:                                              ; preds = %179, %50
  br label %181

181:                                              ; preds = %180, %46
  %182 = load i32*, i32** %2, align 8
  %183 = call i32 @rofi_view_restart(i32* %182)
  %184 = load i32*, i32** %2, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @rofi_view_set_selected_line(i32* %184, i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %181
  %193 = load i32*, i32** %2, align 8
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @dmenu_finish(i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %181
  br label %348

197:                                              ; preds = %1
  %198 = load i32, i32* @FALSE, align 4
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @MENU_OK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %304

203:                                              ; preds = %197
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @UINT32_MAX, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %304

209:                                              ; preds = %203
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %304

218:                                              ; preds = %209
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @MENU_CUSTOM_ACTION, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %298

223:                                              ; preds = %218
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %298

228:                                              ; preds = %223
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %10, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %247

234:                                              ; preds = %228
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = udiv i32 %237, 32
  %239 = add i32 %238, 1
  %240 = zext i32 %239 to i64
  %241 = mul i64 4, %240
  %242 = trunc i64 %241 to i32
  %243 = call i8* @g_malloc0(i32 %242)
  %244 = bitcast i8* %243 to i32*
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 3
  store i32* %244, i32** %246, align 8
  br label %247

247:                                              ; preds = %234, %228
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @bitget(i32* %250, i64 %253)
  %255 = icmp ne i64 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 -1, i32 1
  %258 = sext i32 %257 to i64
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %261, %258
  store i64 %262, i64* %260, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @bittoggle(i32* %265, i64 %268)
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %5, align 4
  %272 = sub i32 %271, 1
  %273 = call i8* @MIN(i32 %270, i32 %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  store i64 %274, i64* %276, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %247
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %284, i32 %287)
  store i8* %288, i8** %12, align 8
  %289 = load i32*, i32** %2, align 8
  %290 = load i8*, i8** %12, align 8
  %291 = call i32 @rofi_view_set_overlay(i32* %289, i8* %290)
  %292 = load i8*, i8** %12, align 8
  %293 = call i32 @g_free(i8* %292)
  br label %297

294:                                              ; preds = %247
  %295 = load i32*, i32** %2, align 8
  %296 = call i32 @rofi_view_set_overlay(i32* %295, i8* null)
  br label %297

297:                                              ; preds = %294, %281
  br label %302

298:                                              ; preds = %223, %218
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %300 = load i8*, i8** %7, align 8
  %301 = call i32 @dmenu_print_results(%struct.TYPE_6__* %299, i8* %300)
  br label %302

302:                                              ; preds = %298, %297
  %303 = load i32, i32* @TRUE, align 4
  store i32 %303, i32* %3, align 4
  br label %330

304:                                              ; preds = %209, %203, %197
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @MENU_CUSTOM_INPUT, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %311 = load i8*, i8** %7, align 8
  %312 = call i32 @dmenu_print_results(%struct.TYPE_6__* %310, i8* %311)
  %313 = load i32, i32* @TRUE, align 4
  store i32 %313, i32* %3, align 4
  br label %329

314:                                              ; preds = %304
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %314
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %321 = load i8*, i8** %7, align 8
  %322 = call i32 @dmenu_print_results(%struct.TYPE_6__* %320, i8* %321)
  %323 = load i32, i32* @FALSE, align 4
  store i32 %323, i32* %10, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @MENU_LOWER_MASK, align 4
  %326 = and i32 %324, %325
  %327 = add nsw i32 10, %326
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %319, %314
  br label %329

329:                                              ; preds = %328, %309
  br label %330

330:                                              ; preds = %329, %302
  %331 = load i8*, i8** %7, align 8
  %332 = call i32 @g_free(i8* %331)
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %330
  %336 = load i32*, i32** %2, align 8
  %337 = call i32 @rofi_view_restart(i32* %336)
  %338 = load i32*, i32** %2, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = trunc i64 %341 to i32
  %343 = call i32 @rofi_view_set_selected_line(i32* %338, i32 %342)
  br label %348

344:                                              ; preds = %330
  %345 = load i32*, i32** %2, align 8
  %346 = load i32, i32* %3, align 4
  %347 = call i32 @dmenu_finish(i32* %345, i32 %346)
  br label %348

348:                                              ; preds = %166, %196, %344, %335
  ret void
}

declare dso_local %struct.TYPE_7__* @rofi_view_get_mode(i32*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @rofi_view_get_user_input(i32*) #1

declare dso_local i64 @rofi_view_get_selected_line(i32*) #1

declare dso_local i32 @rofi_view_get_return_value(i32*) #1

declare dso_local i32 @rofi_view_get_next_position(i32*) #1

declare dso_local i64 @find_arg(i8*) #1

declare dso_local i8* @g_malloc0(i32) #1

declare dso_local i64 @bitget(i32*, i64) #1

declare dso_local i32 @bittoggle(i32*, i64) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i64, i32) #1

declare dso_local i32 @rofi_view_set_overlay(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @dmenu_print_results(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dmenu_finish(i32*, i32) #1

declare dso_local i32 @rofi_view_restart(i32*) #1

declare dso_local i32 @rofi_view_set_selected_line(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
