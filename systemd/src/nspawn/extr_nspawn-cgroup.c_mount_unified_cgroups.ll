; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-cgroup.c_mount_unified_cgroups.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-cgroup.c_mount_unified_cgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@AT_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to determine if %s is mounted already: %m\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"/sys/fs/cgroup/cgroup.procs\00", align 1
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"Failed to determine if mount point %s contains the unified cgroup hierarchy: %m\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"%s is already mounted but not a unified cgroup hierarchy. Refusing.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@MS_NOSUID = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i32 0, align 4
@MS_NODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mount_unified_cgroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_unified_cgroups(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @prefix_roota(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @mkdir_p(i8* %10, i32 493)
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @AT_SYMLINK_FOLLOW, align 4
  %15 = call i32 @path_is_mount_point(i8* %12, i8* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @log_error_errno(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @prefix_roota(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @F_OK, align 4
  %30 = call i64 @access(i8* %28, i32 %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @errno, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @log_error_errno(i32 %38, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @SYNTHETIC_ERRNO(i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @log_error_errno(i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %2, align 4
  br label %55

46:                                               ; preds = %22
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @MS_NOSUID, align 4
  %50 = load i32, i32* @MS_NOEXEC, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MS_NODEV, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @mount_verbose(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32* null)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %46, %41, %37, %32, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i32 @mkdir_p(i8*, i32) #1

declare dso_local i32 @path_is_mount_point(i8*, i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @mount_verbose(i32, i8*, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
