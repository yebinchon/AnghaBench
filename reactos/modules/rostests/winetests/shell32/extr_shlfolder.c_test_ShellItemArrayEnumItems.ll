; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemArrayEnumItems.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemArrayEnumItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_ShellItemArrayEnumItems.testdirW = internal constant [8 x i8] c"testdir\00", align 1
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@SHCONTF_FOLDERS = common dso_local global i32 0, align 4
@SHCONTF_NONFOLDERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Got %d pidls\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Got %d, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Got NULL\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"Got %p (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Got %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Got %p at %d\0A\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@E_NOTIMPL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ShellItemArrayEnumItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ShellItemArrayEnumItems() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [10 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = call i32 (...) @CreateFilesFolders()
  %25 = call i32 @SHGetDesktopFolder(i32** %1)
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i32 @GetCurrentDirectoryW(i32 %26, i8* %23)
  %28 = call i32 @myPathAddBackslashW(i8* %23)
  %29 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_ShellItemArrayEnumItems.testdirW, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = call i8* @IShellFolder_ParseDisplayName(i32* %30, i32* null, i32* null, i8* %23, i32* null, i32* %7, i32 0)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** @S_OK, align 8
  %34 = icmp eq i8* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @SUCCEEDED(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %0
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* %7, align 4
  %44 = bitcast i32** %2 to i8**
  %45 = call i8* @IShellFolder_BindToObject(i32* %42, i32 %43, i32* null, i32 ptrtoint (i32* @IID_IShellFolder to i32), i8** %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** @S_OK, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ILFree(i32 %52)
  br label %54

54:                                               ; preds = %41, %0
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @IShellFolder_Release(i32* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @FAILED(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %486

61:                                               ; preds = %54
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @SHCONTF_FOLDERS, align 4
  %64 = load i32, i32* @SHCONTF_NONFOLDERS, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @IShellFolder_EnumObjects(i32* %62, i32* null, i32 %65, i32** %3)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** @S_OK, align 8
  %69 = icmp eq i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @SUCCEEDED(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %485

76:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %90, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 5
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %83
  %85 = call i8* @IEnumIDList_Next(i32* %81, i32 1, i32* %84, i32* null)
  %86 = load i8*, i8** @S_OK, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %93

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %77

93:                                               ; preds = %88, %77
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 5
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @IEnumIDList_Release(i32* %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %104 = call i8* @pSHCreateShellItemArray(i32* null, i32* %101, i32 %102, i32* %103, i32** %9)
  store i8* %104, i8** %6, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** @S_OK, align 8
  %107 = icmp eq i8* %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @SUCCEEDED(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %470

114:                                              ; preds = %93
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @IShellItemArray_GetCount(i32* %115, i32* %12)
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %122)
  store i8* null, i8** %14, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i8* @IShellItemArray_EnumItems(i32* %124, i8** %14)
  store i8* %125, i8** %6, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** @S_OK, align 8
  %128 = icmp eq i8* %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %14, align 8
  %133 = icmp ne i8* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i8*, i8** %6, align 8
  %137 = call i64 @SUCCEEDED(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %467

139:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %147, %139
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 10
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %145
  store i8* inttoptr (i64 3735928559 to i8*), i8** %146, align 8
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %140

150:                                              ; preds = %140
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %153 = call i8* @IEnumShellItems_Next(i8* %151, i32 2, i8** %152, i32* null)
  store i8* %153, i8** %6, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** @E_INVALIDARG, align 8
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** @S_OK, align 8
  %160 = icmp eq i8* %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @broken(i32 %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %157, %150
  %165 = phi i1 [ true, %150 ], [ %163, %157 ]
  %166 = zext i1 %165 to i32
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %167)
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %216, %164
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %219

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = icmp eq i8* %176, inttoptr (i64 3735928559 to i8*)
  br i1 %177, label %195, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, inttoptr (i64 3735928559 to i8*)
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br label %190

190:                                              ; preds = %184, %178
  %191 = phi i1 [ false, %178 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  %193 = call i64 @broken(i32 %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %190, %172
  %196 = phi i1 [ true, %172 ], [ %194, %190 ]
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %201, i32 %202)
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, inttoptr (i64 3735928559 to i8*)
  br i1 %208, label %209, label %215

209:                                              ; preds = %195
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @IShellItem_Release(i8* %213)
  br label %215

215:                                              ; preds = %209, %195
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %169

219:                                              ; preds = %169
  %220 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 2
  %221 = load i8*, i8** %220, align 16
  %222 = icmp eq i8* %221, inttoptr (i64 3735928559 to i8*)
  %223 = zext i1 %222 to i32
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 2
  %225 = load i8*, i8** %224, align 16
  %226 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %225)
  %227 = load i8*, i8** %14, align 8
  %228 = call i32 @IEnumShellItems_Reset(i8* %227)
  store i32 0, i32* %13, align 4
  br label %229

229:                                              ; preds = %236, %219
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 10
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %234
  store i8* inttoptr (i64 3735928559 to i8*), i8** %235, align 8
  br label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %229

239:                                              ; preds = %229
  %240 = load i8*, i8** %14, align 8
  %241 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %242 = call i8* @IEnumShellItems_Next(i8* %240, i32 1, i8** %241, i32* null)
  store i8* %242, i8** %6, align 8
  %243 = load i8*, i8** %6, align 8
  %244 = load i8*, i8** @S_OK, align 8
  %245 = icmp eq i8* %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %247)
  %249 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %250 = load i8*, i8** %249, align 16
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %256

252:                                              ; preds = %239
  %253 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %254 = load i8*, i8** %253, align 16
  %255 = icmp ne i8* %254, inttoptr (i64 3735928559 to i8*)
  br label %256

256:                                              ; preds = %252, %239
  %257 = phi i1 [ false, %239 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  %259 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %260 = load i8*, i8** %259, align 16
  %261 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %260)
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %263 = load i8*, i8** %262, align 16
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %267 = load i8*, i8** %266, align 16
  %268 = icmp ne i8* %267, inttoptr (i64 3735928559 to i8*)
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %271 = load i8*, i8** %270, align 16
  %272 = call i32 @IShellItem_Release(i8* %271)
  br label %273

273:                                              ; preds = %269, %265, %256
  %274 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 1
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %275, inttoptr (i64 3735928559 to i8*)
  %277 = zext i1 %276 to i32
  %278 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 1
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %279)
  %281 = load i8*, i8** %14, align 8
  %282 = call i32 @IEnumShellItems_Reset(i8* %281)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %283

283:                                              ; preds = %290, %273
  %284 = load i32, i32* %13, align 4
  %285 = icmp slt i32 %284, 10
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %288
  store i8* inttoptr (i64 3735928559 to i8*), i8** %289, align 8
  br label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %13, align 4
  br label %283

293:                                              ; preds = %283
  %294 = load i8*, i8** %14, align 8
  %295 = load i32, i32* %12, align 4
  %296 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %297 = call i8* @IEnumShellItems_Next(i8* %294, i32 %295, i8** %296, i32* %16)
  store i8* %297, i8** %6, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = load i8*, i8** @S_OK, align 8
  %300 = icmp eq i8* %298, %299
  %301 = zext i1 %300 to i32
  %302 = load i8*, i8** %6, align 8
  %303 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %302)
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load i32, i32* %16, align 4
  %309 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %308)
  store i32 0, i32* %13, align 4
  br label %310

310:                                              ; preds = %353, %293
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %12, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %356

314:                                              ; preds = %310
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %314
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = icmp ne i8* %324, inttoptr (i64 3735928559 to i8*)
  br label %326

326:                                              ; preds = %320, %314
  %327 = phi i1 [ false, %314 ], [ %325, %320 ]
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* %13, align 4
  %334 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %332, i32 %333)
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %336
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %352

340:                                              ; preds = %326
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = icmp ne i8* %344, inttoptr (i64 3735928559 to i8*)
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @IShellItem_Release(i8* %350)
  br label %352

352:                                              ; preds = %346, %340, %326
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %13, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %13, align 4
  br label %310

356:                                              ; preds = %310
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = icmp eq i8* %360, inttoptr (i64 3735928559 to i8*)
  %362 = zext i1 %361 to i32
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %364
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %366)
  %368 = load i8*, i8** %14, align 8
  %369 = call i32 @IEnumShellItems_Reset(i8* %368)
  store i32 0, i32* %13, align 4
  br label %370

370:                                              ; preds = %418, %356
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %12, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %421

374:                                              ; preds = %370
  %375 = load i32*, i32** %9, align 8
  %376 = load i32, i32* %13, align 4
  %377 = call i8* @IShellItemArray_GetItemAt(i32* %375, i32 %376, i8** %18)
  store i8* %377, i8** %6, align 8
  %378 = load i8*, i8** %6, align 8
  %379 = load i8*, i8** @S_OK, align 8
  %380 = icmp eq i8* %378, %379
  %381 = zext i1 %380 to i32
  %382 = load i8*, i8** %6, align 8
  %383 = call i32 (i32, i8*, ...) @ok(i32 %381, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %382)
  %384 = load i8*, i8** %14, align 8
  %385 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %386 = call i8* @IEnumShellItems_Next(i8* %384, i32 1, i8** %385, i32* %16)
  store i8* %386, i8** %6, align 8
  %387 = load i8*, i8** %6, align 8
  %388 = load i8*, i8** @S_OK, align 8
  %389 = icmp eq i8* %387, %388
  %390 = zext i1 %389 to i32
  %391 = load i8*, i8** %6, align 8
  %392 = call i32 (i32, i8*, ...) @ok(i32 %390, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %391)
  %393 = load i32, i32* %16, align 4
  %394 = icmp eq i32 %393, 1
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* %16, align 4
  %397 = call i32 (i32, i8*, ...) @ok(i32 %395, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %396)
  %398 = load i8*, i8** %18, align 8
  %399 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %400 = load i8*, i8** %399, align 16
  %401 = call i8* @IShellItem_Compare(i8* %398, i8* %400, i32 0, i32* %19)
  store i8* %401, i8** %6, align 8
  %402 = load i8*, i8** %6, align 8
  %403 = load i8*, i8** @S_OK, align 8
  %404 = icmp eq i8* %402, %403
  %405 = zext i1 %404 to i32
  %406 = load i8*, i8** %6, align 8
  %407 = call i32 (i32, i8*, ...) @ok(i32 %405, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %406)
  %408 = load i32, i32* %19, align 4
  %409 = icmp eq i32 %408, 0
  %410 = zext i1 %409 to i32
  %411 = load i32, i32* %19, align 4
  %412 = call i32 (i32, i8*, ...) @ok(i32 %410, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %411)
  %413 = load i8*, i8** %18, align 8
  %414 = call i32 @IShellItem_Release(i8* %413)
  %415 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %416 = load i8*, i8** %415, align 16
  %417 = call i32 @IShellItem_Release(i8* %416)
  br label %418

418:                                              ; preds = %374
  %419 = load i32, i32* %13, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %13, align 4
  br label %370

421:                                              ; preds = %370
  %422 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  store i8* inttoptr (i64 3735928559 to i8*), i8** %422, align 16
  %423 = load i8*, i8** %14, align 8
  %424 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %425 = call i8* @IEnumShellItems_Next(i8* %423, i32 1, i8** %424, i32* %16)
  store i8* %425, i8** %6, align 8
  %426 = load i8*, i8** %6, align 8
  %427 = load i8*, i8** @S_FALSE, align 8
  %428 = icmp eq i8* %426, %427
  %429 = zext i1 %428 to i32
  %430 = load i8*, i8** %6, align 8
  %431 = call i32 (i32, i8*, ...) @ok(i32 %429, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %430)
  %432 = load i32, i32* %16, align 4
  %433 = icmp eq i32 %432, 0
  %434 = zext i1 %433 to i32
  %435 = load i32, i32* %16, align 4
  %436 = call i32 (i32, i8*, ...) @ok(i32 %434, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %435)
  %437 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %438 = load i8*, i8** %437, align 16
  %439 = icmp eq i8* %438, inttoptr (i64 3735928559 to i8*)
  %440 = zext i1 %439 to i32
  %441 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 0
  %442 = load i8*, i8** %441, align 16
  %443 = call i32 (i32, i8*, ...) @ok(i32 %440, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %442)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %17, align 8
  %444 = load i8*, i8** %14, align 8
  %445 = call i8* @IEnumShellItems_Clone(i8* %444, i8** %17)
  store i8* %445, i8** %6, align 8
  %446 = load i8*, i8** %6, align 8
  %447 = load i8*, i8** @E_NOTIMPL, align 8
  %448 = icmp eq i8* %446, %447
  %449 = zext i1 %448 to i32
  %450 = load i8*, i8** %6, align 8
  %451 = call i32 (i32, i8*, ...) @ok(i32 %449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %450)
  %452 = load i8*, i8** %17, align 8
  %453 = icmp eq i8* %452, null
  br i1 %453, label %460, label %454

454:                                              ; preds = %421
  %455 = load i8*, i8** %17, align 8
  %456 = icmp eq i8* %455, inttoptr (i64 3735928559 to i8*)
  %457 = zext i1 %456 to i32
  %458 = call i64 @broken(i32 %457)
  %459 = icmp ne i64 %458, 0
  br label %460

460:                                              ; preds = %454, %421
  %461 = phi i1 [ true, %421 ], [ %459, %454 ]
  %462 = zext i1 %461 to i32
  %463 = load i8*, i8** %17, align 8
  %464 = call i32 (i32, i8*, ...) @ok(i32 %462, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %463)
  %465 = load i8*, i8** %14, align 8
  %466 = call i32 @IEnumShellItems_Release(i8* %465)
  br label %467

467:                                              ; preds = %460, %114
  %468 = load i32*, i32** %9, align 8
  %469 = call i32 @IShellItemArray_Release(i32* %468)
  br label %470

470:                                              ; preds = %467, %93
  store i32 0, i32* %13, align 4
  br label %471

471:                                              ; preds = %481, %470
  %472 = load i32, i32* %13, align 4
  %473 = load i32, i32* %11, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %484

475:                                              ; preds = %471
  %476 = load i32, i32* %13, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @ILFree(i32 %479)
  br label %481

481:                                              ; preds = %475
  %482 = load i32, i32* %13, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %13, align 4
  br label %471

484:                                              ; preds = %471
  br label %485

485:                                              ; preds = %484, %61
  store i32 0, i32* %8, align 4
  br label %486

486:                                              ; preds = %485, %60
  %487 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %487)
  %488 = load i32, i32* %8, align 4
  switch i32 %488, label %490 [
    i32 0, label %489
    i32 1, label %489
  ]

