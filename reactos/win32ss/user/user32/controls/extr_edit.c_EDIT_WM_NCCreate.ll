; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8, i32, i32, i32, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Creating %s edit control, style = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ANSI\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@ES_COMBO = common dso_local global i32 0, align 4
@ID_CB_LISTBOX = common dso_local global i32 0, align 4
@WS_EX_RIGHT = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@BUFLIMIT_INITIAL = common dso_local global i8* null, align 8
@WS_VSCROLL = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i64)* @EDIT_WM_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_NCCreate(i32 %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call i8* @HeapAlloc(i32 %18, i32 %19, i32 88)
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %375

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = ptrtoint %struct.TYPE_7__* %27 to i32
  %29 = call i32 @SetWindowLongPtrW(i32 %26, i32 0, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 14
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WS_DISABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ES_COMBO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %25
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ID_CB_LISTBOX, align 4
  %67 = call i32 @GetDlgItem(i32 %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %25
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WS_EX_RIGHT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @ES_RIGHT, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ES_NUMBER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %106

91:                                               ; preds = %83
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ES_LOWERCASE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* @ES_UPPERCASE, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %91
  br label %106

106:                                              ; preds = %105, %90
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ES_MULTILINE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %190

113:                                              ; preds = %106
  %114 = load i8*, i8** @BUFLIMIT_INITIAL, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @WS_VSCROLL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @WS_HSCROLL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %129
  %143 = load i32, i32* @ES_PASSWORD, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @ES_CENTER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %142
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ES_RIGHT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %155, %142
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ES_RIGHT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load i32, i32* @ES_CENTER, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %169, %162
  %177 = load i32, i32* @WS_HSCROLL, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %176, %155
  br label %237

190:                                              ; preds = %106
  %191 = load i8*, i8** @BUFLIMIT_INITIAL, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 11
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ES_RIGHT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %190
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ES_CENTER, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load i32, i32* @ES_CENTER, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %207, %200, %190
  %215 = load i32, i32* @WS_HSCROLL, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @WS_VSCROLL, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ES_PASSWORD, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %214
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  store i8 42, i8* %235, align 8
  br label %236

236:                                              ; preds = %233, %214
  br label %237

237:                                              ; preds = %236, %189
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 4
  %244 = trunc i64 %243 to i32
  %245 = call i32 @ROUND_TO_GROW(i32 %244)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* @LMEM_MOVEABLE, align 4
  %247 = load i32, i32* @LMEM_ZEROINIT, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %9, align 4
  %250 = call i64 @LocalAlloc(i32 %248, i32 %249)
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 7
  store i64 %250, i64* %252, align 8
  %253 = icmp ne i64 %250, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %237
  br label %339

255:                                              ; preds = %237
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 7
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @LocalSize(i64 %258)
  %260 = sext i32 %259 to i64
  %261 = udiv i64 %260, 4
  %262 = sub i64 %261, 1
  %263 = trunc i64 %262 to i32
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = call i32 (...) @GetProcessHeap()
  %267 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = mul i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = call i8* @HeapAlloc(i32 %266, i32 %267, i32 %274)
  %276 = bitcast i8* %275 to %struct.TYPE_7__*
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 8
  store %struct.TYPE_7__* %276, %struct.TYPE_7__** %278, align 8
  %279 = icmp ne %struct.TYPE_7__* %276, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %255
  br label %339

281:                                              ; preds = %255
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @ES_MULTILINE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %281
  %294 = call i32 (...) @GetProcessHeap()
  %295 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %296 = call i8* @HeapAlloc(i32 %294, i32 %295, i32 4)
  %297 = bitcast i8* %296 to %struct.TYPE_7__*
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 9
  store %struct.TYPE_7__* %297, %struct.TYPE_7__** %299, align 8
  %300 = icmp ne %struct.TYPE_7__* %297, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %293
  br label %339

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302, %281
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 5
  store i32 1, i32* %305, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %303
  %313 = load i32, i32* @WS_BORDER, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %337

319:                                              ; preds = %303
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @WS_BORDER, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %336

326:                                              ; preds = %319
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* @GWL_STYLE, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @WS_BORDER, align 4
  %333 = xor i32 %332, -1
  %334 = and i32 %331, %333
  %335 = call i32 @SetWindowLongW(i32 %327, i32 %328, i32 %334)
  br label %336

336:                                              ; preds = %326, %319
  br label %337

337:                                              ; preds = %336, %312
  %338 = load i32, i32* @TRUE, align 4
  store i32 %338, i32* %4, align 4
  br label %375

339:                                              ; preds = %301, %280, %254
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @SetWindowLongPtrW(i32 %342, i32 0, i32 0)
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %345 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_7__* %344)
  %346 = call i32 (...) @GetProcessHeap()
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 9
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = call i32 @HeapFree(i32 %346, i32 0, %struct.TYPE_7__* %349)
  %351 = call i32 (...) @GetProcessHeap()
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 8
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = call i32 @HeapFree(i32 %351, i32 0, %struct.TYPE_7__* %354)
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 7
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %339
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 7
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @LocalFree(i64 %363)
  br label %365

365:                                              ; preds = %360, %339
  %366 = call i32 (...) @GetProcessHeap()
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 6
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %368, align 8
  %370 = call i32 @HeapFree(i32 %366, i32 0, %struct.TYPE_7__* %369)
  %371 = call i32 (...) @GetProcessHeap()
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %373 = call i32 @HeapFree(i32 %371, i32 0, %struct.TYPE_7__* %372)
  %374 = load i32, i32* @FALSE, align 4
  store i32 %374, i32* %4, align 4
  br label %375

375:                                              ; preds = %365, %337, %23
  %376 = load i32, i32* %4, align 4
  ret i32 %376
}

declare dso_local i32 @TRACE(i8*, i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ROUND_TO_GROW(i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @LocalSize(i64) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_7__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
