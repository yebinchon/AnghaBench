; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_CurrentDirectoryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_CurrentDirectoryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GetCurrentDirectoryA failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aaaaaaa\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"GetCurrentDirectoryA returned %d instead of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"GetCurrentDirectoryA should not have modified the buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"GetCurrentDirectoryA failed %u err %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wrong result %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\\\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"check 1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"check 2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s\\%s\\%s\00", align 1
@SHORTDIR = common dso_local global i8* null, align 8
@NONDIR_SHORT = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"check 3\00", align 1
@NONDIR_LONG = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"check 4\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@LONGDIR = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"check 5\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"check 6\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c".\\%s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"check 7\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"check 8\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"check 9\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%c:\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"check 10\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%c:\\\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"check 11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_CurrentDirectoryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CurrentDirectoryA(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @GetCurrentDirectoryA(i32 %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = icmp slt i32 %24, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @lstrcpyA(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @GetCurrentDirectoryA(i32 %32, i8* %14)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %41)
  %43 = call i64 @lstrcmpiA(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (...) @GetProcessHeap()
  %48 = call i8* @HeapAlloc(i32 %47, i32 0, i32 131072)
  store i8* %48, i8** %8, align 8
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @GetCurrentDirectoryA(i32 32767, i8* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MAX_PATH, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %27
  %61 = phi i1 [ false, %27 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strcmp(i8* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %68, %60
  %78 = call i32 @SetLastError(i32 -559038737)
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @GetCurrentDirectoryA(i32 32768, i8* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @MAX_PATH, align 4
  %88 = icmp slt i32 %86, %87
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi i1 [ false, %77 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %97, %89
  %107 = call i32 @SetLastError(i32 -559038737)
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strcpy(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @GetCurrentDirectoryA(i32 65535, i8* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @MAX_PATH, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @broken(i32 %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %118, %114
  %126 = phi i1 [ true, %114 ], [ %124, %118 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %125
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @strcmp(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %133, %125
  %143 = call i32 @SetLastError(i32 -559038737)
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @strcpy(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @GetCurrentDirectoryA(i32 65536, i8* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @MAX_PATH, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %161, label %154

154:                                              ; preds = %150, %142
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @broken(i32 %158)
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %154, %150
  %162 = phi i1 [ true, %150 ], [ %160, %154 ]
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %9, align 4
  %165 = call i32 (...) @GetLastError()
  %166 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %161
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @strcmp(i8* %170, i8* %171)
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %169, %161
  %179 = call i32 @SetLastError(i32 -559038737)
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 @strcpy(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @GetCurrentDirectoryA(i32 131072, i8* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @MAX_PATH, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %186, %178
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @broken(i32 %194)
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %190, %186
  %198 = phi i1 [ true, %186 ], [ %196, %190 ]
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (...) @GetLastError()
  %202 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %197
  %206 = load i8*, i8** %8, align 8
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @strcmp(i8* %206, i8* %207)
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load i8*, i8** %8, align 8
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %205, %197
  %215 = call i32 (...) @GetProcessHeap()
  %216 = load i8*, i8** %8, align 8
  %217 = call i32 @HeapFree(i32 %215, i32 0, i8* %216)
  %218 = load i8*, i8** %4, align 8
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %218)
  %220 = load i8*, i8** %3, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 @test_setdir(i8* %220, i8* %14, i8* %221, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %223 = load i8*, i8** %3, align 8
  %224 = load i8*, i8** %4, align 8
  %225 = call i32 @test_setdir(i8* %223, i8* %224, i8* null, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %226 = load i8*, i8** %4, align 8
  %227 = call i32 @SetCurrentDirectoryA(i8* %226)
  %228 = load i8*, i8** %4, align 8
  %229 = load i8*, i8** @SHORTDIR, align 8
  %230 = load i8*, i8** @NONDIR_SHORT, align 8
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %228, i8* %229, i8* %230)
  %232 = load i8*, i8** %4, align 8
  %233 = call i32 @test_setdir(i8* %232, i8* %14, i8* null, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %234 = load i8*, i8** %4, align 8
  %235 = load i8*, i8** @SHORTDIR, align 8
  %236 = load i8*, i8** @NONDIR_LONG, align 8
  %237 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %234, i8* %235, i8* %236)
  %238 = load i8*, i8** %4, align 8
  %239 = call i32 @test_setdir(i8* %238, i8* %14, i8* null, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %240 = load i8*, i8** %4, align 8
  %241 = load i8*, i8** @LONGDIR, align 8
  %242 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %240, i8* %241)
  %243 = load i8*, i8** %4, align 8
  %244 = call i32 @test_setdir(i8* %243, i8* %14, i8* null, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %245 = load i8*, i8** @SHORTDIR, align 8
  %246 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %245)
  %247 = load i8*, i8** %4, align 8
  %248 = load i8*, i8** @SHORTDIR, align 8
  %249 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %247, i8* %248)
  %250 = load i8*, i8** %4, align 8
  %251 = call i32 @test_setdir(i8* %250, i8* %14, i8* %17, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %252 = load i8*, i8** @SHORTDIR, align 8
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %252)
  %254 = load i8*, i8** %4, align 8
  %255 = call i32 @test_setdir(i8* %254, i8* %14, i8* %17, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %256 = load i8*, i8** @LONGDIR, align 8
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %256)
  %258 = load i8*, i8** %4, align 8
  %259 = load i8*, i8** @LONGDIR, align 8
  %260 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %258, i8* %259)
  %261 = load i8*, i8** %4, align 8
  %262 = call i32 @test_setdir(i8* %261, i8* %14, i8* %17, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %263 = load i8*, i8** @LONGDIR, align 8
  %264 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %263)
  %265 = load i8*, i8** %4, align 8
  %266 = call i32 @test_setdir(i8* %265, i8* %14, i8* %17, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %267 = load i8*, i8** %4, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 0
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %270)
  %272 = load i8*, i8** %4, align 8
  %273 = load i8*, i8** %4, align 8
  %274 = call i32 @test_setdir(i8* %272, i8* %14, i8* %273, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 0
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %278)
  %280 = load i8*, i8** %4, align 8
  %281 = call i32 @test_setdir(i8* %280, i8* %14, i8* null, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %282 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %282)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i64 @lstrcmpiA(i8*, i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @test_setdir(i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
