; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2ListExtents.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2ListExtents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Vba:%I64xh Lba:%I64xh Len:%I64xh.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2ListExtents(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @FsRtlNumberOfRunsInLargeMcb(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @FsRtlGetNextLargeMcbEntry(i32 %14, i32 %15, i64* %4, i64* %5, i64* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* @DL_EXT, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DEBUG(i32 %25, i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %24, %21, %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @TRUE, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FALSE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @FsRtlNumberOfRunsInLargeMcb(i32) #1

declare dso_local i64 @FsRtlGetNextLargeMcbEntry(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
