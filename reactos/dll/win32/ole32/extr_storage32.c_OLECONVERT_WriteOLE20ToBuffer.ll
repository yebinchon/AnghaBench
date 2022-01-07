; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_WriteOLE20ToBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_WriteOLE20ToBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@OLECONVERT_WriteOLE20ToBuffer.wstrPrefix = internal constant [4 x i8] c"sis\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @OLECONVERT_WriteOLE20ToBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OLECONVERT_WriteOLE20ToBuffer(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = load i32**, i32*** %4, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @GetTempPathW(i32 %20, i8* %15)
  %22 = call i32 @GetTempFileNameW(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @OLECONVERT_WriteOLE20ToBuffer.wstrPrefix, i64 0, i64 0), i32 0, i8* %18)
  %23 = load i32, i32* @STGM_CREATE, align 4
  %24 = load i32, i32* @STGM_READWRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @StgCreateDocfile(i8* %18, i32 %27, i32 0, i32** %8)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @IStorage_CopyTo(i32 %33, i32 0, i32* null, i32* null, i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @IStorage_Release(i32* %36)
  %38 = load i32, i32* @GENERIC_READ, align 4
  %39 = load i32, i32* @OPEN_EXISTING, align 4
  %40 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %41 = call i64 @CreateFileW(i8* %18, i32 %38, i32 0, i32* null, i32 %39, i32 %40, i32 0)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %32
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @GetFileSize(i64 %46, i32* null)
  store i32 %47, i32* %7, align 4
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @HeapAlloc(i32 %48, i32 0, i32 %49)
  %51 = load i32**, i32*** %4, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32**, i32*** %4, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ReadFile(i64 %52, i32* %54, i32 %55, i32* %7, i32 0)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @CloseHandle(i64 %57)
  br label %59

59:                                               ; preds = %45, %32
  %60 = call i32 @DeleteFileW(i8* %18)
  br label %61

61:                                               ; preds = %59, %2
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %63)
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i64 @StgCreateDocfile(i8*, i32, i32, i32**) #2

declare dso_local i32 @IStorage_CopyTo(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @GetFileSize(i64, i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @ReadFile(i64, i32*, i32, i32*, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFileW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
