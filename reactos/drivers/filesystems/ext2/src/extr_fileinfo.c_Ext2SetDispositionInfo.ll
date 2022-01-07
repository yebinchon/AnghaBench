; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2SetDispositionInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2SetDispositionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@DL_INF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Ext2SetDispositionInfo: bDelete=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Ext2SetDispositionInformation: Removing %wZ.\0A\00", align 1
@FCB_DELETE_PENDING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2SetDispositionInfo(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_18__* %2, %struct.TYPE_19__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %14, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %12, align 8
  %24 = load i32, i32* @DL_INF, align 4
  %25 = load i64, i64* %10, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DEBUG(i32 %24, i8* %26)
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %5
  %31 = load i32, i32* @DL_INF, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @DEBUG(i32 %31, i8* %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = call i64 @IsInodeSymLink(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %30
  br label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = call i32 @Ext2IsFileRemovable(%struct.TYPE_17__* %47, i32 %48, %struct.TYPE_18__* %49, %struct.TYPE_19__* %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %61 = call i32 @SetLongFlag(i32 %59, i32 %60)
  %62 = load i32, i32* @TRUE, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %52
  br label %79

68:                                               ; preds = %5
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %73 = call i32 @ClearLongFlag(i32 %71, i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %67
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i64 @IsInodeSymLink(i32*) #1

declare dso_local i32 @Ext2IsFileRemovable(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @SetLongFlag(i32, i32) #1

declare dso_local i32 @ClearLongFlag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
