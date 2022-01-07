; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpHeader = common dso_local global i8** null, align 8
@lpEmpty = common dso_local global i8** null, align 8
@hInst = common dso_local global i64 0, align 8
@IDS_COLUMN_NUMBER = common dso_local global i32 0, align 4
@columnRightPositions = common dso_local global i32* null, align 8
@IDS_COLUMN_IMAGENAME = common dso_local global i32 0, align 4
@IDS_COLUMN_PID = common dso_local global i32 0, align 4
@IDS_COLUMN_CPU = common dso_local global i32 0, align 4
@IDS_COLUMN_MEM = common dso_local global i32 0, align 4
@IDS_COLUMN_PF = common dso_local global i32 0, align 4
@lpSeparator = common dso_local global i8** null, align 8
@lpSeparatorUp = common dso_local global i8** null, align 8
@lpSeparatorDown = common dso_local global i8** null, align 8
@IDS_APP_TITLE = common dso_local global i32 0, align 4
@lpTitle = common dso_local global i8** null, align 8
@IDS_COLUMN_MEM_UNIT = common dso_local global i32 0, align 4
@lpMemUnit = common dso_local global i8** null, align 8
@IDS_MENU = common dso_local global i32 0, align 4
@lpMenu = common dso_local global i8** null, align 8
@IDS_IDLE_PROCESS = common dso_local global i32 0, align 4
@lpIdleProcess = common dso_local global i8** null, align 8
@IDS_MENU_QUIT = common dso_local global i32 0, align 4
@KEY_QUIT = common dso_local global i8* null, align 8
@IDS_MENU_KILL_PROCESS = common dso_local global i32 0, align 4
@KEY_KILL = common dso_local global i8* null, align 8
@IDS_YES = common dso_local global i32 0, align 4
@KEY_YES = common dso_local global i8* null, align 8
@IDS_NO = common dso_local global i32 0, align 4
@KEY_NO = common dso_local global i8* null, align 8
@hStdin = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@hStdout = common dso_local global i64 0, align 8
@IDS_CTM_GENERAL_ERR1 = common dso_local global i32 0, align 4
@inConMode = common dso_local global i32 0, align 4
@IDS_CTM_GENERAL_ERR2 = common dso_local global i32 0, align 4
@outConMode = common dso_local global i32 0, align 4
@IDS_CTM_GENERAL_ERR3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@first = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8*], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 80
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call i8* @_T(i8 signext 32)
  %14 = load i8**, i8*** @lpHeader, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  store i8* %13, i8** %17, align 8
  %18 = load i8**, i8*** @lpEmpty, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %13, i8** %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = call i8* @_T(i8 signext 0)
  %27 = load i8**, i8*** @lpEmpty, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 79
  store i8* %26, i8** %28, align 8
  store i64 0, i64* @hInst, align 8
  %29 = load i64, i64* @hInst, align 8
  %30 = load i32, i32* @IDS_COLUMN_NUMBER, align 4
  %31 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %32 = call i64 @LoadString(i64 %29, i32 %30, i8** %31, i32 80)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %36 = call i32 @_tcslen(i8** %35)
  %37 = add nsw i32 %36, 3
  %38 = load i32*, i32** @columnRightPositions, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i8**, i8*** @lpHeader, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %43 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %44 = call i32 @_tcslen(i8** %43)
  %45 = call i32 @_tcsncpy(i8** %41, i8** %42, i32 %44)
  br label %46

46:                                               ; preds = %34, %25
  %47 = load i64, i64* @hInst, align 8
  %48 = load i32, i32* @IDS_COLUMN_IMAGENAME, align 4
  %49 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %50 = call i64 @LoadString(i64 %47, i32 %48, i8** %49, i32 80)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i32*, i32** @columnRightPositions, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %57 = call i32 @_tcslen(i8** %56)
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 3
  %60 = load i32*, i32** @columnRightPositions, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load i8**, i8*** @lpHeader, align 8
  %63 = load i32*, i32** @columnRightPositions, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %62, i64 %67
  %69 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %70 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %71 = call i32 @_tcslen(i8** %70)
  %72 = call i32 @_tcsncpy(i8** %68, i8** %69, i32 %71)
  br label %73

