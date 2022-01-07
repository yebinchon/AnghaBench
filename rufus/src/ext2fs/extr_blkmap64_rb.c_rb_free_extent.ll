; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_free_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_free_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_rb_private = type { %struct.bmap_rb_extent*, %struct.bmap_rb_extent*, %struct.bmap_rb_extent* }
%struct.bmap_rb_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2fs_rb_private*, %struct.bmap_rb_extent*)* @rb_free_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_free_extent(%struct.ext2fs_rb_private* %0, %struct.bmap_rb_extent* %1) #0 {
  %3 = alloca %struct.ext2fs_rb_private*, align 8
  %4 = alloca %struct.bmap_rb_extent*, align 8
  store %struct.ext2fs_rb_private* %0, %struct.ext2fs_rb_private** %3, align 8
  store %struct.bmap_rb_extent* %1, %struct.bmap_rb_extent** %4, align 8
  %5 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %6 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %5, i32 0, i32 2
  %7 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %8 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %4, align 8
  %9 = icmp eq %struct.bmap_rb_extent* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %12 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %11, i32 0, i32 2
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %15 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %14, i32 0, i32 1
  %16 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %17 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %4, align 8
  %18 = icmp eq %struct.bmap_rb_extent* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %21 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %20, i32 0, i32 1
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %21, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %24 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %23, i32 0, i32 0
  %25 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %24, align 8
  %26 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %4, align 8
  %27 = icmp eq %struct.bmap_rb_extent* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %3, align 8
  %30 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %29, i32 0, i32 0
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = call i32 @ext2fs_free_mem(%struct.bmap_rb_extent** %4)
  ret void
}

declare dso_local i32 @ext2fs_free_mem(%struct.bmap_rb_extent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
