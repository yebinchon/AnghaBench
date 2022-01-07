; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c_journal_add_journal_head.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c_journal_add_journal_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32, %struct.buffer_head* }
%struct.buffer_head = type { %struct.journal_head*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"added journal_head\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.journal_head* @journal_add_journal_head(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.journal_head*, align 8
  %4 = alloca %struct.journal_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  store %struct.journal_head* null, %struct.journal_head** %4, align 8
  br label %5

5:                                                ; preds = %48, %1
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %7 = call i64 @buffer_jbd(%struct.buffer_head* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = call %struct.journal_head* (...) @journal_alloc_journal_head()
  store %struct.journal_head* %10, %struct.journal_head** %4, align 8
  %11 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %12 = call i32 @memset(%struct.journal_head* %11, i32 0, i32 16)
  br label %13

13:                                               ; preds = %9, %5
  %14 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %15 = call i32 @jbd_lock_bh_journal_head(%struct.buffer_head* %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = call i64 @buffer_jbd(%struct.buffer_head* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %21 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %20)
  store %struct.journal_head* %21, %struct.journal_head** %3, align 8
  br label %65

22:                                               ; preds = %13
  %23 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi i1 [ false, %28 ], [ %39, %33 ]
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi i1 [ true, %22 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @J_ASSERT_BH(%struct.buffer_head* %23, i32 %44)
  %46 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %47 = icmp ne %struct.journal_head* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %50 = call i32 @jbd_unlock_bh_journal_head(%struct.buffer_head* %49)
  br label %5

51:                                               ; preds = %42
  %52 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  store %struct.journal_head* %52, %struct.journal_head** %3, align 8
  store %struct.journal_head* null, %struct.journal_head** %4, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %54 = call i32 @set_buffer_jbd(%struct.buffer_head* %53)
  %55 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  store %struct.journal_head* %55, %struct.journal_head** %57, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %59 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %60 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %59, i32 0, i32 1
  store %struct.buffer_head* %58, %struct.buffer_head** %60, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %62 = call i32 @get_bh(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %64 = call i32 @BUFFER_TRACE(%struct.buffer_head* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %51, %19
  %66 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %67 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %71 = call i32 @jbd_unlock_bh_journal_head(%struct.buffer_head* %70)
  %72 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %73 = icmp ne %struct.journal_head* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %76 = call i32 @journal_free_journal_head(%struct.journal_head* %75)
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load %struct.journal_head*, %struct.journal_head** %79, align 8
  ret %struct.journal_head* %80
}

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @journal_alloc_journal_head(...) #1

declare dso_local i32 @memset(%struct.journal_head*, i32, i32) #1

declare dso_local i32 @jbd_lock_bh_journal_head(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @jbd_unlock_bh_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @journal_free_journal_head(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
