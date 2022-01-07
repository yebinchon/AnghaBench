; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_create_file_with_version.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_create_file_with_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\\version.dll\00", align 1
@RT_VERSION = common dso_local global i64 0, align 8
@VS_VERSION_INFO = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @create_file_with_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file_with_version(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetSystemDirectoryA(i32* %20, i32 %22)
  %24 = call i32 @lstrcatA(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @CopyFileA(i32* %20, i32* %25, i32 %26)
  %28 = call i32 @GetFileVersionInfoSizeA(i32* %20, i32* %13)
  store i32 %28, i32* %14, align 4
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %14, align 4
  %31 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @GetFileVersionInfoA(i32* %20, i32 0, i32 %32, i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @lstrlenW(i32* %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @roundpos(%struct.TYPE_4__* %47, i32* %48, i32 4)
  %50 = inttoptr i64 %49 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @BeginUpdateResourceA(i32* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %3
  br label %92

69:                                               ; preds = %3
  %70 = load i32, i32* %15, align 4
  %71 = load i64, i64* @RT_VERSION, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @VS_VERSION_INFO, align 4
  %74 = call i64 @MAKEINTRESOURCE(i32 %73)
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @LANG_NEUTRAL, align 4
  %77 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %78 = call i32 @MAKELANGID(i32 %76, i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @UpdateResourceA(i32 %70, i32 %72, i32 %75, i32 %78, i32* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %92

84:                                               ; preds = %69
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @EndUpdateResourceA(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %90, %89, %83, %68
  %93 = call i32 (...) @GetProcessHeap()
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @HeapFree(i32 %93, i32 0, i32* %94)
  %96 = load i32, i32* %16, align 4
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i32*, i32) #2

declare dso_local i32 @lstrcatA(i32*, i8*) #2

declare dso_local i32 @CopyFileA(i32*, i32*, i32) #2

declare dso_local i32 @GetFileVersionInfoSizeA(i32*, i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetFileVersionInfoA(i32*, i32, i32, i32*) #2

declare dso_local i32 @lstrlenW(i32*) #2

declare dso_local i64 @roundpos(%struct.TYPE_4__*, i32*, i32) #2

declare dso_local i32 @BeginUpdateResourceA(i32*, i32) #2

declare dso_local i32 @UpdateResourceA(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @MAKEINTRESOURCE(i32) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @EndUpdateResourceA(i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
