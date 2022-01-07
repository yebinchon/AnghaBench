; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_mount_settings_env.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_mount_settings_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"SYSTEMD_NSPAWN_TMPFS_TMP\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to parse $SYSTEMD_NSPAWN_TMPFS_TMP: %m\00", align 1
@arg_mount_settings = common dso_local global i32 0, align 4
@MOUNT_APPLY_TMPFS_TMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"SYSTEMD_NSPAWN_API_VFS_WRITABLE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@MOUNT_APPLY_APIVFS_RO = common dso_local global i32 0, align 4
@MOUNT_APPLY_APIVFS_NETNS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Failed to parse $SYSTEMD_NSPAWN_API_VFS_WRITABLE: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_mount_settings_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount_settings_env() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @getenv_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @log_error_errno(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  br label %59

15:                                               ; preds = %7, %0
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @arg_mount_settings, align 4
  %20 = load i32, i32* @MOUNT_APPLY_TMPFS_TMP, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @SET_FLAG(i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = call i8* @getenv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @streq_ptr(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @MOUNT_APPLY_APIVFS_RO, align 4
  %32 = load i32, i32* @MOUNT_APPLY_APIVFS_NETNS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @arg_mount_settings, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @arg_mount_settings, align 4
  br label %58

36:                                               ; preds = %25
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @parse_boolean(i8* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @log_error_errno(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32 %46, i32* %1, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load i32, i32* @arg_mount_settings, align 4
  %49 = load i32, i32* @MOUNT_APPLY_APIVFS_RO, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @SET_FLAG(i32 %48, i32 %49, i32 %52)
  %54 = load i32, i32* @arg_mount_settings, align 4
  %55 = load i32, i32* @MOUNT_APPLY_APIVFS_NETNS, align 4
  %56 = call i32 @SET_FLAG(i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %47, %36
  br label %58

58:                                               ; preds = %57, %30
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %44, %12
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SET_FLAG(i32, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
