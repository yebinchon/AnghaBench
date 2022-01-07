; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_environment.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"SYSTEMD_NSPAWN_SHARE_NS_IPC\00", align 1
@CLONE_NEWIPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SYSTEMD_NSPAWN_SHARE_NS_PID\00", align 1
@CLONE_NEWPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SYSTEMD_NSPAWN_SHARE_NS_UTS\00", align 1
@CLONE_NEWUTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"SYSTEMD_NSPAWN_SHARE_SYSTEM\00", align 1
@arg_use_cgns = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"SYSTEMD_NSPAWN_USE_CGNS\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to parse $SYSTEMD_NSPAWN_USE_CGNS: %m\00", align 1
@SETTING_USE_CGNS = common dso_local global i32 0, align 4
@arg_settings_mask = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"SYSTEMD_NSPAWN_CONTAINER_SERVICE\00", align 1
@arg_container_service_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_environment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CLONE_NEWIPC, align 4
  %5 = call i32 @parse_share_ns_env(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %1, align 4
  br label %74

10:                                               ; preds = %0
  %11 = load i32, i32* @CLONE_NEWPID, align 4
  %12 = call i32 @parse_share_ns_env(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %74

17:                                               ; preds = %10
  %18 = load i32, i32* @CLONE_NEWUTS, align 4
  %19 = call i32 @parse_share_ns_env(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %74

24:                                               ; preds = %17
  %25 = load i32, i32* @CLONE_NEWIPC, align 4
  %26 = load i32, i32* @CLONE_NEWPID, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CLONE_NEWUTS, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @parse_share_ns_env(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %1, align 4
  br label %74

35:                                               ; preds = %24
  %36 = call i32 (...) @parse_mount_settings_env()
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %1, align 4
  br label %74

41:                                               ; preds = %35
  %42 = call i32 (...) @cg_ns_supported()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* @arg_use_cgns, align 4
  br label %66

45:                                               ; preds = %41
  %46 = call i32 @getenv_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @log_error_errno(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 %56, i32* %1, align 4
  br label %74

57:                                               ; preds = %49
  store i32 1, i32* @arg_use_cgns, align 4
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @arg_use_cgns, align 4
  %62 = load i32, i32* @SETTING_USE_CGNS, align 4
  %63 = load i32, i32* @arg_settings_mask, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @arg_settings_mask, align 4
  br label %65

65:                                               ; preds = %58, %57
  br label %66

66:                                               ; preds = %65, %44
  %67 = call i8* @getenv(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i8* %67, i8** %2, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  store i8* %71, i8** @arg_container_service_name, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = call i32 (...) @detect_unified_cgroup_hierarchy_from_environment()
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %54, %39, %33, %22, %15, %8
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @parse_share_ns_env(i8*, i32) #1

declare dso_local i32 @parse_mount_settings_env(...) #1

declare dso_local i32 @cg_ns_supported(...) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @detect_unified_cgroup_hierarchy_from_environment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
