; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_determine_uid_shift.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_determine_uid_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@arg_uid_shift = common dso_local global i32 0, align 4
@UID_INVALID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to determine UID base of %s: %m\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"UID and GID base of %s don't match.\00", align 1
@arg_uid_range = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"UID base too high for UID range.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @determine_uid_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_uid_shift(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @arg_userns_mode, align 8
  %7 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* @arg_uid_shift, align 4
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @arg_uid_shift, align 4
  %12 = load i32, i32* @UID_INVALID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @stat(i8* %15, %struct.stat* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i32, i8*, ...) @log_error_errno(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @UINT32_C(i32 -65536)
  %27 = and i32 %25, %26
  store i32 %27, i32* @arg_uid_shift, align 4
  %28 = load i32, i32* @arg_uid_shift, align 4
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @UINT32_C(i32 -65536)
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @SYNTHETIC_ERRNO(i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i32, i8*, ...) @log_error_errno(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %23
  %40 = call i32 @UINT32_C(i32 65536)
  store i32 %40, i32* @arg_uid_range, align 4
  br label %41

41:                                               ; preds = %39, %10
  %42 = load i32, i32* @arg_uid_shift, align 4
  %43 = load i32, i32* @arg_uid_range, align 4
  %44 = sub nsw i32 -1, %43
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SYNTHETIC_ERRNO(i32 %47)
  %49 = call i32 (i32, i8*, ...) @log_error_errno(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %46, %34, %19, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
