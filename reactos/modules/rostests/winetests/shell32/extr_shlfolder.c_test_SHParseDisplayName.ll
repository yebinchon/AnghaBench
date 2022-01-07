; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHParseDisplayName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHParseDisplayName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"failed %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"expected null ptr, got %p\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"expected equal idls\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"GetSystemDirectoryW failed: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"GetSystemWow64DirectoryW failed: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"expected different idls\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"No empty cdrom drive found, skipping test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHParseDisplayName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHParseDisplayName() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [10 x i64], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i64 3735928559, i64* %1, align 8
  %16 = call i64 @SHParseDisplayName(i64* null, i32* null, i64* %1, i32 0, i32* null)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @E_OUTOFMEMORY, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @broken(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %0
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @E_INVALIDARG, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %0
  %28 = phi i1 [ true, %0 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %8, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %1, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %37, align 16
  %38 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %39 = call i64 @SHParseDisplayName(i64* %38, i32* null, i64* %1, i32 0, i32* null)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %8, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = call i64 @SHGetDesktopFolder(i32** %3)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %8, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %55 = call i64 @IShellFolder_ParseDisplayName(i32* %53, i32* null, i32* null, i64* %54, i32* null, i64* %2, i32* null)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %8, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* %2, align 8
  %64 = call i64 @ILIsEqual(i64 %62, i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @TRUE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i64, i64* %1, align 8
  %71 = call i32 @ILFree(i64 %70)
  %72 = load i64, i64* %2, align 8
  %73 = call i32 @ILFree(i64 %72)
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i32 @GetWindowsDirectoryW(i64* %15, i32 %74)
  %76 = call i64 @SHParseDisplayName(i64* %15, i32* null, i64* %1, i32 0, i32* null)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %8, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i64 @IShellFolder_ParseDisplayName(i32* %83, i32* null, i32* null, i64* %15, i32* null, i64* %2, i32* null)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %8, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* %2, align 8
  %93 = call i64 @ILIsEqual(i64 %91, i64 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @TRUE, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i64, i64* %1, align 8
  %100 = call i32 @ILFree(i64 %99)
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @ILFree(i64 %101)
  %103 = call i32 (...) @GetCurrentProcess()
  %104 = call i32 @pIsWow64Process(i32 %103, i64* %10)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %27
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %106, %27
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  store i64 0, i64* %15, align 16
  %112 = load i32, i32* @MAX_PATH, align 4
  %113 = call i64 @GetSystemDirectoryW(i64* %15, i32 %112)
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp sgt i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i64 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %117)
  %119 = call i64 @SHParseDisplayName(i64* %15, i32* null, i64* %1, i32 0, i32* null)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @S_OK, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %8, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %124)
  store i64 0, i64* %15, align 16
  %126 = load i32, i32* @MAX_PATH, align 4
  %127 = call i64 @GetSystemWow64DirectoryW(i64* %15, i32 %126)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp sgt i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %131)
  %133 = call i64 @SHParseDisplayName(i64* %15, i32* null, i64* %2, i32 0, i32* null)
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @S_OK, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %8, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %138)
  %140 = load i64, i64* %1, align 8
  %141 = load i64, i64* %2, align 8
  %142 = call i64 @ILIsEqual(i64 %140, i64 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @FALSE, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i64, i64* %1, align 8
  %149 = call i32 @ILFree(i64 %148)
  %150 = load i64, i64* %2, align 8
  %151 = call i32 @ILFree(i64 %150)
  br label %152

152:                                              ; preds = %111, %108
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @IShellFolder_Release(i32* %153)
  %155 = call i64* (...) @get_empty_cddrive()
  store i64* %155, i64** %7, align 8
  %156 = load i64*, i64** %7, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = call i32 @skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %176

160:                                              ; preds = %152
  %161 = load i64*, i64** %7, align 8
  %162 = call i64 @SHParseDisplayName(i64* %161, i32* null, i64* %1, i32 0, i32* null)
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* @S_OK, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %8, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %167)
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @SUCCEEDED(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load i64, i64* %1, align 8
  %174 = call i32 @ILFree(i64 %173)
  br label %175

175:                                              ; preds = %172, %160
  br label %176

176:                                              ; preds = %175, %158
  %177 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %177)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHParseDisplayName(i64*, i32*, i64*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @SHGetDesktopFolder(i32**) #2

declare dso_local i64 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i64*, i32*, i64*, i32*) #2

declare dso_local i64 @ILIsEqual(i64, i64) #2

declare dso_local i32 @ILFree(i64) #2

declare dso_local i32 @GetWindowsDirectoryW(i64*, i32) #2

declare dso_local i32 @pIsWow64Process(i32, i64*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i64 @GetSystemDirectoryW(i64*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @GetSystemWow64DirectoryW(i64*, i32) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

declare dso_local i64* @get_empty_cddrive(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @SUCCEEDED(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
