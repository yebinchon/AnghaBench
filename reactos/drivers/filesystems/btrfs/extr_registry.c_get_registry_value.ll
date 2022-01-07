; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_registry.c_get_registry_value.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_registry.c_get_registry_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@KeyValueFullInformation = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ZwDeleteValueKey returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ZwSetValueKey returned %08x\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"ZwQueryValueKey returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i8*, i64)* @get_registry_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_registry_value(i32 %0, i32* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @RtlInitUnicodeString(i32* %13, i32* %15)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @KeyValueFullInformation, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @ZwQueryValueKey(i32 %17, i32* %13, i32 %18, %struct.TYPE_5__* %19, i64 %20, i64* %11)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %25, %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %29
  %33 = load i32, i32* @PagedPool, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @ALLOC_TAG, align 4
  %36 = call %struct.TYPE_5__* @ExAllocatePoolWithTag(i32 %33, i64 %34, i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ZwClose(i32 %41)
  br label %122

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @KeyValueFullInformation, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @ZwQueryValueKey(i32 %44, i32* %13, i32 %45, %struct.TYPE_5__* %46, i64 %47, i64* %11)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @NT_SUCCESS(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i32*
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @RtlCopyMemory(i8* %65, i32* %72, i64 %73)
  br label %97

75:                                               ; preds = %58, %52
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @ZwDeleteValueKey(i32 %76, i32* %13)
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i64 @NT_SUCCESS(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %14, align 8
  %83 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @ZwSetValueKey(i32 %85, i32* %13, i32 0, i64 %86, i8* %87, i64 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @NT_SUCCESS(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i64, i64* %14, align 8
  %95 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %93, %84
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %43
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %100 = call i32 @ExFreePool(%struct.TYPE_5__* %99)
  br label %122

101:                                              ; preds = %29, %25
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load i64, i64* %8, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @ZwSetValueKey(i32 %106, i32* %13, i32 0, i64 %107, i8* %108, i64 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i64 @NT_SUCCESS(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load i64, i64* %14, align 8
  %116 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %114, %105
  br label %121

118:                                              ; preds = %101
  %119 = load i64, i64* %14, align 8
  %120 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %118, %117
  br label %122

122:                                              ; preds = %39, %121, %98
  ret void
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i64 @ZwQueryValueKey(i32, i32*, i32, %struct.TYPE_5__*, i64, i64*) #1

declare dso_local %struct.TYPE_5__* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @ZwClose(i32) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32*, i64) #1

declare dso_local i64 @ZwDeleteValueKey(i32, i32*) #1

declare dso_local i64 @ZwSetValueKey(i32, i32*, i32, i64, i8*, i64) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
