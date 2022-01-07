; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_import_assign_pool_quota_and_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_import_assign_pool_quota_and_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"/var/lib/machines\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [123 x i8] c"Failed to set up default quota hierarchy for /var/lib/machines, as directory is not on btrfs or not a subvolume. Ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Failed to set up default quota hierarchy for /var/lib/machines: %m\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Set up default quota hierarchy for /var/lib/machines.\00", align 1
@.str.4 = private unnamed_addr constant [100 x i8] c"Failed to set up quota hierarchy for %s, as directory is not on btrfs or not a subvolume. Ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to set up default quota hierarchy for %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Set up default quota hierarchy for %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_assign_pool_quota_and_warn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 @btrfs_subvol_auto_qgroup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ENOTTY, align 4
  %8 = sub nsw i32 0, %7
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %11, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @log_error_errno(i32 %17, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @log_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @btrfs_subvol_auto_qgroup(i8* %25, i32 0, i32 1)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ENOTTY, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %32, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  store i32 0, i32* %2, align 4
  br label %49

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i32, i8*, ...) @log_error_errno(i32 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %38, %31, %16, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @btrfs_subvol_auto_qgroup(i8*, i32, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, ...) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
