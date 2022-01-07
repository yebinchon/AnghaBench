; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_controller_is_accessible.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_controller_is_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"/sys/fs/cgroup/\00", align 1
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @controller_is_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controller_is_accessible(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @cg_controller_is_valid(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = call i32 (...) @cg_all_unified()
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %27 = call i64 @streq(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %52

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @startswith(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %21
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @controller_to_dirname(i8* %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strjoina(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @F_OK, align 4
  %45 = call i64 @laccess(i8* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47, %34, %29, %19, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @cg_controller_is_valid(i8*) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i64 @streq(i8*, i32) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i8* @controller_to_dirname(i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i64 @laccess(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
