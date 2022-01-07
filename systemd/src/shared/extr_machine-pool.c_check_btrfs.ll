; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_machine-pool.c_check_btrfs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_machine-pool.c_check_btrfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"/var/lib/machines\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/var/lib\00", align 1
@BTRFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_btrfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_btrfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.statfs, align 4
  %3 = call i64 @statfs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.statfs* %2)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @errno, align 4
  %7 = load i32, i32* @ENOENT, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, i32* @errno, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %5
  %13 = call i64 @statfs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.statfs* %2)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @errno, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %24

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %0
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BTRFS_SUPER_MAGIC, align 4
  %23 = call i32 @F_TYPE_EQUAL(i32 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %19, %15, %9
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @F_TYPE_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
