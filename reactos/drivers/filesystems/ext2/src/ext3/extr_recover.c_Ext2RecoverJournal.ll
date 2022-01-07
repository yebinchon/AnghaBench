; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_recover.c_Ext2RecoverJournal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_recover.c_Ext2RecoverJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__*, %struct.super_block, %struct.block_device }
%struct.TYPE_13__ = type { i32 }
%struct.super_block = type { i32 }
%struct.block_device = type { i32 }
%struct.TYPE_15__ = type { %struct.inode }
%struct.inode = type { i32 }
%struct.ext3_super_block = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Ext2Fsd: recover_journal: failed to recover journal data.\0A\00", align 1
@EXT3_FEATURE_INCOMPAT_RECOVER = common dso_local global i32 0, align 4
@VCB_JOURNAL_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2RecoverJournal(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ext3_super_block*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  store %struct.block_device* %14, %struct.block_device** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  store %struct.super_block* %16, %struct.super_block** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @ExAcquireResourceExclusiveLite(i32* %18, i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @Ext2CheckJournal(%struct.TYPE_14__* %21, i32* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_15__* @Ext2LoadInternalJournal(%struct.TYPE_14__* %26, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = icmp ne %struct.TYPE_15__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 -6, i32* %5, align 4
  br label %79

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store %struct.inode* %34, %struct.inode** %10, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call i32* @journal_init_inode(%struct.inode* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  store i32 -8, i32* %5, align 4
  br label %79

42:                                               ; preds = %32
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @journal_load(i32* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 0, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store i32 -9, i32* %5, align 4
  %48 = call i32 @DbgPrint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i32 @Ext2RefreshSuper(i32 %50, %struct.TYPE_14__* %51)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @Ext2RefreshGroup(i32 %53, %struct.TYPE_14__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @journal_wipe_recovery(i32* %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %67 = call i32 @ClearLongFlag(i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = call i32 @Ext2SaveSuper(i32 %68, %struct.TYPE_14__* %69)
  %71 = load %struct.block_device*, %struct.block_device** %8, align 8
  %72 = call i32 @sync_blockdev(%struct.block_device* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VCB_JOURNAL_RECOVER, align 4
  %77 = call i32 @ClearLongFlag(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %58, %49
  br label %79

79:                                               ; preds = %78, %39, %31, %24
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @journal_destroy(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = icmp ne %struct.TYPE_15__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = call i32 @Ext2FreeMcb(%struct.TYPE_14__* %89, %struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = call i32 @ExReleaseResourceLite(i32* %94)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @Ext2CheckJournal(%struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_15__* @Ext2LoadInternalJournal(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @journal_init_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @journal_load(i32*) #1

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i32 @Ext2RefreshSuper(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @Ext2RefreshGroup(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @journal_wipe_recovery(i32*) #1

declare dso_local i32 @ClearLongFlag(i32, i32) #1

declare dso_local i32 @Ext2SaveSuper(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @sync_blockdev(%struct.block_device*) #1

declare dso_local i32 @journal_destroy(i32*) #1

declare dso_local i32 @Ext2FreeMcb(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
