; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_WriteLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_WriteLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@testfileW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@fs3 = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"read %d, got %d, %d\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@crlfW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WriteLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WriteLine() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %1, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %2, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %4, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %5, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %6, align 8
  %30 = load i32, i32* @testfileW, align 4
  %31 = call i32 @get_temp_filepath(i32 %30, i8* %17, i8* %20)
  %32 = call i32 @CreateDirectoryW(i8* %20, i32* null)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = call i32 @SysAllocString(i8* %17)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @fs3, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @VARIANT_FALSE, align 4
  %41 = load i32, i32* @VARIANT_FALSE, align 4
  %42 = call i64 @IFileSystem3_CreateTextFile(i32 %38, i32 %39, i32 %40, i32 %41, i32** %7)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @ITextStream_WriteLine(i32* %50, i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ITextStream_Release(i32* %60)
  %62 = load i32, i32* @GENERIC_READ, align 4
  %63 = load i32, i32* @OPEN_EXISTING, align 4
  %64 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %65 = call i64 @CreateFileW(i8* %17, i32 %62, i32 0, i32* null, i32 %63, i32 %64, i32* null)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %10, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i64 0, i64* %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = trunc i64 %28 to i32
  %75 = call i32 @ReadFile(i64 %73, i8* %29, i32 %74, i64* %8, i32* null)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %0
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %78, %0
  %82 = phi i1 [ false, %0 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (...) @GetLastError()
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @CP_ACP, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @ARRAY_SIZE(i8* %23)
  %92 = call i64 @MultiByteToWideChar(i32 %89, i32 0, i8* %29, i64 %90, i8* %23, i32 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i8, i8* %23, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @lstrcpyW(i8* %26, i32 %95)
  %97 = load i32, i32* @crlfW, align 4
  %98 = call i32 @lstrcatW(i8* %26, i32 %97)
  %99 = call i32 @lstrcmpW(i8* %26, i8* %23)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @wine_dbgstr_w(i8* %23)
  %104 = call i32 @wine_dbgstr_w(i8* %26)
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @CloseHandle(i64 %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @DeleteFileW(i32 %108)
  %110 = load i32, i32* @fs3, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @VARIANT_FALSE, align 4
  %113 = load i32, i32* @VARIANT_TRUE, align 4
  %114 = call i64 @IFileSystem3_CreateTextFile(i32 %110, i32 %111, i32 %112, i32 %113, i32** %7)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %12, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @ITextStream_WriteLine(i32* %122, i32 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @S_OK, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %12, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @ITextStream_Release(i32* %132)
  %134 = load i32, i32* @GENERIC_READ, align 4
  %135 = load i32, i32* @OPEN_EXISTING, align 4
  %136 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %137 = call i64 @CreateFileW(i8* %17, i32 %134, i32 0, i32* null, i32 %135, i32 %136, i32* null)
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %140 = icmp ne i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %10, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  store i64 0, i64* %8, align 8
  %145 = load i64, i64* %10, align 8
  %146 = trunc i64 %22 to i32
  %147 = call i32 @ReadFile(i64 %145, i8* %23, i32 %146, i64* %8, i32* null)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %81
  %151 = load i64, i64* %8, align 8
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %150, %81
  %154 = phi i1 [ false, %81 ], [ %152, %150 ]
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %8, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (...) @GetLastError()
  %160 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %158, i32 %159)
  %161 = load i64, i64* %8, align 8
  %162 = udiv i64 %161, 1
  %163 = getelementptr inbounds i8, i8* %23, i64 %162
  store i8 0, i8* %163, align 1
  %164 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 -1, i8* %164, align 16
  %165 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %165, align 1
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @lstrcatW(i8* %26, i32 %166)
  %168 = load i32, i32* @crlfW, align 4
  %169 = call i32 @lstrcatW(i8* %26, i32 %168)
  %170 = call i32 @lstrcmpW(i8* %26, i8* %23)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @wine_dbgstr_w(i8* %23)
  %175 = call i32 @wine_dbgstr_w(i8* %26)
  %176 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @CloseHandle(i64 %177)
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @DeleteFileW(i32 %179)
  %181 = call i32 @RemoveDirectoryW(i8* %20)
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @SysFreeString(i32 %182)
  %184 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_temp_filepath(i32, i8*, i8*) #2

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SysAllocString(i8*) #2

declare dso_local i64 @IFileSystem3_CreateTextFile(i32, i32, i32, i32, i32**) #2

declare dso_local i64 @ITextStream_WriteLine(i32*, i32) #2

declare dso_local i32 @ITextStream_Release(i32*) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i64*, i32*) #2

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i64, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i32 @lstrcatW(i8*, i32) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFileW(i32) #2

declare dso_local i32 @RemoveDirectoryW(i8*) #2

declare dso_local i32 @SysFreeString(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
