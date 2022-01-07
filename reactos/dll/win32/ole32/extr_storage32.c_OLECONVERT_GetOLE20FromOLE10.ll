; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_GetOLE20FromOLE10.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_GetOLE20FromOLE10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@OLECONVERT_GetOLE20FromOLE10.wstrPrefix = internal constant [4 x i8] c"sis\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STGM_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32)* @OLECONVERT_GetOLE20FromOLE10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OLECONVERT_GetOLE20FromOLE10(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @GetTempPathW(i32 %21, i8* %17)
  %23 = call i32 @GetTempFileNameW(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @OLECONVERT_GetOLE20FromOLE10.wstrPrefix, i64 0, i64 0), i32 0, i8* %20)
  %24 = load i32, i32* @GENERIC_WRITE, align 4
  %25 = load i32, i32* @CREATE_ALWAYS, align 4
  %26 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %27 = call i64 @CreateFileW(i8* %20, i32 %24, i32 0, i32* null, i32 %25, i32 %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WriteFile(i64 %32, i32* %33, i32 %34, i32* %10, i32* null)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @CloseHandle(i64 %36)
  %38 = load i32, i32* @STGM_READ, align 4
  %39 = call i64 @StgOpenStorage(i8* %20, i32* null, i32 %38, i32* null, i32 0, i32** %9)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @IStorage_CopyTo(i32* %44, i32 0, i32* null, i32* null, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @IStorage_Release(i32* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = call i32 @DeleteFileW(i8* %20)
  br label %51

51:                                               ; preds = %49, %3
  %52 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @StgOpenStorage(i8*, i32*, i32, i32*, i32, i32**) #2

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @IStorage_Release(i32*) #2

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
