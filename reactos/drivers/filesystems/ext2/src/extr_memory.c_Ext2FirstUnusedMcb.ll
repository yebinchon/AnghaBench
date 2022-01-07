; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2FirstUnusedMcb.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2FirstUnusedMcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_13__*, i32, i32*, i32* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@EXT2_MCB = common dso_local global i32 0, align 4
@Link = common dso_local global i32 0, align 4
@MCB_VCB_LINK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @Ext2FirstUnusedMcb(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @ExAcquireResourceExclusiveLite(i32* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %134

22:                                               ; preds = %3
  %23 = call i32 @KeQuerySystemTime(%struct.TYPE_14__* %13)
  br label %24

24:                                               ; preds = %128, %22
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %7, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %129

28:                                               ; preds = %24
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %15, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = call i64 @IsListEmpty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %129

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %123, %35
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %36
  %44 = call i32 @KeQuerySystemTime(%struct.TYPE_14__* %14)
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 10000000
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %124

52:                                               ; preds = %43
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = call i32* @RemoveHeadList(i32* %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @EXT2_MCB, align 4
  %58 = load i32, i32* @Link, align 4
  %59 = call %struct.TYPE_13__* @CONTAINING_RECORD(i32* %56, i32 %57, i32 %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MCB_VCB_LINK, align 4
  %64 = call i32 @IsFlagOn(i32 %62, i32 %63)
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %117

70:                                               ; preds = %52
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = call i32 @IsMcbRoot(%struct.TYPE_13__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %117

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = call i64 @IsMcbSymLink(%struct.TYPE_13__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %84, %79
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = call i32 @Ext2RemoveMcb(%struct.TYPE_12__* %89, %struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MCB_VCB_LINK, align 4
  %96 = call i32 @ClearLongFlag(i32 %94, i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = call i32 @Ext2DerefXcb(i64* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = icmp ne %struct.TYPE_13__* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %9, align 8
  br label %113

111:                                              ; preds = %88
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %8, align 8
  br label %113

113:                                              ; preds = %111, %102
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %115, align 8
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %15, align 8
  br label %123

117:                                              ; preds = %84, %74, %70, %52
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = call i32 @InsertTailList(i32* %119, i32* %121)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  br label %123

123:                                              ; preds = %117, %113
  br label %36

124:                                              ; preds = %51, %36
  %125 = load i64, i64* %15, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %129

128:                                              ; preds = %124
  br label %24

129:                                              ; preds = %127, %34, %24
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = call i32 @ExReleaseResourceLite(i32* %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %4, align 8
  br label %134

134:                                              ; preds = %129, %21
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %135
}

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i64) #1

declare dso_local i32 @KeQuerySystemTime(%struct.TYPE_14__*) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local i32* @RemoveHeadList(i32*) #1

declare dso_local %struct.TYPE_13__* @CONTAINING_RECORD(i32*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IsFlagOn(i32, i32) #1

declare dso_local i32 @IsMcbRoot(%struct.TYPE_13__*) #1

declare dso_local i64 @IsMcbSymLink(%struct.TYPE_13__*) #1

declare dso_local i32 @Ext2RemoveMcb(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ClearLongFlag(i32, i32) #1

declare dso_local i32 @Ext2DerefXcb(i64*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
