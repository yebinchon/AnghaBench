; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_getmntany.c__sol_getmntent.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_getmntany.c__sol_getmntent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnttab = type { i32, i32, i32, i32 }
%struct.mntent = type { i32, i32, i32, i32 }

@buf = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@MNT_TOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sol_getmntent(i32* %0, %struct.mnttab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mnttab*, align 8
  %6 = alloca %struct.mntent, align 4
  %7 = alloca %struct.mntent*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.mnttab* %1, %struct.mnttab** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @buf, align 4
  %10 = load i32, i32* @BUFSIZE, align 4
  %11 = call %struct.mntent* @getmntent_r(i32* %8, %struct.mntent* %6, i32 %9, i32 %10)
  store %struct.mntent* %11, %struct.mntent** %7, align 8
  %12 = load %struct.mntent*, %struct.mntent** %7, align 8
  %13 = icmp ne %struct.mntent* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mntent, %struct.mntent* %6, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mnttab*, %struct.mnttab** %5, align 8
  %18 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.mntent, %struct.mntent* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mnttab*, %struct.mnttab** %5, align 8
  %22 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.mntent, %struct.mntent* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mnttab*, %struct.mnttab** %5, align 8
  %26 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mntent, %struct.mntent* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mnttab*, %struct.mnttab** %5, align 8
  %30 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @feof(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @MNT_TOOLONG, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %35, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mntent* @getmntent_r(i32*, %struct.mntent*, i32, i32) #1

declare dso_local i64 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
