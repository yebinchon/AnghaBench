; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fuid.c_zfs_fuid_table_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fuid.c_zfs_fuid_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_fuid_table_destroy(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %6, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_4__* @avl_destroy_nodes(i32* %8, i8** %6)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ksiddomain_rele(i32 %14)
  br label %7

16:                                               ; preds = %7
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @avl_destroy(i32* %17)
  store i8* null, i8** %6, align 8
  br label %19

19:                                               ; preds = %23, %16
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_4__* @avl_destroy_nodes(i32* %20, i8** %6)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = call i32 @kmem_free(%struct.TYPE_4__* %24, i32 4)
  br label %19

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @avl_destroy(i32* %27)
  ret void
}

declare dso_local %struct.TYPE_4__* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @ksiddomain_rele(i32) #1

declare dso_local i32 @avl_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
