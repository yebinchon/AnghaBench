; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_CreateDirectoryW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_CreateDirectoryW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_CreateDirectoryW.empty_strW = internal constant [1 x i8] zeroinitializer, align 1
@test_CreateDirectoryW.tmp_dir_name = internal constant [17 x i8] c"Please Remove Me\00", align 16
@test_CreateDirectoryW.dotW = internal constant [2 x i8] c".\00", align 1
@test_CreateDirectoryW.slashW = internal constant [2 x i8] c"/\00", align 1
@test_CreateDirectoryW.dotdotW = internal constant [3 x i8] c"..\00", align 1
@test_CreateDirectoryW.questionW = internal constant [2 x i8] c"?\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CreateDirectoryW is not available\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"should not create NULL path ret %u err %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"should not create empty path ret %u err %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"System directory should fit into MAX_PATH\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"could not chdir to the System directory ret %u err %u\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"should not create existing path ret %u err %u\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"should deny access to the drive root ret %u err %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"CreateDirectoryW should always succeed\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"RemoveDirectoryW should always succeed\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [83 x i8] c"CreateDirectoryW with ? wildcard name should fail with error 183, ret=%s error=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" True\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"RemoveDirectoryW should have failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"CreateDirectoryW with * wildcard name should fail with error 183, ret=%s error=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [90 x i8] c"CreateDirectoryW with multiple nonexistent directories in path should fail ret %u err %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateDirectoryW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateDirectoryW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %13 = call i32 @CreateDirectoryW(i8* null, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %0
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %224

22:                                               ; preds = %16, %0
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %34)
  %36 = call i32 @CreateDirectoryW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_CreateDirectoryW.empty_strW, i64 0, i64 0), i32* null)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i1 [ false, %30 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %3, align 4
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = call i32 @GetSystemDirectoryW(i8* %9, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MAX_PATH, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = call i32 @GetCurrentDirectoryW(i32 %57, i8* %12)
  %59 = call i32 @SetCurrentDirectoryW(i8* %9)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %3, align 4
  %65 = call i64 (...) @GetLastError()
  %66 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %64, i64 %65)
  %67 = call i32 @CreateDirectoryW(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_CreateDirectoryW.dotW, i64 0, i64 0), i32* null)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %44
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %71, %44
  %76 = phi i1 [ false, %44 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %3, align 4
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %78, i64 %79)
  %81 = call i32 @CreateDirectoryW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_CreateDirectoryW.dotdotW, i64 0, i64 0), i32* null)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = call i64 (...) @GetLastError()
  %87 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %85, %75
  %90 = phi i1 [ false, %75 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %3, align 4
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %92, i64 %93)
  %95 = load i32, i32* @MAX_PATH, align 4
  %96 = call i32 @GetTempPathW(i32 %95, i8* %9)
  %97 = getelementptr inbounds i8, i8* %9, i64 3
  store i8 0, i8* %97, align 1
  %98 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %89
  %103 = call i64 (...) @GetLastError()
  %104 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = call i64 (...) @GetLastError()
  %108 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ true, %102 ], [ %109, %106 ]
  br label %112

112:                                              ; preds = %110, %89
  %113 = phi i1 [ false, %89 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %3, align 4
  %116 = call i64 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %115, i64 %116)
  %118 = load i32, i32* @MAX_PATH, align 4
  %119 = call i32 @GetTempPathW(i32 %118, i8* %9)
  %120 = call i32 @lstrcatW(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_CreateDirectoryW.tmp_dir_name, i64 0, i64 0))
  %121 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @TRUE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %127 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @FALSE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %112
  %132 = call i64 (...) @GetLastError()
  %133 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %131, %112
  %136 = phi i1 [ false, %112 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %3, align 4
  %139 = call i64 (...) @GetLastError()
  %140 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %138, i64 %139)
  %141 = call i32 @RemoveDirectoryW(i8* %9)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @TRUE, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %147 = call i32 @lstrcatW(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_CreateDirectoryW.questionW, i64 0, i64 0))
  %148 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @FALSE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %135
  %153 = call i64 (...) @GetLastError()
  %154 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %155 = icmp eq i64 %153, %154
  br label %156

156:                                              ; preds = %152, %135
  %157 = phi i1 [ false, %135 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %163 = call i64 (...) @GetLastError()
  %164 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i8* %162, i64 %163)
  %165 = call i32 @RemoveDirectoryW(i8* %9)
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @FALSE, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %171 = call i32 @lstrlenW(i8* %9)
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %9, i64 %173
  store i8 42, i8* %174, align 1
  %175 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @FALSE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %156
  %180 = call i64 (...) @GetLastError()
  %181 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %182 = icmp eq i64 %180, %181
  br label %183

183:                                              ; preds = %179, %156
  %184 = phi i1 [ false, %156 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %3, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %190 = call i64 (...) @GetLastError()
  %191 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i8* %189, i64 %190)
  %192 = call i32 @RemoveDirectoryW(i8* %9)
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @FALSE, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %198 = load i32, i32* @MAX_PATH, align 4
  %199 = call i32 @GetTempPathW(i32 %198, i8* %9)
  %200 = call i32 @lstrcatW(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_CreateDirectoryW.tmp_dir_name, i64 0, i64 0))
  %201 = call i32 @lstrcatW(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_CreateDirectoryW.slashW, i64 0, i64 0))
  %202 = call i32 @lstrcatW(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_CreateDirectoryW.tmp_dir_name, i64 0, i64 0))
  %203 = call i32 @CreateDirectoryW(i8* %9, i32* null)
  store i32 %203, i32* %3, align 4
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @FALSE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %183
  %208 = call i64 (...) @GetLastError()
  %209 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %210 = icmp eq i64 %208, %209
  br label %211

211:                                              ; preds = %207, %183
  %212 = phi i1 [ false, %183 ], [ %210, %207 ]
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %3, align 4
  %215 = call i64 (...) @GetLastError()
  %216 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.14, i64 0, i64 0), i32 %214, i64 %215)
  %217 = call i32 @RemoveDirectoryW(i8* %9)
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @FALSE, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %223 = call i32 @SetCurrentDirectoryW(i8* %12)
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %211, %20
  %225 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %5, align 4
  switch i32 %226, label %228 [
    i32 0, label %227
    i32 1, label %227
  ]

227:                                              ; preds = %224, %224
  ret void

228:                                              ; preds = %224
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @SetCurrentDirectoryW(i8*) #2

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @RemoveDirectoryW(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