73:                                               ; preds = %52, %46
  %74 = load i64, i64* @hInst, align 8
  %75 = load i32, i32* @IDS_COLUMN_PID, align 4
  %76 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %77 = call i64 @LoadString(i64 %74, i32 %75, i8** %76, i32 80)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load i32*, i32** @columnRightPositions, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %84 = call i32 @_tcslen(i8** %83)
  %85 = add nsw i32 %82, %84
  %86 = add nsw i32 %85, 3
  %87 = load i32*, i32** @columnRightPositions, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %86, i32* %88, align 4
  %89 = load i8**, i8*** @lpHeader, align 8
  %90 = load i32*, i32** @columnRightPositions, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %89, i64 %94
  %96 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %97 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %98 = call i32 @_tcslen(i8** %97)
  %99 = call i32 @_tcsncpy(i8** %95, i8** %96, i32 %98)
  br label %100

100:                                              ; preds = %79, %73
  %101 = load i64, i64* @hInst, align 8
  %102 = load i32, i32* @IDS_COLUMN_CPU, align 4
  %103 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %104 = call i64 @LoadString(i64 %101, i32 %102, i8** %103, i32 80)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %100
  %107 = load i32*, i32** @columnRightPositions, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %111 = call i32 @_tcslen(i8** %110)
  %112 = add nsw i32 %109, %111
  %113 = add nsw i32 %112, 3
  %114 = load i32*, i32** @columnRightPositions, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %113, i32* %115, align 4
  %116 = load i8**, i8*** @lpHeader, align 8
  %117 = load i32*, i32** @columnRightPositions, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %116, i64 %121
  %123 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %124 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %125 = call i32 @_tcslen(i8** %124)
  %126 = call i32 @_tcsncpy(i8** %122, i8** %123, i32 %125)
  br label %127

127:                                              ; preds = %106, %100
  %128 = load i64, i64* @hInst, align 8
  %129 = load i32, i32* @IDS_COLUMN_MEM, align 4
  %130 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %131 = call i64 @LoadString(i64 %128, i32 %129, i8** %130, i32 80)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %127
  %134 = load i32*, i32** @columnRightPositions, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %138 = call i32 @_tcslen(i8** %137)
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 3
  %141 = load i32*, i32** @columnRightPositions, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  store i32 %140, i32* %142, align 4
  %143 = load i8**, i8*** @lpHeader, align 8
  %144 = load i32*, i32** @columnRightPositions, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %143, i64 %148
  %150 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %151 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %152 = call i32 @_tcslen(i8** %151)
  %153 = call i32 @_tcsncpy(i8** %149, i8** %150, i32 %152)
  br label %154

154:                                              ; preds = %133, %127
  %155 = load i64, i64* @hInst, align 8
  %156 = load i32, i32* @IDS_COLUMN_PF, align 4
  %157 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %158 = call i64 @LoadString(i64 %155, i32 %156, i8** %157, i32 80)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %154
  %161 = load i32*, i32** @columnRightPositions, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 4
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %165 = call i32 @_tcslen(i8** %164)
  %166 = add nsw i32 %163, %165
  %167 = add nsw i32 %166, 3
  %168 = load i32*, i32** @columnRightPositions, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  store i32 %167, i32* %169, align 4
  %170 = load i8**, i8*** @lpHeader, align 8
  %171 = load i32*, i32** @columnRightPositions, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %170, i64 %175
  %177 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %178 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %179 = call i32 @_tcslen(i8** %178)
  %180 = call i32 @_tcsncpy(i8** %176, i8** %177, i32 %179)
  br label %181

