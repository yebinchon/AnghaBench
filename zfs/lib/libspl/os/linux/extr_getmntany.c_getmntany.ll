; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_getmntany.c_getmntany.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_getmntany.c_getmntany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnttab = type { i32 }

@mnt_special = common dso_local global i32 0, align 4
@mnt_mountp = common dso_local global i32 0, align 4
@mnt_fstype = common dso_local global i32 0, align 4
@mnt_mntopts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getmntany(i32* %0, %struct.mnttab* %1, %struct.mnttab* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mnttab*, align 8
  %6 = alloca %struct.mnttab*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mnttab* %1, %struct.mnttab** %5, align 8
  store %struct.mnttab* %2, %struct.mnttab** %6, align 8
  br label %8

8:                                                ; preds = %33, %3
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.mnttab*, %struct.mnttab** %5, align 8
  %11 = call i32 @_sol_getmntent(i32* %9, %struct.mnttab* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i32, i32* @mnt_special, align 4
  %15 = call i64 @DIFF(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @mnt_mountp, align 4
  %19 = call i64 @DIFF(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @mnt_fstype, align 4
  %23 = call i64 @DIFF(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @mnt_mntopts, align 4
  %27 = call i64 @DIFF(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %21, %17, %13
  %30 = phi i1 [ true, %21 ], [ true, %17 ], [ true, %13 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi i1 [ false, %8 ], [ %30, %29 ]
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %8

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @_sol_getmntent(i32*, %struct.mnttab*) #1

declare dso_local i64 @DIFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
