; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_crypt.c_test_calchash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_crypt.c_test_calchash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_calchash.expectedhash = private unnamed_addr constant [20 x i32] [i32 58, i32 161, i32 25, i32 8, i32 236, i32 166, i32 13, i32 46, i32 126, i32 204, i32 122, i32 202, i32 245, i32 184, i32 46, i32 98, i32 106, i32 218, i32 240, i32 25], align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@selfname = common dso_local global i32* null, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"CreateFile failed %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Expected success, got FALSE with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" Expected a hash size of 20, got %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"hsh\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [50 x i8] c"Text in this file is needed to create a know hash\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Hashes didn't match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_calchash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_calchash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [20 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %9 = bitcast [20 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([20 x i32]* @__const.test_calchash.expectedhash to i8*), i64 80, i1 false)
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* null, i32* null, i32* null, i32 0)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @GetLastError()
  %22 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* null, i32* %3, i32* null, i32 0)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @GetLastError()
  %35 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** @selfname, align 8
  %41 = load i32, i32* @GENERIC_READ, align 4
  %42 = load i32, i32* @OPEN_EXISTING, align 4
  %43 = call i32* @CreateFileA(i32* %40, i32 %41, i32 0, i32* null, i32 %42, i32 0, i32* null)
  store i32* %43, i32** %2, align 8
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %45, i32* null, i32* null, i32 0)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (...) @GetLastError()
  %53 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @CloseHandle(i32* %58)
  %60 = load i32*, i32** @selfname, align 8
  %61 = load i32, i32* @GENERIC_READ, align 4
  %62 = load i32, i32* @OPEN_EXISTING, align 4
  %63 = call i32* @CreateFileA(i32* %60, i32 %61, i32 0, i32* null, i32 %62, i32 0, i32* null)
  store i32* %63, i32** %2, align 8
  %64 = call i32 @SetLastError(i32 -559038737)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %65, i32* %3, i32* null, i32 1)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 (...) @GetLastError()
  %73 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @CloseHandle(i32* %78)
  %80 = load i32*, i32** @selfname, align 8
  %81 = load i32, i32* @GENERIC_READ, align 4
  %82 = load i32, i32* @FILE_SHARE_READ, align 4
  %83 = load i32, i32* @OPEN_EXISTING, align 4
  %84 = call i32* @CreateFileA(i32* %80, i32 %81, i32 %82, i32* null, i32 %83, i32 0, i32* null)
  store i32* %84, i32** %2, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %87 = icmp ne i32* %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = call i32 @SetLastError(i32 -559038737)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %92, i32* %3, i32* null, i32 0)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 20
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = call i32 (...) @GetLastError()
  %103 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @CloseHandle(i32* %108)
  %110 = load i32*, i32** @selfname, align 8
  %111 = load i32, i32* @GENERIC_READ, align 4
  %112 = load i32, i32* @FILE_SHARE_READ, align 4
  %113 = load i32, i32* @OPEN_EXISTING, align 4
  %114 = call i32* @CreateFileA(i32* %110, i32 %111, i32 %112, i32* null, i32 %113, i32 0, i32* null)
  store i32* %114, i32** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = mul nsw i32 %115, 2
  store i32 %116, i32* %3, align 4
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load i32, i32* %3, align 4
  %119 = call i32* @HeapAlloc(i32 %117, i32 0, i32 %118)
  store i32* %119, i32** %4, align 8
  %120 = call i32 @SetLastError(i32 -559038737)
  %121 = load i32*, i32** %2, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %121, i32* %3, i32* %122, i32 0)
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* %1, align 4
  %125 = call i32 (...) @GetLastError()
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %127, 20
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = call i32 (...) @GetLastError()
  %133 = load i32, i32* @ERROR_SUCCESS, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 (...) @GetLastError()
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @CloseHandle(i32* %138)
  %140 = call i32 (...) @GetProcessHeap()
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @HeapFree(i32 %140, i32 0, i32* %141)
  %143 = load i32, i32* @CURR_DIR, align 4
  %144 = call i32 @GetTempFileNameA(i32 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* %13)
  %145 = load i32, i32* @GENERIC_WRITE, align 4
  %146 = load i32, i32* @OPEN_EXISTING, align 4
  %147 = call i32* @CreateFileA(i32* %13, i32 %145, i32 0, i32* null, i32 %146, i32 0, i32* null)
  store i32* %147, i32** %2, align 8
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @WriteFile(i32* %148, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 49, i32* %8, i32* null)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @CloseHandle(i32* %150)
  %152 = load i32, i32* @GENERIC_READ, align 4
  %153 = load i32, i32* @OPEN_EXISTING, align 4
  %154 = call i32* @CreateFileA(i32* %13, i32 %152, i32 0, i32* null, i32 %153, i32 0, i32* null)
  store i32* %154, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %155, i32* %3, i32* null, i32 0)
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load i32, i32* %3, align 4
  %159 = call i32* @HeapAlloc(i32 %157, i32 0, i32 %158)
  store i32* %159, i32** %4, align 8
  %160 = call i32 @SetLastError(i32 -559038737)
  %161 = load i32*, i32** %2, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @pCryptCATAdminCalcHashFromFileHandle(i32* %161, i32* %3, i32* %162, i32 0)
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* %1, align 4
  %165 = call i32 (...) @GetLastError()
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = call i32 (...) @GetLastError()
  %168 = load i32, i32* @ERROR_SUCCESS, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 (...) @GetLastError()
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %174, 80
  br i1 %175, label %176, label %182

176:                                              ; preds = %0
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %179 = call i32 @memcmp(i32* %177, i32* %178, i32 80)
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %176, %0
  %183 = phi i1 [ false, %0 ], [ %181, %176 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %186 = load i32*, i32** %2, align 8
  %187 = call i32 @CloseHandle(i32* %186)
  %188 = call i32 (...) @GetProcessHeap()
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @HeapFree(i32 %188, i32 0, i32* %189)
  %191 = call i32 @DeleteFileA(i32* %13)
  %192 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %192)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @pCryptCATAdminCalcHashFromFileHandle(i32*, i32*, i32*, i32) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32* @CreateFileA(i32*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @CloseHandle(i32*) #3

declare dso_local i32* @HeapAlloc(i32, i32, i32) #3

declare dso_local i32 @GetProcessHeap(...) #3

declare dso_local i32 @HeapFree(i32, i32, i32*) #3

declare dso_local i32 @GetTempFileNameA(i32, i8*, i32, i32*) #3

declare dso_local i32 @WriteFile(i32*, i8*, i32, i32*, i32*) #3

declare dso_local i32 @memcmp(i32*, i32*, i32) #3

declare dso_local i32 @DeleteFileA(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
