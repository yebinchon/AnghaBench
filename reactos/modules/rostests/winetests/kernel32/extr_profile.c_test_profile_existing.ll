; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_test_profile_existing.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_test_profile_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32 }

@test_profile_existing.testfile1 = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [19 x i8] c".\\winesharing1.ini\00", align 1
@test_profile_existing.testfile2 = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [19 x i8] c".\\winesharing2.ini\00", align 1
@test_profile_existing.pe = internal constant [9 x %struct.anon] [%struct.anon { i32 130, i32 132, i32 134, i32 133, i32 0 }, %struct.anon { i32 130, i32 131, i32 134, i32 128, i32 0 }, %struct.anon { i32 129, i32 132, i32 134, i32 133, i32 0 }, %struct.anon { i32 129, i32 131, i32 134, i32 128, i32 0 }, %struct.anon { i32 131, i32 132, i32 134, i32 133, i32 0 }, %struct.anon { i32 131, i32 131, i32 134, i32 128, i32 0 }, %struct.anon { i32 130, i32 135, i32 0, i32 133, i32 134 }, %struct.anon { i32 129, i32 135, i32 0, i32 133, i32 134 }, %struct.anon { i32 131, i32 135, i32 0, i32 133, i32 134 }], align 16
@MAX_PATH = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"%d: CreateFile failed\0A\00", align 1
@SECTION = common dso_local global i8* null, align 8
@KEY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%d: WritePrivateProfileString failed with error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"%d: test failed, number of characters copied: %d instead of 5\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"%d: test failed, number of characters copied: %d instead of 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%d: WritePrivateProfileString succeeded\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"%d: WritePrivateProfileString failed with error %u/%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"delete failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"[%s]\0D\0A%s=123\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"%d: GetPrivateProfileString failed with error %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%d: GetPrivateProfileString succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_profile_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_profile_existing() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %136, %0
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 9
  br i1 %15, label %16, label %139

16:                                               ; preds = %12
  %17 = load i8*, i8** @test_profile_existing.testfile1, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CREATE_ALWAYS, align 4
  %29 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %30 = call i64 @CreateFileA(i8* %17, i32 %22, i32 %27, i32* null, i32 %28, i32 %29, i32* null)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = load i8*, i8** @SECTION, align 8
  %39 = load i8*, i8** @KEY, align 8
  %40 = load i8*, i8** @test_profile_existing.testfile1, align 8
  %41 = call i32 @WritePrivateProfileStringA(i8* %38, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %16
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = call i32 (...) @GetLastError()
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %52, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @broken(i32 %59)
  %61 = load i32, i32* %1, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %51, %48
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @CloseHandle(i64 %65)
  %67 = load i8*, i8** @SECTION, align 8
  %68 = load i8*, i8** @KEY, align 8
  %69 = load i32, i32* @MAX_PATH, align 4
  %70 = load i8*, i8** @test_profile_existing.testfile1, align 8
  %71 = call i32 @GetPrivateProfileStringA(i8* %67, i8* %68, i32* null, i8* %11, i32 %69, i8* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 5
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %79)
  br label %89

81:                                               ; preds = %64
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %74
  br label %132

90:                                               ; preds = %16
  %91 = call i32 (...) @GetLastError()
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %2, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %100, %90
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @CloseHandle(i64 %118)
  %120 = load i8*, i8** @SECTION, align 8
  %121 = load i8*, i8** @KEY, align 8
  %122 = load i32, i32* @MAX_PATH, align 4
  %123 = load i8*, i8** @test_profile_existing.testfile1, align 8
  %124 = call i32 @GetPrivateProfileStringA(i8* %120, i8* %121, i32* null, i8* %11, i32 %122, i8* %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117, %89
  %133 = load i8*, i8** @test_profile_existing.testfile1, align 8
  %134 = call i32 @DeleteFileA(i8* %133)
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %1, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %12

139:                                              ; preds = %12
  %140 = load i8*, i8** @test_profile_existing.testfile2, align 8
  %141 = load i32, i32* @CREATE_ALWAYS, align 4
  %142 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %143 = call i64 @CreateFileA(i8* %140, i32 129, i32 0, i32* null, i32 %141, i32 %142, i32* null)
  store i64 %143, i64* %4, align 8
  %144 = load i8*, i8** @SECTION, align 8
  %145 = load i8*, i8** @KEY, align 8
  %146 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @strlen(i8* %11)
  %149 = call i32 @WriteFile(i64 %147, i8* %11, i32 %148, i32* %3, i32* null)
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @CloseHandle(i64 %151)
  store i32 0, i32* %1, align 4
  br label %153

153:                                              ; preds = %220, %139
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %155, 9
  br i1 %156, label %157, label %223

157:                                              ; preds = %153
  %158 = load i8*, i8** @test_profile_existing.testfile2, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.anon, %struct.anon* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %1, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.anon, %struct.anon* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @OPEN_EXISTING, align 4
  %170 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %171 = call i64 @CreateFileA(i8* %158, i32 %163, i32 %168, i32* null, i32 %169, i32 %170, i32* null)
  store i64 %171, i64* %4, align 8
  %172 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %173 = load i64, i64* %4, align 8
  %174 = icmp ne i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %1, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = call i32 @SetLastError(i32 -559038737)
  %179 = load i8*, i8** @SECTION, align 8
  %180 = load i8*, i8** @KEY, align 8
  %181 = load i32, i32* @MAX_PATH, align 4
  %182 = load i8*, i8** @test_profile_existing.testfile2, align 8
  %183 = call i32 @GetPrivateProfileStringA(i8* %179, i8* %180, i32* null, i8* %11, i32 %181, i8* %182)
  store i32 %183, i32* %2, align 4
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @test_profile_existing.pe, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %210, label %190

190:                                              ; preds = %157
  %191 = load i32, i32* %2, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %204, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %2, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = call i32 (...) @GetLastError()
  %198 = icmp eq i32 %197, -559038737
  br label %199

199:                                              ; preds = %196, %193
  %200 = phi i1 [ false, %193 ], [ %198, %196 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @broken(i32 %201)
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %199, %190
  %205 = phi i1 [ true, %190 ], [ %203, %199 ]
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %1, align 4
  %208 = call i32 (...) @GetLastError()
  %209 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %207, i32 %208)
  br label %217

210:                                              ; preds = %157
  %211 = load i32, i32* %2, align 4
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %1, align 4
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %210, %204
  %218 = load i64, i64* %4, align 8
  %219 = call i32 @CloseHandle(i64 %218)
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %1, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %1, align 4
  br label %153

223:                                              ; preds = %153
  %224 = load i8*, i8** @test_profile_existing.testfile2, align 8
  %225 = call i32 @DeleteFileA(i8* %224)
  %226 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %227)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @WritePrivateProfileStringA(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @broken(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @GetPrivateProfileStringA(i8*, i8*, i32*, i8*, i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
