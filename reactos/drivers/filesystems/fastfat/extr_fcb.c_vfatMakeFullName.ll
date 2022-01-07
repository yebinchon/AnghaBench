; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatMakeFullName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatMakeFullName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i64* }

@LONGNAME_MAX_LENGTH = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_INVALID = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_FCB = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @vfatMakeFullName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfatMakeFullName(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @max(i64 %18, i64 %21)
  %23 = add nsw i32 %15, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i32 @vfatFCBIsRoot(%struct.TYPE_13__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @LONGNAME_MAX_LENGTH, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @STATUS_OBJECT_NAME_INVALID, align 4
  store i32 %40, i32* %5, align 4
  br label %95

41:                                               ; preds = %32
  %42 = load i32, i32* @NonPagedPool, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @TAG_FCB, align 4
  %48 = call i64* @ExAllocatePoolWithTag(i32 %42, i32 %46, i32 %47)
  store i64* %48, i64** %10, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %52, i32* %5, align 4
  br label %95

53:                                               ; preds = %41
  %54 = load i64*, i64** %10, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i64* %54, i64** %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = call i32 @RtlCopyUnicodeString(%struct.TYPE_14__* %62, %struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call i32 @vfatFCBIsRoot(%struct.TYPE_13__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = call i32 @RtlAppendUnicodeToString(%struct.TYPE_14__* %70, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %72

72:                                               ; preds = %69, %53
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_14__* %78, %struct.TYPE_14__* %79)
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_14__* %82, %struct.TYPE_14__* %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = udiv i64 %91, 4
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %85, %51, %39
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @vfatFCBIsRoot(%struct.TYPE_13__*) #1

declare dso_local i64* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlCopyUnicodeString(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @RtlAppendUnicodeToString(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @RtlAppendUnicodeStringToString(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
