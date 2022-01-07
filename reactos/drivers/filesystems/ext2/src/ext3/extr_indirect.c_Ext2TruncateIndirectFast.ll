; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2TruncateIndirectFast.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2TruncateIndirectFast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MCB_ZONE_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2TruncateIndirectFast(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = call i32 @IsZoneInited(%struct.TYPE_7__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = call i32 @Ext2InitializeZone(i32 %17, i32 %18, %struct.TYPE_7__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = call i32 (...) @DbgBreak()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MCB_ZONE_INITED, align 4
  %30 = call i32 @ClearLongFlag(i32 %28, i32 %29)
  br label %125

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = call i32 @IsZoneInited(%struct.TYPE_7__* %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = call i64 @FsRtlNumberOfRunsInLargeMcb(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @FsRtlGetNextLargeMcbEntry(i32* %43, i32 %44, i32* %7, i32* %8, i32* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 -1, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %47
  br label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @Ext2FreeBlock(i32 %58, i32 %59, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %56
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %41

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %32
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = call i64 @FsRtlNumberOfRunsInLargeMcb(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %97, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @FsRtlGetNextLargeMcbEntry(i32* %76, i32 %77, i32* %7, i32* %8, i32* %9)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 -1, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83, %80
  br label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @Ext2FreeBlock(i32 %91, i32 %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %89
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %74

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %68
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = call i32 @Ext2ClearAllExtents(i32* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = call i32 @Ext2ClearAllExtents(i32* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MCB_ZONE_INITED, align 4
  %112 = call i32 @ClearFlag(i32 %110, i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = call i32 @memset(i32* %123, i32 0, i32 60)
  br label %125

125:                                              ; preds = %101, %24
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local i32 @IsZoneInited(%struct.TYPE_7__*) #1

declare dso_local i32 @Ext2InitializeZone(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i32 @ClearLongFlag(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FsRtlNumberOfRunsInLargeMcb(i32*) #1

declare dso_local i64 @FsRtlGetNextLargeMcbEntry(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Ext2FreeBlock(i32, i32, i32, i32) #1

declare dso_local i32 @Ext2ClearAllExtents(i32*) #1

declare dso_local i32 @ClearFlag(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
