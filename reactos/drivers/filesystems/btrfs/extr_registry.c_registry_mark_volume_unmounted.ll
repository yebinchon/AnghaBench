; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_registry.c_registry_mark_volume_unmounted.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_registry.c_registry_mark_volume_unmounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i8* }

@registry_path = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"registry_mark_volume_unmounted_path returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registry_mark_volume_unmounted(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry_path, i32 0, i32 0), align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 148
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @PagedPool, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ALLOC_TAG, align 4
  %18 = call i8* @ExAllocatePoolWithTag(i32 %14, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %25, i32* %2, align 4
  br label %112

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry_path, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry_path, i32 0, i32 0), align 4
  %31 = call i32 @RtlCopyMemory(i8* %28, i32 %29, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry_path, i32 0, i32 0), align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  store i64 %34, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 92, i8* %38, align 1
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %94, %26
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %42, 16
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 240
  %52 = ashr i32 %51, 4
  %53 = call i8* @hex_digit(i32 %52)
  %54 = ptrtoint i8* %53 to i8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 %54, i8* %58, align 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = call i8* @hex_digit(i32 %65)
  %67 = ptrtoint i8* %66 to i8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %67, i8* %72, align 1
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 2
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %86, label %77

77:                                               ; preds = %44
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %78, 5
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 7
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  %85 = icmp eq i64 %84, 9
  br i1 %85, label %86, label %93

86:                                               ; preds = %83, %80, %77, %44
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 45, i8* %90, align 1
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %41

97:                                               ; preds = %41
  %98 = call i32 @registry_mark_volume_unmounted_path(%struct.TYPE_6__* %4)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @NT_SUCCESS(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @ExFreePool(i8* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %23
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlCopyMemory(i8*, i32, i32) #1

declare dso_local i8* @hex_digit(i32) #1

declare dso_local i32 @registry_mark_volume_unmounted_path(%struct.TYPE_6__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
