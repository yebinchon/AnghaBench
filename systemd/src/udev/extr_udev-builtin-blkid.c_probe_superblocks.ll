; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-blkid.c_probe_superblocks.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-blkid.c_probe_superblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"PTTYPE\00", align 1
@BLKID_PARTS_ENTRY_DETAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @probe_superblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_superblocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @blkid_probe_get_fd(i32 %6)
  %8 = call i64 @fstat(i32 %7, %struct.stat* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @blkid_probe_enable_partitions(i32 %14, i32 1)
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @S_ISCHR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @blkid_probe_get_size(i32 %21)
  %23 = icmp sle i32 %22, 1474560
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @blkid_probe_is_wholedisk(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @blkid_probe_enable_superblocks(i32 %29, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @blkid_do_fullprobe(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @blkid_probe_lookup_value(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %51

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %24, %20, %13
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @BLKID_PARTS_ENTRY_DETAILS, align 4
  %46 = call i32 @blkid_probe_set_partitions_flags(i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @blkid_probe_enable_superblocks(i32 %47, i32 1)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @blkid_do_safeprobe(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %41, %35, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @blkid_probe_get_fd(i32) #1

declare dso_local i32 @blkid_probe_enable_partitions(i32, i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @blkid_probe_get_size(i32) #1

declare dso_local i64 @blkid_probe_is_wholedisk(i32) #1

declare dso_local i32 @blkid_probe_enable_superblocks(i32, i32) #1

declare dso_local i32 @blkid_do_fullprobe(i32) #1

declare dso_local i64 @blkid_probe_lookup_value(i32, i8*, i32*, i32*) #1

declare dso_local i32 @blkid_probe_set_partitions_flags(i32, i32) #1

declare dso_local i32 @blkid_do_safeprobe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
