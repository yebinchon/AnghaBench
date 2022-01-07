; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_detect_unified_cgroup_hierarchy_from_image.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_detect_unified_cgroup_hierarchy_from_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"Failed to determine whether we are in all unified mode.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to determine systemd version in container: %m\00", align 1
@CGROUP_UNIFIED_ALL = common dso_local global i64 0, align 8
@arg_unified_cgroup_hierarchy = common dso_local global i64 0, align 8
@CGROUP_UNIFIED_NONE = common dso_local global i64 0, align 8
@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@CGROUP_UNIFIED_SYSTEMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Using %s hierarchy for container.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @detect_unified_cgroup_hierarchy_from_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_unified_cgroup_hierarchy_from_image(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @cg_all_unified()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @log_error_errno(i32 %9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  br label %67

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @systemd_installation_has_version(i8* %15, i32 230)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @log_error_errno(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @CGROUP_UNIFIED_ALL, align 8
  store i64 %26, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @CGROUP_UNIFIED_NONE, align 8
  store i64 %28, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %53

30:                                               ; preds = %11
  %31 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %32 = call i64 @cg_unified_controller(i32 %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @systemd_installation_has_version(i8* %35, i32 233)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @log_error_errno(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @CGROUP_UNIFIED_SYSTEMD, align 8
  store i64 %46, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @CGROUP_UNIFIED_NONE, align 8
  store i64 %48, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %49

49:                                               ; preds = %47, %45
  br label %52

50:                                               ; preds = %30
  %51 = load i64, i64* @CGROUP_UNIFIED_NONE, align 8
  store i64 %51, i64* @arg_unified_cgroup_hierarchy, align 8
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i64, i64* @arg_unified_cgroup_hierarchy, align 8
  %55 = load i64, i64* @CGROUP_UNIFIED_NONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %53
  %59 = load i64, i64* @arg_unified_cgroup_hierarchy, align 8
  %60 = load i64, i64* @CGROUP_UNIFIED_SYSTEMD, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %64

64:                                               ; preds = %58, %57
  %65 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %57 ], [ %63, %58 ]
  %66 = call i32 @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %39, %19, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @systemd_installation_has_version(i8*, i32) #1

declare dso_local i64 @cg_unified_controller(i32) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
