; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_create_tmp_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_create_tmp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't retrieve temp path!\0A\00", align 1
@MCIERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't retrieve temp file name!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s!\0A\00", align 1
@MMIO_ALLOCBUF = common dso_local global i32 0, align 4
@MMIO_READWRITE = common dso_local global i32 0, align 4
@MMIO_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"can't create file=%s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64**)* @create_tmp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_tmp_file(i64* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64** %1, i64*** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 77, i8* %16, align 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 67, i8* %17, align 1
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 73, i8* %18, align 1
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %19, align 1
  %20 = call i32 @ARRAY_SIZE(i8* %14)
  %21 = call i32 @GetTempPathW(i32 %20, i8* %14)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i64**, i64*** %5, align 8
  store i64* null, i64** %25, align 8
  %26 = load i32, i32* @MCIERR_FILE_NOT_FOUND, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

27:                                               ; preds = %2
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i64* @HeapAlloc(i32 %28, i32 %29, i32 %33)
  %35 = load i64**, i64*** %5, align 8
  store i64* %34, i64** %35, align 8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %37 = load i64**, i64*** %5, align 8
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @GetTempFileNameW(i8* %14, i8* %36, i32 0, i64* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i64**, i64*** %5, align 8
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @HeapFree(i32 %43, i32 0, i64* %45)
  %47 = load i32, i32* @MCIERR_FILE_NOT_FOUND, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

48:                                               ; preds = %27
  %49 = load i64**, i64*** %5, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @debugstr_w(i64* %50)
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i64**, i64*** %5, align 8
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %86

56:                                               ; preds = %48
  %57 = load i64**, i64*** %5, align 8
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load i64**, i64*** %5, align 8
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %66 = load i32, i32* @MMIO_READWRITE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MMIO_CREATE, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @mmioOpenW(i64* %64, i32* null, i32 %69)
  %71 = load i64*, i64** %4, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %62
  %76 = load i64**, i64*** %5, align 8
  %77 = load i64*, i64** %76, align 8
  %78 = call i32 @debugstr_w(i64* %77)
  %79 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load i64**, i64*** %5, align 8
  %82 = load i64*, i64** %81, align 8
  %83 = call i32 @HeapFree(i32 %80, i32 0, i64* %82)
  %84 = load i32, i32* @MCIERR_FILE_NOT_FOUND, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %75, %62
  br label %86

86:                                               ; preds = %85, %56, %48
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %41, %23
  %89 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @WARN(i8*, ...) #2

declare dso_local i64* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetTempFileNameW(i8*, i8*, i32, i64*) #2

declare dso_local i32 @HeapFree(i32, i32, i64*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i64*) #2

declare dso_local i64 @mmioOpenW(i64*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
