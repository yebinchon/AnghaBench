; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-cgroup.c_mount_legacy_cgroup_hierarchy.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-cgroup.c_mount_legacy_cgroup_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/sys/fs/cgroup/\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to determine if %s is mounted already: %m\00", align 1
@SYSTEMD_CGROUP_CONTROLLER_HYBRID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@SYSTEMD_CGROUP_CONTROLLER_LEGACY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"none,name=systemd,xattr\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@MS_NOSUID = common dso_local global i32 0, align 4
@MS_NOEXEC = common dso_local global i32 0, align 4
@MS_NODEV = common dso_local global i32 0, align 4
@MS_BIND = common dso_local global i32 0, align 4
@MS_REMOUNT = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @mount_legacy_cgroup_hierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_legacy_cgroup_hierarchy(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strempty(i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @strjoina(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @path_is_mount_point(i8* %18, i8* %19, i32 0)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @log_error_errno(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %5, align 4
  br label %92

32:                                               ; preds = %23, %4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %92

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @mkdir_p(i8* %37, i32 493)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER_HYBRID, align 4
  %41 = call i64 @streq(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %53

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER_LEGACY, align 4
  %47 = call i64 @streq(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %52

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @MS_NOSUID, align 4
  %58 = load i32, i32* @MS_NOEXEC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MS_NODEV, align 4
  %61 = or i32 %59, %60
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @mount_verbose(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56, i32 %61, i8* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %92

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, i32* @LOG_ERR, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @MS_BIND, align 4
  %75 = load i32, i32* @MS_REMOUNT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @MS_NOSUID, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MS_NOEXEC, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MS_NODEV, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @MS_RDONLY, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @mount_verbose(i32 %72, i8* null, i8* %73, i8* null, i32 %84, i8* null)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %71
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %92

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90, %68
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %88, %66, %35, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i8* @strjoina(i32, i8*, i8*) #1

declare dso_local i32 @strempty(i8*) #1

declare dso_local i32 @path_is_mount_point(i8*, i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @mkdir_p(i8*, i32) #1

declare dso_local i64 @streq(i8*, i32) #1

declare dso_local i32 @mount_verbose(i32, i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
