; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_extents.c_Ext2ExpandExtent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_extents.c_Ext2ExpandExtent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@MCB_ZONE_INITED = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2ExpandExtent(i32 %0, i32 %1, %struct.TYPE_9__* %2, i64 %3, i64 %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %17, align 4
  store i32 %23, i32* %7, align 4
  br label %101

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %82, %24
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %14, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %25
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* %14, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %15, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %14, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @Ext2DoExtentExpand(i32 %37, i32 %38, %struct.TYPE_9__* %39, i64 %42, i64* %16, i64* %15)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %48, i32* %17, align 4
  br label %86

49:                                               ; preds = %31
  %50 = load i64, i64* %15, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %53, i32* %17, align 4
  br label %86

54:                                               ; preds = %49
  %55 = load i64, i64* %16, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = call i64 @IsZoneInited(%struct.TYPE_9__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @Ext2AddBlockExtent(i32 %62, %struct.TYPE_9__* %63, i64 %66, i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  %72 = call i32 (...) @DbgBreak()
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MCB_ZONE_INITED, align 4
  %77 = call i32 @ClearFlag(i32 %75, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = call i32 @Ext2ClearAllExtents(i32* %79)
  br label %81

81:                                               ; preds = %71, %61
  br label %82

82:                                               ; preds = %81, %57, %54
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %14, align 8
  br label %25

86:                                               ; preds = %52, %47, %25
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add nsw i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @BLOCK_BITS, align 4
  %92 = shl i32 %90, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @Ext2SaveInode(i32 %95, i32 %96, i32* %98)
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %86, %22
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @Ext2DoExtentExpand(i32, i32, %struct.TYPE_9__*, i64, i64*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i64 @IsZoneInited(%struct.TYPE_9__*) #1

declare dso_local i32 @Ext2AddBlockExtent(i32, %struct.TYPE_9__*, i64, i64, i64) #1

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

declare dso_local i32 @Ext2ClearAllExtents(i32*) #1

declare dso_local i32 @Ext2SaveInode(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
