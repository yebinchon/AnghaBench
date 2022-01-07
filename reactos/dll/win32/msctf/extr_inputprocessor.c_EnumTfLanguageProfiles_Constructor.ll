; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_inputprocessor.c_EnumTfLanguageProfiles_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_inputprocessor.c_EnumTfLanguageProfiles_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@EnumTfLanguageProfilesVtbl = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@szwSystemTIPKey = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__**)* @EnumTfLanguageProfiles_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumTfLanguageProfiles_Constructor(i32 %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %10 = call %struct.TYPE_8__* @HeapAlloc(i32 %8, i32 %9, i32 24)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32* @EnumTfLanguageProfilesVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to i32**
  %27 = call i32 @CategoryMgr_Constructor(i32* null, i32** %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.TYPE_8__* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %15
  %37 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %38 = load i32, i32* @szwSystemTIPKey, align 4
  %39 = load i32, i32* @KEY_READ, align 4
  %40 = load i32, i32* @KEY_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = call i64 @RegCreateKeyExW(i32 %37, i32 %38, i32 0, i32* null, i32 0, i32 %41, i32* null, i32* %43, i32* null)
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = call i32 @HeapFree(i32 %48, i32 0, %struct.TYPE_8__* %49)
  %51 = load i32, i32* @E_FAIL, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %36
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %56)
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %47, %31, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CategoryMgr_Constructor(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
