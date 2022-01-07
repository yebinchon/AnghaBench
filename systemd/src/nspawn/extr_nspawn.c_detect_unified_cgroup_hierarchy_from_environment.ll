; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_detect_unified_cgroup_hierarchy_from_environment.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_detect_unified_cgroup_hierarchy_from_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"SYSTEMD_NSPAWN_UNIFIED_HIERARCHY\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"UNIFIED_CGROUP_HIERARCHY\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to parse $%s: %m\00", align 1
@CGROUP_UNIFIED_ALL = common dso_local global i32 0, align 4
@arg_unified_cgroup_hierarchy = common dso_local global i32 0, align 4
@CGROUP_UNIFIED_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_unified_cgroup_hierarchy_from_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_unified_cgroup_hierarchy_from_environment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @getenv(i8* %5)
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @getenv(i8* %10)
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @isempty(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @parse_boolean(i8* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @log_error_errno(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %1, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @CGROUP_UNIFIED_ALL, align 4
  store i32 %29, i32* @arg_unified_cgroup_hierarchy, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CGROUP_UNIFIED_NONE, align 4
  store i32 %31, i32* @arg_unified_cgroup_hierarchy, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %12
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
