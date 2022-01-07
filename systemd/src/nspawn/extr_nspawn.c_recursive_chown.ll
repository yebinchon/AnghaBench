; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_recursive_chown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_recursive_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@arg_userns_chown = common dso_local global i32 0, align 4
@arg_uid_shift = common dso_local global i32 0, align 4
@arg_uid_range = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"Automatic UID/GID adjusting is only supported for UID/GID ranges starting at multiples of 2^16 with a range of 2^16.\00", align 1
@EBADE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Upper 16 bits of root directory UID and GID do not match.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to adjust UID/GID shift of OS tree: %m\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"Root directory of image is already owned by the right UID/GID range, skipping recursive chown operation.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Patched directory tree to match UID/GID range.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @recursive_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_chown(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i64, i64* @arg_userns_mode, align 8
  %12 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @arg_userns_chown, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @arg_uid_shift, align 4
  %21 = load i32, i32* @arg_uid_range, align 4
  %22 = call i32 @path_patch_uid(i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @log_error_errno(i32 %28, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EBADE, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @log_error_errno(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @log_error_errno(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @log_debug(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0))
  br label %51

49:                                               ; preds = %44
  %50 = call i32 @log_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %41, %35, %27, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @path_patch_uid(i8*, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
