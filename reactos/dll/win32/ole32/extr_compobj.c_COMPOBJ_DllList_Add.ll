; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_COMPOBJ_DllList_Add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_COMPOBJ_DllList_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i64, i8* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@LOAD_WITH_ALTERED_SEARCH_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't load in-process dll %s\0A\00", align 1
@E_ACCESSDENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"DllCanUnloadNow\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"DllGetClassObject\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"couldn't find function DllGetClassObject in %s\0A\00", align 1
@CO_E_DLLNOTFOUND = common dso_local global i32 0, align 4
@csOpenDllList = common dso_local global i32 0, align 4
@openDllList = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__**)* @COMPOBJ_DllList_Add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMPOBJ_DllList_Add(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %12 = load i32, i32* @S_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @debugstr_w(i32 %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_5__* @COMPOBJ_DllList_Get(i32 %16)
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @S_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %126

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @LOAD_WITH_ALTERED_SEARCH_PATH, align 4
  %27 = call i64 @LoadLibraryExW(i32 %25, i32 0, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @debugstr_w(i32 %31)
  %33 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @E_ACCESSDENIED, align 4
  store i32 %34, i32* %3, align 4
  br label %126

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @GetProcAddress(i64 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @GetProcAddress(i64 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @FreeLibrary(i64 %48)
  %50 = load i32, i32* @CO_E_DLLNOTFOUND, align 4
  store i32 %50, i32* %3, align 4
  br label %126

51:                                               ; preds = %35
  %52 = call i32 @EnterCriticalSection(i32* @csOpenDllList)
  %53 = load i32, i32* %4, align 4
  %54 = call %struct.TYPE_5__* @COMPOBJ_DllList_Get(i32 %53)
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @FreeLibrary(i64 %60)
  br label %123

62:                                               ; preds = %51
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @lstrlenW(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = call i32 (...) @GetProcessHeap()
  %66 = call i8* @HeapAlloc(i32 %65, i32 0, i32 40)
  %67 = bitcast i8* %66 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %6, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i8* @HeapAlloc(i32 %71, i32 0, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %70, %62
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(i8* %91, i32 %92, i32 %97)
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = call i32 @list_add_tail(i32* @openDllList, i32* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %114, align 8
  br label %122

115:                                              ; preds = %83, %80
  %116 = call i32 (...) @GetProcessHeap()
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = call i32 @HeapFree(i32 %116, i32 0, %struct.TYPE_5__* %117)
  %119 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %119, i32* %8, align 4
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @FreeLibrary(i64 %120)
  br label %122

122:                                              ; preds = %115, %88
  br label %123

123:                                              ; preds = %122, %59
  %124 = call i32 @LeaveCriticalSection(i32* @csOpenDllList)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %44, %30, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_5__* @COMPOBJ_DllList_Get(i32) #1

declare dso_local i64 @LoadLibraryExW(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @FreeLibrary(i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