181:                                              ; preds = %160, %154
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %6, align 4
  %184 = load i32*, i32** @columnRightPositions, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 5
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = call i8* @_T(i8 signext 45)
  %190 = load i8**, i8*** @lpSeparator, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  store i8* %189, i8** %193, align 8
  %194 = call i8* @_T(i8 signext 94)
  %195 = load i8**, i8*** @lpSeparatorUp, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  store i8* %194, i8** %198, align 8
  %199 = call i8* @_T(i8 signext 118)
  %200 = load i8**, i8*** @lpSeparatorDown, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %182

207:                                              ; preds = %182
  %208 = call i8* @_T(i8 signext 124)
  %209 = load i8**, i8*** @lpHeader, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 0
  store i8* %208, i8** %210, align 8
  %211 = call i8* @_T(i8 signext 43)
  %212 = load i8**, i8*** @lpSeparator, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  store i8* %211, i8** %213, align 8
  %214 = call i8* @_T(i8 signext 94)
  %215 = load i8**, i8*** @lpSeparatorUp, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  store i8* %214, i8** %216, align 8
  %217 = call i8* @_T(i8 signext 118)
  %218 = load i8**, i8*** @lpSeparatorDown, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 0
  store i8* %217, i8** %219, align 8
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %260, %207
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 6
  br i1 %222, label %223, label %263

223:                                              ; preds = %220
  %224 = call i8* @_T(i8 signext 124)
  %225 = load i8**, i8*** @lpHeader, align 8
  %226 = load i32*, i32** @columnRightPositions, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %225, i64 %231
  store i8* %224, i8** %232, align 8
  %233 = call i8* @_T(i8 signext 43)
  %234 = load i8**, i8*** @lpSeparator, align 8
  %235 = load i32*, i32** @columnRightPositions, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %234, i64 %240
  store i8* %233, i8** %241, align 8
  %242 = call i8* @_T(i8 signext 94)
  %243 = load i8**, i8*** @lpSeparatorUp, align 8
  %244 = load i32*, i32** @columnRightPositions, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %243, i64 %249
  store i8* %242, i8** %250, align 8
  %251 = call i8* @_T(i8 signext 118)
  %252 = load i8**, i8*** @lpSeparatorDown, align 8
  %253 = load i32*, i32** @columnRightPositions, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %252, i64 %258
  store i8* %251, i8** %259, align 8
  br label %260

260:                                              ; preds = %223
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %220

263:                                              ; preds = %220
  %264 = call i8* @_T(i8 signext 0)
  %265 = load i8**, i8*** @lpHeader, align 8
  %266 = load i32*, i32** @columnRightPositions, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 5
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %265, i64 %270
  store i8* %264, i8** %271, align 8
  %272 = call i8* @_T(i8 signext 0)
  %273 = load i8**, i8*** @lpSeparator, align 8
  %274 = load i32*, i32** @columnRightPositions, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %273, i64 %278
  store i8* %272, i8** %279, align 8
  %280 = call i8* @_T(i8 signext 0)
  %281 = load i8**, i8*** @lpSeparatorUp, align 8
  %282 = load i32*, i32** @columnRightPositions, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 5
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8*, i8** %281, i64 %286
  store i8* %280, i8** %287, align 8
  %288 = call i8* @_T(i8 signext 0)
  %289 = load i8**, i8*** @lpSeparatorDown, align 8
  %290 = load i32*, i32** @columnRightPositions, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 5
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %289, i64 %294
  store i8* %288, i8** %295, align 8
  %296 = load i64, i64* @hInst, align 8
  %297 = load i32, i32* @IDS_APP_TITLE, align 4
  %298 = load i8**, i8*** @lpTitle, align 8
  %299 = call i64 @LoadString(i64 %296, i32 %297, i8** %298, i32 80)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %263
  %302 = call i8* @_T(i8 signext 0)
  %303 = load i8**, i8*** @lpTitle, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 0
  store i8* %302, i8** %304, align 8
  br label %305

