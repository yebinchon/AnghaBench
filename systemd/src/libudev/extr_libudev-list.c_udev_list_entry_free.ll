; ModuleID = '/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-list.c_udev_list_entry_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-list.c_udev_list_entry_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_list_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udev_list_entry* (%struct.udev_list_entry*)* @udev_list_entry_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udev_list_entry* @udev_list_entry_free(%struct.udev_list_entry* %0) #0 {
  %2 = alloca %struct.udev_list_entry*, align 8
  %3 = alloca %struct.udev_list_entry*, align 8
  store %struct.udev_list_entry* %0, %struct.udev_list_entry** %3, align 8
  %4 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %5 = icmp ne %struct.udev_list_entry* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.udev_list_entry* null, %struct.udev_list_entry** %2, align 8
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %9 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %14 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %21 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %26 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hashmap_remove(i32 %24, i32 %27)
  br label %38

29:                                               ; preds = %12
  %30 = load i32, i32* @entries, align 4
  %31 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %32 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %37 = call i32 @LIST_REMOVE(i32 %30, i32 %35, %struct.udev_list_entry* %36)
  br label %38

38:                                               ; preds = %29, %19
  br label %39

39:                                               ; preds = %38, %7
  %40 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %41 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free(i32 %42)
  %44 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %45 = getelementptr inbounds %struct.udev_list_entry, %struct.udev_list_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @free(i32 %46)
  %48 = load %struct.udev_list_entry*, %struct.udev_list_entry** %3, align 8
  %49 = call %struct.udev_list_entry* @mfree(%struct.udev_list_entry* %48)
  store %struct.udev_list_entry* %49, %struct.udev_list_entry** %2, align 8
  br label %50

50:                                               ; preds = %39, %6
  %51 = load %struct.udev_list_entry*, %struct.udev_list_entry** %2, align 8
  ret %struct.udev_list_entry* %51
}

declare dso_local i32 @hashmap_remove(i32, i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.udev_list_entry*) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.udev_list_entry* @mfree(%struct.udev_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
