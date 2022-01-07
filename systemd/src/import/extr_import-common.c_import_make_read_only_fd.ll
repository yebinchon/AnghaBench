; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_import-common.c_import_make_read_only_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_import-common.c_import_make_read_only_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to stat temporary image: %m\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to chmod() final image: %m\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to make subvolume read-only: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_make_read_only_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @btrfs_subvol_set_read_only_fd(i32 %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ENOTTY, align 4
  %14 = sub nsw i32 0, %13
  %15 = load i32, i32* @ENOTDIR, align 4
  %16 = sub nsw i32 0, %15
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i64 @IN_SET(i32 %12, i32 %14, i32 %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @fstat(i32 %22, %struct.stat* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3949
  %34 = call i64 @fchmod(i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %39, %36, %26
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @btrfs_subvol_set_read_only_fd(i32, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @fchmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