305:                                              ; preds = %301, %263
  %306 = load i64, i64* @hInst, align 8
  %307 = load i32, i32* @IDS_COLUMN_MEM_UNIT, align 4
  %308 = load i8**, i8*** @lpMemUnit, align 8
  %309 = call i64 @LoadString(i64 %306, i32 %307, i8** %308, i32 3)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %305
  %312 = call i8* @_T(i8 signext 0)
  %313 = load i8**, i8*** @lpMemUnit, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 0
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %311, %305
  %316 = load i64, i64* @hInst, align 8
  %317 = load i32, i32* @IDS_MENU, align 4
  %318 = load i8**, i8*** @lpMenu, align 8
  %319 = call i64 @LoadString(i64 %316, i32 %317, i8** %318, i32 80)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %315
  %322 = call i8* @_T(i8 signext 0)
  %323 = load i8**, i8*** @lpMenu, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 0
  store i8* %322, i8** %324, align 8
  br label %325

325:                                              ; preds = %321, %315
  %326 = load i64, i64* @hInst, align 8
  %327 = load i32, i32* @IDS_IDLE_PROCESS, align 4
  %328 = load i8**, i8*** @lpIdleProcess, align 8
  %329 = call i64 @LoadString(i64 %326, i32 %327, i8** %328, i32 80)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %325
  %332 = call i8* @_T(i8 signext 0)
  %333 = load i8**, i8*** @lpIdleProcess, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 0
  store i8* %332, i8** %334, align 8
  br label %335

335:                                              ; preds = %331, %325
  %336 = load i64, i64* @hInst, align 8
  %337 = load i32, i32* @IDS_MENU_QUIT, align 4
  %338 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %339 = call i64 @LoadString(i64 %336, i32 %337, i8** %338, i32 2)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %343 = load i8*, i8** %342, align 16
  store i8* %343, i8** @KEY_QUIT, align 8
  br label %344

344:                                              ; preds = %341, %335
  %345 = load i64, i64* @hInst, align 8
  %346 = load i32, i32* @IDS_MENU_KILL_PROCESS, align 4
  %347 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %348 = call i64 @LoadString(i64 %345, i32 %346, i8** %347, i32 2)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %344
  %351 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %352 = load i8*, i8** %351, align 16
  store i8* %352, i8** @KEY_KILL, align 8
  br label %353

353:                                              ; preds = %350, %344
  %354 = load i64, i64* @hInst, align 8
  %355 = load i32, i32* @IDS_YES, align 4
  %356 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %357 = call i64 @LoadString(i64 %354, i32 %355, i8** %356, i32 2)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %353
  %360 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %361 = load i8*, i8** %360, align 16
  store i8* %361, i8** @KEY_YES, align 8
  br label %362

362:                                              ; preds = %359, %353
  %363 = load i64, i64* @hInst, align 8
  %364 = load i32, i32* @IDS_NO, align 4
  %365 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %366 = call i64 @LoadString(i64 %363, i32 %364, i8** %365, i32 2)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %362
  %369 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %370 = load i8*, i8** %369, align 16
  store i8* %370, i8** @KEY_NO, align 8
  br label %371

371:                                              ; preds = %368, %362
  %372 = call i32 (...) @GetInputOutputHandles()
  %373 = load i64, i64* @hStdin, align 8
  %374 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %371
  %377 = load i64, i64* @hStdout, align 8
  %378 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %376, %371
  %381 = load i64, i64* @hInst, align 8
  %382 = load i32, i32* @IDS_CTM_GENERAL_ERR1, align 4
  %383 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %384 = call i64 @LoadString(i64 %381, i32 %382, i8** %383, i32 80)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %380
  %387 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %388 = call i32 @_tprintf(i8** %387)
  br label %389

389:                                              ; preds = %386, %380
  store i32 -1, i32* %3, align 4
  br label %443

