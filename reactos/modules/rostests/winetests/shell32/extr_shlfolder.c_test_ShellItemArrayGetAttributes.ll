; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemArrayGetAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemArrayGetAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_ShellItemArrayGetAttributes.testdir1W = internal constant [8 x i8] c"testdir\00", align 1
@test_ShellItemArrayGetAttributes.testdir2W = internal constant [17 x i8] c"testdir\\testdir2\00", align 16
@test_ShellItemArrayGetAttributes.testdir3W = internal constant [17 x i8] c"testdir\\testdir3\00", align 16
@test_ShellItemArrayGetAttributes.testfile1W = internal constant [18 x i8] c"testdir\\test1.txt\00", align 16
@test_ShellItemArrayGetAttributes.testfile2W = internal constant [18 x i8] c"testdir\\test2.txt\00", align 16
@test_ShellItemArrayGetAttributes.testfilesW = internal global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_ShellItemArrayGetAttributes.testdir1W, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_ShellItemArrayGetAttributes.testdir2W, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_ShellItemArrayGetAttributes.testdir3W, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_ShellItemArrayGetAttributes.testfile1W, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_ShellItemArrayGetAttributes.testfile2W, i32 0, i32 0)], align 16
@pSHCreateShellItemArrayFromShellItem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"No SHCreateShellItemArrayFromShellItem, skipping test...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c".\\testdir\\testdir3\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@SIATTRIBFLAGS_AND = common dso_local global i32 0, align 4
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@SIATTRIBFLAGS_OR = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ShellItemArrayGetAttributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ShellItemArrayGetAttributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [5 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @pSHCreateShellItemArrayFromShellItem, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %0
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %302

25:                                               ; preds = %0
  %26 = call i32 (...) @CreateFilesFolders()
  %27 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %28 = call i32 @SHGetDesktopFolder(i32** %5)
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = call i32 @GetCurrentDirectoryW(i32 %29, i8* %17)
  %31 = call i32 @myPathAddBackslashW(i8* %17)
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %54, %25
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = call i32 @lstrcpyW(i8* %20, i8* %17)
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* @test_ShellItemArrayGetAttributes.testfilesW, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @lstrcatW(i8* %20, i8* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 %44
  %46 = bitcast i64* %45 to i32*
  %47 = call i32 @IShellFolder_ParseDisplayName(i32* %42, i32* null, i32* null, i8* %20, i32* null, i32* %46, i32* null)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @IShellFolder_Release(i32* %58)
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %61 = call i32 @pSHCreateShellItemArrayFromIDLists(i32 2, i64* %60, i32** %2)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1
  %69 = call i32 @pSHCreateShellItemArrayFromIDLists(i32 2, i64* %68, i32** %3)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3
  %77 = call i32 @pSHCreateShellItemArrayFromIDLists(i32 2, i64* %76, i32** %1)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1
  %85 = call i32 @pSHCreateShellItemArrayFromIDLists(i32 4, i64* %84, i32** %4)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @S_OK, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %102, %57
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 5
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ILFree(i32 %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %92

105:                                              ; preds = %92
  store i32 -559038737, i32* %7, align 4
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @SIATTRIBFLAGS_AND, align 4
  %108 = load i32, i32* @SFGAO_FOLDER, align 4
  %109 = call i32 @IShellItemArray_GetAttributes(i32* %106, i32 %107, i32 %108, i32* %7)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @E_UNEXPECTED, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @broken(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %113, %105
  %121 = phi i1 [ true, %105 ], [ %119, %113 ]
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SFGAO_FOLDER, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i64 @broken(i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %128, %120
  %135 = phi i1 [ true, %120 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  store i32 -559038737, i32* %7, align 4
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* @SIATTRIBFLAGS_OR, align 4
  %141 = load i32, i32* @SFGAO_FOLDER, align 4
  %142 = call i32 @IShellItemArray_GetAttributes(i32* %139, i32 %140, i32 %141, i32* %7)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @S_OK, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %153, label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @E_UNEXPECTED, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @broken(i32 %150)
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %146, %134
  %154 = phi i1 [ true, %134 ], [ %152, %146 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SFGAO_FOLDER, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %7, align 4
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i64 @broken(i32 %164)
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %161, %153
  %168 = phi i1 [ true, %153 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  store i32 -559038737, i32* %7, align 4
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* @SIATTRIBFLAGS_AND, align 4
  %174 = load i32, i32* @SFGAO_FOLDER, align 4
  %175 = call i32 @IShellItemArray_GetAttributes(i32* %172, i32 %173, i32 %174, i32* %7)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @S_OK, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @ok(i32 %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @SFGAO_FOLDER, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  store i32 -559038737, i32* %7, align 4
  %188 = load i32*, i32** %1, align 8
  %189 = load i32, i32* @SIATTRIBFLAGS_AND, align 4
  %190 = load i32, i32* @SFGAO_FOLDER, align 4
  %191 = call i32 @IShellItemArray_GetAttributes(i32* %188, i32 %189, i32 %190, i32* %7)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @S_FALSE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %167
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @S_OK, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i64 @broken(i32 %199)
  %201 = icmp ne i64 %200, 0
  br label %202

202:                                              ; preds = %195, %167
  %203 = phi i1 [ true, %167 ], [ %201, %195 ]
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @ok(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %7, align 4
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  store i32 -559038737, i32* %7, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = load i32, i32* @SIATTRIBFLAGS_AND, align 4
  %214 = load i32, i32* @SFGAO_FOLDER, align 4
  %215 = call i32 @IShellItemArray_GetAttributes(i32* %212, i32 %213, i32 %214, i32* %7)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @S_FALSE, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %226, label %219

219:                                              ; preds = %202
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @S_OK, align 4
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i64 @broken(i32 %223)
  %225 = icmp ne i64 %224, 0
  br label %226

226:                                              ; preds = %219, %202
  %227 = phi i1 [ true, %202 ], [ %225, %219 ]
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @ok(i32 %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @ok(i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %234)
  store i32 -559038737, i32* %7, align 4
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @SIATTRIBFLAGS_OR, align 4
  %238 = load i32, i32* @SFGAO_FOLDER, align 4
  %239 = call i32 @IShellItemArray_GetAttributes(i32* %236, i32 %237, i32 %238, i32* %7)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @S_OK, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @ok(i32 %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @SFGAO_FOLDER, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %250)
  store i32 -559038737, i32* %7, align 4
  %252 = load i32*, i32** %1, align 8
  %253 = load i32, i32* @SIATTRIBFLAGS_OR, align 4
  %254 = load i32, i32* @SFGAO_FOLDER, align 4
  %255 = call i32 @IShellItemArray_GetAttributes(i32* %252, i32 %253, i32 %254, i32* %7)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @S_FALSE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %266, label %259

259:                                              ; preds = %226
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @S_OK, align 4
  %262 = icmp eq i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = call i64 @broken(i32 %263)
  %265 = icmp ne i64 %264, 0
  br label %266

266:                                              ; preds = %259, %226
  %267 = phi i1 [ true, %226 ], [ %265, %259 ]
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @ok(i32 %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %274)
  store i32 -559038737, i32* %7, align 4
  %276 = load i32*, i32** %4, align 8
  %277 = load i32, i32* @SIATTRIBFLAGS_OR, align 4
  %278 = load i32, i32* @SFGAO_FOLDER, align 4
  %279 = call i32 @IShellItemArray_GetAttributes(i32* %276, i32 %277, i32 %278, i32* %7)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @S_OK, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @ok(i32 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @SFGAO_FOLDER, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = load i32, i32* %7, align 4
  %291 = call i32 @ok(i32 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %290)
  %292 = load i32*, i32** %2, align 8
  %293 = call i32 @IShellItemArray_Release(i32* %292)
  %294 = load i32*, i32** %3, align 8
  %295 = call i32 @IShellItemArray_Release(i32* %294)
  %296 = load i32*, i32** %1, align 8
  %297 = call i32 @IShellItemArray_Release(i32* %296)
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @IShellItemArray_Release(i32* %298)
  %300 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %301 = call i32 (...) @Cleanup()
  store i32 0, i32* %13, align 4
  br label %302

302:                                              ; preds = %266, %23
  %303 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load i32, i32* %13, align 4
  switch i32 %304, label %306 [
    i32 0, label %305
    i32 1, label %305
  ]

305:                                              ; preds = %302, %302
  ret void

306:                                              ; preds = %302
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @CreateFilesFolders(...) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @myPathAddBackslashW(i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

declare dso_local i32 @pSHCreateShellItemArrayFromIDLists(i32, i64*, i32**) #2

declare dso_local i32 @ILFree(i32) #2

declare dso_local i32 @IShellItemArray_GetAttributes(i32*, i32, i32, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IShellItemArray_Release(i32*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @Cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
