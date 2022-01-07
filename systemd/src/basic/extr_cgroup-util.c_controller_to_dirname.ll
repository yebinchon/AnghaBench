; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_controller_to_dirname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_controller_to_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@SYSTEMD_CGROUP_CONTROLLER_HYBRID = common dso_local global i8* null, align 8
@SYSTEMD_CGROUP_CONTROLLER_LEGACY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @controller_to_dirname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @controller_to_dirname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @assert(i8* %5)
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %9 = call i64 @streq(i8* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = call i64 (...) @cg_hybrid_unified()
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** @SYSTEMD_CGROUP_CONTROLLER_HYBRID, align 8
  store i8* %15, i8** %3, align 8
  br label %18

16:                                               ; preds = %11
  %17 = load i8*, i8** @SYSTEMD_CGROUP_CONTROLLER_LEGACY, align 8
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %16, %14
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @startswith(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %2, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i32) #1

declare dso_local i64 @cg_hybrid_unified(...) #1

declare dso_local i8* @startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
