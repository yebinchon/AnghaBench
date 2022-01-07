; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_custom_mount_check_all.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_custom_mount_check_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@arg_n_custom_mounts = common dso_local global i64 0, align 8
@arg_custom_mounts = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@arg_userns_chown = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"--private-users-chown may not be combined with custom root mounts.\00", align 1
@arg_uid_shift = common dso_local global i64 0, align 8
@UID_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"--private-users with automatic UID shift may not be combined with custom root mounts.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @custom_mount_check_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @custom_mount_check_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @arg_n_custom_mounts, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arg_custom_mounts, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @path_equal(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %8
  %18 = load i64, i64* @arg_userns_mode, align 8
  %19 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i64, i64* @arg_userns_chown, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SYNTHETIC_ERRNO(i32 %25)
  %27 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %1, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i64, i64* @arg_uid_shift, align 8
  %30 = load i64, i64* @UID_INVALID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SYNTHETIC_ERRNO(i32 %33)
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %1, align 4
  br label %43

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %17, %8
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %2, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %2, align 8
  br label %4

42:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %32, %24
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @path_equal(i32, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
