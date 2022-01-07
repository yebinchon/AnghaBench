; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_zfs_btree_verify.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_zfs_btree_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfs_btree_verify_intensity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_btree_verify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @zfs_btree_verify_intensity, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zfs_btree_verify_height(i32* %7)
  %9 = load i32, i32* @zfs_btree_verify_intensity, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %33

12:                                               ; preds = %6
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @zfs_btree_verify_pointers(i32* %13)
  %15 = load i32, i32* @zfs_btree_verify_intensity, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %33

18:                                               ; preds = %12
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @zfs_btree_verify_counts(i32* %19)
  %21 = load i32, i32* @zfs_btree_verify_intensity, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %33

24:                                               ; preds = %18
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @zfs_btree_verify_order(i32* %25)
  %27 = load i32, i32* @zfs_btree_verify_intensity, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @zfs_btree_verify_poison(i32* %31)
  br label %33

33:                                               ; preds = %30, %29, %23, %17, %11, %5
  ret void
}

declare dso_local i32 @zfs_btree_verify_height(i32*) #1

declare dso_local i32 @zfs_btree_verify_pointers(i32*) #1

declare dso_local i32 @zfs_btree_verify_counts(i32*) #1

declare dso_local i32 @zfs_btree_verify_order(i32*) #1

declare dso_local i32 @zfs_btree_verify_poison(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
