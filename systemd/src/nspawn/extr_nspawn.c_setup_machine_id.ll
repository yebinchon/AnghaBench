; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_machine_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_machine_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/etc/machine-id\00", align 1
@ID128_PLAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to read machine ID from container image: %m\00", align 1
@arg_uuid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to acquire randomized machine UUID: %m\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Machine ID in container image is zero, refusing.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @setup_machine_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_machine_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @prefix_roota(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @ID128_PLAIN, align 4
  %11 = call i32 @id128_read(i8* %9, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32, i32* @ENOMEDIUM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @IN_SET(i32 %15, i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %14
  %26 = load i32, i32* @arg_uuid, align 4
  %27 = call i64 @sd_id128_is_null(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = call i32 @sd_id128_randomize(i32* @arg_uuid)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  br label %48

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @sd_id128_is_null(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @SYNTHETIC_ERRNO(i32 %43)
  %45 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* @arg_uuid, align 4
  br label %48

48:                                               ; preds = %46, %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %33, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i32 @id128_read(i8*, i32, i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @sd_id128_is_null(i32) #1

declare dso_local i32 @sd_id128_randomize(i32*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
