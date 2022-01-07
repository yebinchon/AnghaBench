; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_ext2fs_print_progress.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_ext2fs_print_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ext2fs_print_progress.last_value = internal global i32 -1, align 4
@OP_FORMAT = common dso_local global i32 0, align 4
@MSG_217 = common dso_local global i32 0, align 4
@ext2_percent_start = common dso_local global i32 0, align 4
@ext2_percent_share = common dso_local global i32 0, align 4
@ext2_max_marker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@FormatStatus = common dso_local global i32 0, align 4
@EXT2_ET_CANCEL_REQUESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_print_progress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

9:                                                ; preds = %2
  %10 = load i32, i32* @OP_FORMAT, align 4
  %11 = load i32, i32* @MSG_217, align 4
  %12 = load i32, i32* @ext2_percent_start, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @ext2_percent_share, align 4
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %14, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @UpdateProgressWithInfo(i32 %10, i32 %11, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = sitofp i32 %21 to float
  %23 = load i32, i32* %5, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %22, %24
  %26 = load i32, i32* @ext2_max_marker, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sitofp i32 %27 to float
  %29 = call float @min(i32 %26, float %28)
  %30 = fmul float %25, %29
  %31 = fptosi float %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ext2fs_print_progress.last_value, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %9
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ext2fs_print_progress.last_value, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %9
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* @ext2fs_print_progress.last_value, align 4
  %41 = call i32 @uprintfs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* @FormatStatus, align 4
  %44 = call i64 @IS_ERROR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EXT2_ET_CANCEL_REQUESTED, align 4
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %8
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @UpdateProgressWithInfo(i32, i32, i32, i32) #1

declare dso_local float @min(i32, float) #1

declare dso_local i32 @uprintfs(i8*) #1

declare dso_local i64 @IS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
