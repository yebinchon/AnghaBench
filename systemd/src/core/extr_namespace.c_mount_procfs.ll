; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_namespace.c_mount_procfs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_namespace.c_mount_procfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"Unable to determine whether /proc is already mounted: %m\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@MS_NOSUID = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i32 0, align 4
@MS_NODEV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to mount %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mount_procfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_procfs(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @mount_entry_path(i32* %7)
  %9 = call i32 @mkdir_p_label(i32 %8, i32 493)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mount_entry_path(i32* %10)
  %12 = call i32 @path_is_mount_point(i32 %11, i32* null, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @mount_entry_path(i32* %23)
  %25 = load i32, i32* @MS_NOSUID, align 4
  %26 = load i32, i32* @MS_NOEXEC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MS_NODEV, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* null)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @errno, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @mount_entry_path(i32* %34)
  %36 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32, %21, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @mkdir_p_label(i32, i32) #1

declare dso_local i32 @mount_entry_path(i32*) #1

declare dso_local i32 @path_is_mount_point(i32, i32*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, ...) #1

declare dso_local i64 @mount(i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
