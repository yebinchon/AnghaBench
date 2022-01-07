; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_clones_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_clones_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_clones_arg = type { i64, i32, i32, i32 }

@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_clones_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.get_clones_arg*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.get_clones_arg*
  store %struct.get_clones_arg* %8, %struct.get_clones_arg** %6, align 8
  %9 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %10 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @zfs_close(i32* %14)
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %19 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %20 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @B_TRUE, align 4
  %23 = call i64 @zfs_prop_get(i32* %17, i32 %18, i32 %21, i32 4, i32* null, i32* null, i32 0, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %28 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %31 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %37 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zfs_get_name(i32* %39)
  %41 = call i32 @fnvlist_add_boolean(i32 %38, i32 %40)
  %42 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %43 = getelementptr inbounds %struct.get_clones_arg, %struct.get_clones_arg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %35, %26
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.get_clones_arg*, %struct.get_clones_arg** %6, align 8
  %50 = call i32 @zfs_iter_children(i32* %48, i32 (i32*, i8*)* @get_clones_cb, %struct.get_clones_arg* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @zfs_close(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i32) #1

declare dso_local i32 @zfs_get_name(i32*) #1

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32*, i8*)*, %struct.get_clones_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
