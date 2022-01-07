; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_assembly.c_assembly_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_assembly.c_assembly_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assembly_create(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call %struct.TYPE_6__* @HeapAlloc(i32 %9, i32 %10, i32 32)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @strdupW(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %7, align 4
  br label %87

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @GENERIC_READ, align 4
  %32 = load i32, i32* @FILE_SHARE_READ, align 4
  %33 = load i32, i32* @OPEN_EXISTING, align 4
  %34 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %35 = call i64 @CreateFileW(i32 %30, i32 %31, i32 %32, i32* null, i32 %33, i32 %34, i32* null)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 @HRESULT_FROM_WIN32(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %87

46:                                               ; preds = %29
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @PAGE_READONLY, align 4
  %51 = call i32 @CreateFileMappingW(i64 %49, i32* null, i32 %50, i32 0, i32 0, i32* null)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 @HRESULT_FROM_WIN32(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %87

61:                                               ; preds = %46
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FILE_MAP_READ, align 4
  %66 = call i32 @MapViewOfFile(i32 %64, i32 %65, i32 0, i32 0, i32 0)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 @HRESULT_FROM_WIN32(i32 %74)
  store i32 %75, i32* %7, align 4
  br label %87

76:                                               ; preds = %61
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = call i32 @parse_headers(%struct.TYPE_6__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %85, align 8
  %86 = load i32, i32* @S_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %91

87:                                               ; preds = %82, %73, %58, %43, %27
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = call i32 @assembly_release(%struct.TYPE_6__* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %83, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @parse_headers(%struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @assembly_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
