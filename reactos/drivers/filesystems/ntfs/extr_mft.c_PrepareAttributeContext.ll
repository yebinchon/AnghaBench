; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_PrepareAttributeContext.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_PrepareAttributeContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, i32, i64, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@NtfsGlobalData = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Error: Unable to allocate memory for context!\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Error: Unable to allocate memory for attribute record!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to convert data runs to MCB!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @PrepareAttributeContext(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NtfsGlobalData, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = call %struct.TYPE_15__* @ExAllocateFromNPagedLookasideList(i32* %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %111

16:                                               ; preds = %1
  %17 = load i32, i32* @NonPagedPool, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TAG_NTFS, align 4
  %22 = call %struct.TYPE_16__* @ExAllocatePoolWithTag(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = call i32 @DPRINT1(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NtfsGlobalData, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @ExFreeToNPagedLookasideList(i32* %32, %struct.TYPE_15__* %33)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %111

35:                                               ; preds = %16
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @RtlCopyMemory(%struct.TYPE_16__* %38, %struct.TYPE_14__* %39, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = ptrtoint %struct.TYPE_16__* %51 to i64
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %52, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 7
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DecodeRun(i32 %68, i32* %5, i32* %6)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %83

77:                                               ; preds = %48
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  br label %88

83:                                               ; preds = %48
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i32 -1, i32* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = call i32 @ConvertDataRunsToLargeMCB(i32 %91, i32* %93, i32* %7)
  %95 = call i32 @NT_SUCCESS(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %88
  %98 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* @TAG_NTFS, align 4
  %103 = call i32 @ExFreePoolWithTag(%struct.TYPE_16__* %101, i32 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NtfsGlobalData, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = call i32 @ExFreeToNPagedLookasideList(i32* %105, %struct.TYPE_15__* %106)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %111

108:                                              ; preds = %88
  br label %109

109:                                              ; preds = %108, %35
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %2, align 8
  br label %111

111:                                              ; preds = %109, %97, %29, %14
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %112
}

declare dso_local %struct.TYPE_15__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_16__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @DecodeRun(i32, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ConvertDataRunsToLargeMCB(i32, i32*, i32*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
