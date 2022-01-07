; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2ExpandFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_fileinfo.c_Ext2ExpandFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i32 0, align 4
@IRP_MJ_WRITE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2ExpandFile(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %14 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %14, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BLOCK_SIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @BLOCK_BITS, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BLOCK_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @BLOCK_BITS, align 4
  %32 = ashr i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load i64, i64* %11, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @BLOCK_BITS, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %91

45:                                               ; preds = %4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = call i64 @IsMcbSpecialFile(%struct.TYPE_17__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %50, i32* %5, align 4
  br label %91

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = call i64 @INODE_HAS_EXTENT(%struct.TYPE_19__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = call i32 @Ext2ExpandExtent(%struct.TYPE_18__* %57, i32 %58, %struct.TYPE_17__* %59, i64 %60, i64 %61, %struct.TYPE_16__* %62)
  store i32 %63, i32* %10, align 4
  br label %88

64:                                               ; preds = %51
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IRP_MJ_WRITE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = call i64 @IsMcbDirectory(%struct.TYPE_17__* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i1 [ true, %64 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = call i32 @Ext2ExpandIndirect(%struct.TYPE_18__* %81, i32 %82, %struct.TYPE_17__* %83, i64 %84, i64 %85, %struct.TYPE_16__* %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %80, %56
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %49, %37
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @IsMcbSpecialFile(%struct.TYPE_17__*) #1

declare dso_local i64 @INODE_HAS_EXTENT(%struct.TYPE_19__*) #1

declare dso_local i32 @Ext2ExpandExtent(%struct.TYPE_18__*, i32, %struct.TYPE_17__*, i64, i64, %struct.TYPE_16__*) #1

declare dso_local i64 @IsMcbDirectory(%struct.TYPE_17__*) #1

declare dso_local i32 @Ext2ExpandIndirect(%struct.TYPE_18__*, i32, %struct.TYPE_17__*, i64, i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
