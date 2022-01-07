; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetUserEnvironmentVariable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetUserEnvironmentVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LocalAlloc() failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"RtlExpandEnvironmentStrings_U() failed (Status %lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Length %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i32] [i32 84, i32 69, i32 77, i32 80, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 84, i32 77, i32 80, i32 0], align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"GetShortPathNameW() failed for %S (Error %lu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Buffer: %S\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Value: %wZ\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"RtlSetEnvironmentVariable() failed (Status %lx)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i64)* @SetUserEnvironmentVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetUserEnvironmentVariable(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %15, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca %struct.TYPE_16__, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = call i32 @RtlInitUnicodeString(%struct.TYPE_16__* %12, %struct.TYPE_16__* %26)
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 24
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @LPTR, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32* @LocalAlloc(i32 %36, i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32* %38, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %114

46:                                               ; preds = %25
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RtlExpandEnvironmentStrings_U(i32 %48, %struct.TYPE_16__* %12, %struct.TYPE_16__* %13, i32* %14)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @NT_SUCCESS(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @LocalFree(i32* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %114

65:                                               ; preds = %46
  br label %69

66:                                               ; preds = %4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = call i32 @RtlInitUnicodeString(%struct.TYPE_16__* %13, %struct.TYPE_16__* %67)
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = call i32 @_wcsicmp(%struct.TYPE_16__* %70, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = call i32 @_wcsicmp(%struct.TYPE_16__* %74, i8* bitcast ([4 x i32]* @.str.4 to i8*))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ARRAYSIZE(%struct.TYPE_16__* %22)
  %81 = call i64 @GetShortPathNameW(i32* %79, %struct.TYPE_16__* %22, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @RtlInitUnicodeString(%struct.TYPE_16__* %13, %struct.TYPE_16__* %22)
  br label %91

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to %struct.TYPE_16__*
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i8*, %struct.TYPE_16__*, ...) @DPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_16__* %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %83
  %92 = call i32 (i8*, %struct.TYPE_16__*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_16__* %22)
  br label %93

93:                                               ; preds = %91, %73
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = call i32 @RtlInitUnicodeString(%struct.TYPE_16__* %11, %struct.TYPE_16__* %94)
  %96 = call i32 (i8*, %struct.TYPE_16__*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_16__* %13)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @RtlSetEnvironmentVariable(i32* %97, %struct.TYPE_16__* %11, %struct.TYPE_16__* %13)
  store i32 %98, i32* %10, align 4
  %99 = load i32*, i32** %15, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @LocalFree(i32* %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @NT_SUCCESS(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %114

112:                                              ; preds = %104
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %112, %108, %63, %43
  %115 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_16__*, %struct.TYPE_16__*) #2

declare dso_local i32* @LocalAlloc(i32, i32) #2

declare dso_local i32 @DPRINT1(i8*, ...) #2

declare dso_local i32 @RtlExpandEnvironmentStrings_U(i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @_wcsicmp(%struct.TYPE_16__*, i8*) #2

declare dso_local i64 @GetShortPathNameW(i32*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_16__*) #2

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_16__*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @RtlSetEnvironmentVariable(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