390:                                              ; preds = %376
  %391 = load i64, i64* @hStdin, align 8
  %392 = call i64 @GetConsoleMode(i64 %391, i32* @inConMode)
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %404

394:                                              ; preds = %390
  %395 = load i64, i64* @hInst, align 8
  %396 = load i32, i32* @IDS_CTM_GENERAL_ERR2, align 4
  %397 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %398 = call i64 @LoadString(i64 %395, i32 %396, i8** %397, i32 80)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %394
  %401 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %402 = call i32 @_tprintf(i8** %401)
  br label %403

403:                                              ; preds = %400, %394
  store i32 -1, i32* %3, align 4
  br label %443

404:                                              ; preds = %390
  %405 = load i64, i64* @hStdout, align 8
  %406 = call i64 @GetConsoleMode(i64 %405, i32* @outConMode)
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %418

408:                                              ; preds = %404
  %409 = load i64, i64* @hInst, align 8
  %410 = load i32, i32* @IDS_CTM_GENERAL_ERR3, align 4
  %411 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %412 = call i64 @LoadString(i64 %409, i32 %410, i8** %411, i32 80)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = getelementptr inbounds [80 x i8*], [80 x i8*]* %7, i64 0, i64 0
  %416 = call i32 @_tprintf(i8** %415)
  br label %417

417:                                              ; preds = %414, %408
  store i32 -1, i32* %3, align 4
  br label %443

418:                                              ; preds = %404
  %419 = load i64, i64* @hStdin, align 8
  %420 = call i32 @SetConsoleMode(i64 %419, i32 0)
  %421 = load i64, i64* @hStdout, align 8
  %422 = call i32 @SetConsoleMode(i64 %421, i32 0)
  %423 = call i32 (...) @PerfInit()
  br label %424

424:                                              ; preds = %418, %440
  %425 = call i32 (...) @PerfDataRefresh()
  %426 = call i32 (...) @DisplayScreen()
  %427 = load i64, i64* @hStdin, align 8
  %428 = call i32 @WaitForSingleObject(i64 %427, i32 1000)
  %429 = load i64, i64* @hStdin, align 8
  %430 = call i32 @GetNumberOfConsoleInputEvents(i64 %429, i64* %8)
  %431 = load i64, i64* %8, align 8
  %432 = icmp sgt i64 %431, 0
  br i1 %432, label %433, label %440

433:                                              ; preds = %424
  %434 = load i64, i64* %8, align 8
  %435 = call i64 @ProcessKeys(i64 %434)
  %436 = load i64, i64* @TRUE, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  br label %441

439:                                              ; preds = %433
  store i64 0, i64* @first, align 8
  br label %440

440:                                              ; preds = %439, %424
  br label %424

441:                                              ; preds = %438
  %442 = call i32 (...) @RestoreConsole()
  store i32 0, i32* %3, align 4
  br label %443

443:                                              ; preds = %441, %417, %403, %389
  %444 = load i32, i32* %3, align 4
  ret i32 %444
}

declare dso_local i8* @_T(i8 signext) #1

declare dso_local i64 @LoadString(i64, i32, i8**, i32) #1

declare dso_local i32 @_tcslen(i8**) #1

declare dso_local i32 @_tcsncpy(i8**, i8**, i32) #1

declare dso_local i32 @GetInputOutputHandles(...) #1

declare dso_local i32 @_tprintf(i8**) #1

declare dso_local i64 @GetConsoleMode(i64, i32*) #1

declare dso_local i32 @SetConsoleMode(i64, i32) #1

declare dso_local i32 @PerfInit(...) #1

declare dso_local i32 @PerfDataRefresh(...) #1

declare dso_local i32 @DisplayScreen(...) #1

declare dso_local i32 @WaitForSingleObject(i64, i32) #1

declare dso_local i32 @GetNumberOfConsoleInputEvents(i64, i64*) #1

declare dso_local i64 @ProcessKeys(i64) #1

declare dso_local i32 @RestoreConsole(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
