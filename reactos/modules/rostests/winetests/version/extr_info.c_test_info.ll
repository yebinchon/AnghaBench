; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/version/extr_info.c_test_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/version/extr_info.c_test_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_info.backslash = internal constant [2 x i8] c"\\\00", align 1
@MY_LAST_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"GetFileVersionInfoSizeA result wrong! <> 0L expected, got 0x%08x\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Last error wrong! NO_ERROR/0x%08x (NT4)  expected, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Handle wrong! 0L expected, got 0x%08x\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"GetFileVersionInfoA failed: GetLastError = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"VerQueryValueA failed: GetLastError = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"kernel32.dll version: %s\0A\00", align 1
@ERROR_BAD_PATHNAME = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i64 1431655765, i64* %1, align 8
  %15 = load i64, i64* @MY_LAST_ERROR, align 8
  %16 = call i32 @SetLastError(i64 %15)
  %17 = call i64 @GetFileVersionInfoSizeA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %1)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %2, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* @NO_ERROR, align 8
  %23 = call i64 (...) @GetLastError()
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = load i64, i64* @MY_LAST_ERROR, align 8
  %27 = call i64 (...) @GetLastError()
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ true, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* @MY_LAST_ERROR, align 8
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load i64, i64* %1, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %1, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %2, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %1, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %29
  store i32 1, i32* %10, align 4
  br label %115

46:                                               ; preds = %42
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @HeapAlloc(i32 %47, i32 %48, i64 %49)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i64, i64* %3, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %115

58:                                               ; preds = %46
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @GetFileVersionInfoA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i64 %59, i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %111

68:                                               ; preds = %58
  %69 = load i64, i64* %3, align 8
  %70 = bitcast %struct.TYPE_2__** %5 to i32*
  %71 = call i32 @VerQueryValueA(i64 %69, i8* null, i32* %70, i32* %6)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = call i64 (...) @GetLastError()
  %76 = load i64, i64* @NO_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i1 [ true, %68 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 (...) @GetLastError()
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %3, align 8
  %84 = bitcast %struct.TYPE_2__** %5 to i32*
  %85 = call i32 @VerQueryValueA(i64 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32* %84, i32* %6)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %3, align 8
  %90 = bitcast %struct.TYPE_2__** %5 to i32*
  %91 = call i32 @VerQueryValueA(i64 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_info.backslash, i64 0, i64 0), i32* %90, i32* %6)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %78
  br label %111

98:                                               ; preds = %78
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 %102, 32
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @VersionDwordLong2String(i32 %108, i8* %14)
  %110 = call i32 @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %14)
  br label %111

111:                                              ; preds = %98, %97, %67
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load i64, i64* %3, align 8
  %114 = call i32 @HeapFree(i32 %112, i32 0, i64 %113)
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %57, %45
  %116 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %10, align 4
  switch i32 %117, label %119 [
    i32 0, label %118
    i32 1, label %118
  ]

118:                                              ; preds = %115, %115
  ret void

119:                                              ; preds = %115
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i64) #2

declare dso_local i64 @GetFileVersionInfoSizeA(i8*, i64*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetFileVersionInfoA(i8*, i32, i64, i64) #2

declare dso_local i32 @VerQueryValueA(i64, i8*, i32*, i32*) #2

declare dso_local i32 @VersionDwordLong2String(i32, i8*) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
