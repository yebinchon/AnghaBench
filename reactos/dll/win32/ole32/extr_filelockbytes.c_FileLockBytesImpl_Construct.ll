; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_filelockbytes.c_FileLockBytesImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_filelockbytes.c_FileLockBytesImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32*, i32, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FileLockBytesImpl_Vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FileLockBytesImpl_Construct(i64 %0, i32 %1, i32 %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @E_FAIL, align 4
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %88

23:                                               ; preds = %4
  %24 = call i32 (...) @GetProcessHeap()
  %25 = call i8* @HeapAlloc(i32 %24, i32 0, i32 40)
  %26 = bitcast i8* %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %88

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* @FileLockBytesImpl_Vtbl, i32** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @GetProtectMode(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = call i32 @GetFullPathNameW(i32 %47, i32 %48, i32* %17, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MAX_PATH, align 4
  %54 = call i32 @lstrcpynW(i32* %17, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = call i32 (...) @GetProcessHeap()
  %57 = call i32 @lstrlenW(i32* %17)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i8* @HeapAlloc(i32 %56, i32 0, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %55
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = call i32 @HeapFree(i32 %71, i32 0, %struct.TYPE_6__* %72)
  %74 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %88

75:                                               ; preds = %55
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @lstrcpyW(i32* %78, i32* %17)
  br label %83

80:                                               ; preds = %31
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %86, align 8
  %87 = load i32, i32* @S_OK, align 4
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %83, %70, %29, %21
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetProtectMode(i32) #2

declare dso_local i32 @GetFullPathNameW(i32, i32, i32*, i32*) #2

declare dso_local i32 @lstrcpynW(i32*, i32, i32) #2

declare dso_local i32 @lstrlenW(i32*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @lstrcpyW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
