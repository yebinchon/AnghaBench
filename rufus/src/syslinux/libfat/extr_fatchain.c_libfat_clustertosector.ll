; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_fatchain.c_libfat_clustertosector.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_fatchain.c_libfat_clustertosector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libfat_clustertosector(%struct.libfat_filesystem* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libfat_filesystem*, align 8
  %5 = alloca i32, align 4
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %10 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %17 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %25 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19
  store i32 -1, i32* %3, align 4
  br label %40

29:                                               ; preds = %22
  %30 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %31 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 2
  %35 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %36 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = add nsw i32 %32, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %28, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
