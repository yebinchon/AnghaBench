; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_subvol_set_read_only_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_btrfs-util.c_btrfs_subvol_set_read_only_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_IOC_SUBVOL_GETFLAGS = common dso_local global i32 0, align 4
@BTRFS_SUBVOL_RDONLY = common dso_local global i32 0, align 4
@BTRFS_IOC_SUBVOL_SETFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_subvol_set_read_only_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @fstat(i32 %13, %struct.stat* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 256
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BTRFS_IOC_SUBVOL_GETFLAGS, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, i32* %6)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BTRFS_SUBVOL_RDONLY, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BTRFS_SUBVOL_RDONLY, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @BTRFS_IOC_SUBVOL_SETFLAGS, align 4
  %59 = call i64 @ioctl(i32 %57, i32 %58, i32* %7)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @errno, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %55, %36, %28, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
