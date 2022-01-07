; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_report_mount_progress.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_report_mount_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@report_mount_progress.last_progress_time = internal global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Mounting ZFS filesystems\00", align 1
@MOUNT_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d/%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @report_mount_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_mount_progress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i64 @time(i32* null)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @set_progress_header(i32 %13)
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* @report_mount_progress.last_progress_time, align 8
  %21 = load i64, i64* @MOUNT_TIME, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* %5, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19, %15
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* @report_mount_progress.last_progress_time, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %38 = call i32 @finish_progress(i8* %37)
  br label %42

39:                                               ; preds = %27
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %41 = call i32 @update_progress(i8* %40)
  br label %42

42:                                               ; preds = %25, %39, %36
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @set_progress_header(i32) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @finish_progress(i8*) #1

declare dso_local i32 @update_progress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
