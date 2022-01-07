; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/GUI/extr_browsewnd.c_GetListOfTestExes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/GUI/extr_browsewnd.c_GetListOfTestExes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@EXE_SEARCH_DIR = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @GetListOfTestExes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetListOfTestExes(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @GetCurrentDirectoryW(i32 %16, i32* %15)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load i32, i32* @EXE_SEARCH_DIR, align 4
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  %26 = sub nsw i32 %23, %25
  %27 = call i32 @wcsncat(i32* %15, i32 %22, i32 %26)
  %28 = call i32 @GetNumberOfExesInFolder(i32* %15)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

32:                                               ; preds = %21
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = mul i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32* @HeapAlloc(i32 %33, i32 0, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

49:                                               ; preds = %32
  %50 = call i64 @FindFirstFileW(i32* %15, %struct.TYPE_6__* %5)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 @DisplayError(i32 %55)
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @HeapFree(i32 %57, i32 0, i32* %60)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

62:                                               ; preds = %49
  %63 = call i32* @wcschr(i32* %15, i32 42)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  br label %72

72:                                               ; preds = %96, %68
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @wcscpy(i32* %79, i32* %15)
  %81 = load i32, i32* @MAX_PATH, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @wcslen(i32* %82)
  %84 = add nsw i32 %83, 1
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @wcsncat(i32* %86, i32 %88, i32 %89)
  %91 = load i32, i32* @MAX_PATH, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %78, %72
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @FindNextFile(i64 %97, %struct.TYPE_6__* %5)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %72, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %100, %54, %48, %31, %20
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @wcsncat(i32*, i32, i32) #2

declare dso_local i32 @GetNumberOfExesInFolder(i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @DisplayError(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32* @wcschr(i32*, i32) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