489:                                              ; preds = %486, %486
  ret void

490:                                              ; preds = %486
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateFilesFolders(...) #2

declare dso_local i32 @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @myPathAddBackslashW(i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i8* @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @SUCCEEDED(i8*) #2

declare dso_local i8* @IShellFolder_BindToObject(i32*, i32, i32*, i32, i8**) #2

declare dso_local i32 @ILFree(i32) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

declare dso_local i64 @FAILED(i8*) #2

declare dso_local i8* @IShellFolder_EnumObjects(i32*, i32*, i32, i32**) #2

declare dso_local i8* @IEnumIDList_Next(i32*, i32, i32*, i32*) #2

declare dso_local i32 @IEnumIDList_Release(i32*) #2

declare dso_local i8* @pSHCreateShellItemArray(i32*, i32*, i32, i32*, i32**) #2

declare dso_local i32 @IShellItemArray_GetCount(i32*, i32*) #2

declare dso_local i8* @IShellItemArray_EnumItems(i32*, i8**) #2

declare dso_local i8* @IEnumShellItems_Next(i8*, i32, i8**, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IShellItem_Release(i8*) #2

declare dso_local i32 @IEnumShellItems_Reset(i8*) #2

declare dso_local i8* @IShellItemArray_GetItemAt(i32*, i32, i8**) #2

declare dso_local i8* @IShellItem_Compare(i8*, i8*, i32, i32*) #2

declare dso_local i8* @IEnumShellItems_Clone(i8*, i8**) #2

declare dso_local i32 @IEnumShellItems_Release(i8*) #2

declare dso_local i32 @IShellItemArray_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
