; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_DumpRegistryData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_DumpRegistryData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Dumping AppCompatCache registry key\0A\00", align 1
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@AppCompatKeyAttributes = common dso_local global i32 0, align 4
@AppCompatCacheValue = common dso_local global i32 0, align 4
@KeyValuePartialInformation = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@REG_BINARY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Len: %lu, Crc: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed reading AppCompatCache from registry (0x%lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DumpRegistryData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %6, align 8
  %10 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %12 = call i64 @NtOpenKey(i64* %3, i32 %11, i32* @AppCompatKeyAttributes)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @KeyValuePartialInformation, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i64 @NtQueryValueKey(i64 %13, i32* @AppCompatCacheValue, i32 %14, %struct.TYPE_6__* %15, i32 24, i32* %8)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 24, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_6__* @malloc(i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* @KeyValuePartialInformation, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @NtQueryValueKey(i64 %32, i32* @AppCompatCacheValue, i32 %33, %struct.TYPE_6__* %34, i32 %35, i32* %8)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %31, %20
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @NT_SUCCESS(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REG_BINARY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hexdump(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %48
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @RtlComputeCrc32(i32 0, i32 %62, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %75

72:                                               ; preds = %42, %38
  %73 = load i64, i64* %4, align 8
  %74 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %72, %59
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, %5
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = call i32 @free(%struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @NtClose(i64 %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i64 @NtOpenKey(i64*, i32, i32*) #1

declare dso_local i64 @NtQueryValueKey(i64, i32*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @hexdump(i32, i32) #1

declare dso_local i32 @RtlComputeCrc32(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @NtClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
