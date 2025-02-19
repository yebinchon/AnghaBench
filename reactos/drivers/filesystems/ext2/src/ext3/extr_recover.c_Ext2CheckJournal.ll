; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_recover.c_Ext2CheckJournal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_recover.c_Ext2CheckJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.ext3_super_block = type { i64, i64, i32 }

@EXT3_FEATURE_INCOMPAT_RECOVER = common dso_local global i32 0, align 4
@VCB_JOURNAL_RECOVER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2CheckJournal(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ext3_super_block*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.ext3_super_block* null, %struct.ext3_super_block** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ext3_super_block*
  store %struct.ext3_super_block* %10, %struct.ext3_super_block** %6, align 8
  %11 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %12 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %15 = call i64 @IsFlagOn(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VCB_JOURNAL_RECOVER, align 4
  %22 = call i32 @SetLongFlag(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = call i64 @IsVcbReadOnly(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %46

28:                                               ; preds = %23
  %29 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %30 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %46

34:                                               ; preds = %28
  %35 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %36 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %46

40:                                               ; preds = %34
  %41 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %42 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %39, %33, %27
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @IsFlagOn(i32, i32) #1

declare dso_local i32 @SetLongFlag(i32, i32) #1

declare dso_local i64 @IsVcbReadOnly(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
