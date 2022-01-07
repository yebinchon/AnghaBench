; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_CreateTextFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_CreateTextFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@testfileW = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@CTL_E_PATHNOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@CLSID_TextStream = common dso_local global i32 0, align 4
@CTL_E_BADFILEMODE = common dso_local global i32 0, align 4
@E_VAR_NOT_SET = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@CTL_E_FILEALREADYEXISTS = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@utf16bom = common dso_local global i32 0, align 4
@ForReading = common dso_local global i32 0, align 4
@TristateFalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateTextFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateTextFile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [10 x i64], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %3, align 8
  %18 = load i32, i32* @testfileW, align 4
  %19 = call i32 @get_temp_filepath(i32 %18, i64* %14, i64* %17)
  %20 = call i64* @SysAllocString(i64* %14)
  store i64* %20, i64** %6, align 8
  %21 = load i32, i32* @fs3, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* @VARIANT_FALSE, align 4
  %24 = load i32, i32* @VARIANT_FALSE, align 4
  %25 = call i32 @IFileSystem3_CreateTextFile(i32 %21, i64* %22, i32 %23, i32 %24, i32** %5)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CTL_E_PATHNOTFOUND, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @CreateDirectoryW(i64* %17, i32* null)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @fs3, align 4
  %38 = load i64*, i64** %6, align 8
  %39 = load i32, i32* @VARIANT_FALSE, align 4
  %40 = load i32, i32* @VARIANT_FALSE, align 4
  %41 = call i32 @IFileSystem3_CreateTextFile(i32 %37, i64* %38, i32 %39, i32 %40, i32** %5)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @test_provideclassinfo(i32* %48, i32* @CLSID_TextStream)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ITextStream_Read(i32* %50, i32 1, i64** %7)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @CTL_E_BADFILEMODE, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ITextStream_Close(i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ITextStream_Read(i32* %66, i32 1, i64** %7)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @CTL_E_BADFILEMODE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %0
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @E_VAR_NOT_SET, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %71, %0
  %76 = phi i1 [ true, %0 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32, i8*, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @ITextStream_Close(i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @S_FALSE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @E_VAR_NOT_SET, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %75
  %90 = phi i1 [ true, %75 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @ITextStream_Release(i32* %94)
  %96 = load i32, i32* @GENERIC_READ, align 4
  %97 = load i32, i32* @OPEN_EXISTING, align 4
  %98 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %99 = call i32 @CreateFileW(i64* %14, i32 %96, i32 0, i32* null, i32 %97, i32 %98, i32* null)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %102 = icmp ne i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @CloseHandle(i32 %106)
  %108 = load i32, i32* @fs3, align 4
  %109 = load i64*, i64** %6, align 8
  %110 = load i32, i32* @VARIANT_FALSE, align 4
  %111 = load i32, i32* @VARIANT_FALSE, align 4
  %112 = call i32 @IFileSystem3_CreateTextFile(i32 %108, i64* %109, i32 %110, i32 %111, i32** %5)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @CTL_E_FILEALREADYEXISTS, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @fs3, align 4
  %120 = load i64*, i64** %6, align 8
  %121 = load i32, i32* @VARIANT_TRUE, align 4
  %122 = load i32, i32* @VARIANT_FALSE, align 4
  %123 = call i32 @IFileSystem3_CreateTextFile(i32 %119, i64* %120, i32 %121, i32 %122, i32** %5)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @S_OK, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32, i8*, i32, ...) @ok(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @ITextStream_Release(i32* %130)
  %132 = load i32, i32* @fs3, align 4
  %133 = load i64*, i64** %6, align 8
  %134 = load i32, i32* @VARIANT_TRUE, align 4
  %135 = load i32, i32* @VARIANT_TRUE, align 4
  %136 = call i32 @IFileSystem3_CreateTextFile(i32 %132, i64* %133, i32 %134, i32 %135, i32** %5)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @S_OK, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @ITextStream_Release(i32* %143)
  %145 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %145, align 16
  %146 = load i32, i32* @CP_ACP, align 4
  %147 = load i32, i32* @utf16bom, align 4
  %148 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %149 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %150 = call i32 @ARRAY_SIZE(i64* %149)
  %151 = call i32 @MultiByteToWideChar(i32 %146, i32 0, i32 %147, i32 -1, i64* %148, i32 %150)
  %152 = load i32, i32* @fs3, align 4
  %153 = load i64*, i64** %6, align 8
  %154 = load i32, i32* @ForReading, align 4
  %155 = load i32, i32* @VARIANT_FALSE, align 4
  %156 = load i32, i32* @TristateFalse, align 4
  %157 = call i32 @IFileSystem3_OpenTextFile(i32 %152, i64* %153, i32 %154, i32 %155, i32 %156, i32** %5)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @S_OK, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %9, align 4
  %163 = call i32 (i32, i8*, i32, ...) @ok(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @ITextStream_ReadAll(i32* %164, i64** %7)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @S_FALSE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %89
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @S_OK, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 @broken(i32 %173)
  %175 = icmp ne i64 %174, 0
  br label %176

176:                                              ; preds = %169, %89
  %177 = phi i1 [ true, %89 ], [ %175, %169 ]
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load i64*, i64** %7, align 8
  %182 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %183 = call i32 @lstrcmpW(i64* %181, i64* %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i64*, i64** %7, align 8
  %188 = call i32 @wine_dbgstr_w(i64* %187)
  %189 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %190 = call i32 @wine_dbgstr_w(i64* %189)
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %190)
  %192 = load i64*, i64** %7, align 8
  %193 = call i32 @SysFreeString(i64* %192)
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @ITextStream_Release(i32* %194)
  %196 = load i64*, i64** %6, align 8
  %197 = call i32 @DeleteFileW(i64* %196)
  %198 = call i32 @RemoveDirectoryW(i64* %17)
  %199 = load i64*, i64** %6, align 8
  %200 = call i32 @SysFreeString(i64* %199)
  %201 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_temp_filepath(i32, i64*, i64*) #2

declare dso_local i64* @SysAllocString(i64*) #2

declare dso_local i32 @IFileSystem3_CreateTextFile(i32, i64*, i32, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @CreateDirectoryW(i64*, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @test_provideclassinfo(i32*, i32*) #2

declare dso_local i32 @ITextStream_Read(i32*, i32, i64**) #2

declare dso_local i32 @ITextStream_Close(i32*) #2

declare dso_local i32 @ITextStream_Release(i32*) #2

declare dso_local i32 @CreateFileW(i64*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @IFileSystem3_OpenTextFile(i32, i64*, i32, i32, i32, i32**) #2

declare dso_local i32 @ITextStream_ReadAll(i32*, i64**) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @lstrcmpW(i64*, i64*) #2

declare dso_local i32 @wine_dbgstr_w(i64*) #2

declare dso_local i32 @SysFreeString(i64*) #2

declare dso_local i32 @DeleteFileW(i64*) #2

declare dso_local i32 @RemoveDirectoryW(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
