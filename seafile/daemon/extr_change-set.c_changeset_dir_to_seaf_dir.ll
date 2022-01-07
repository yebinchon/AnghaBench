; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_changeset_dir_to_seaf_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_changeset_dir_to_seaf_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__* }

@compare_dents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*)* @changeset_dir_to_seaf_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @changeset_dir_to_seaf_dir(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_11__* @g_hash_table_get_values(i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  br label %14

14:                                               ; preds = %29, %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @changeset_dirent_to_seaf_dirent(i32 %23, i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.TYPE_11__* @g_list_prepend(%struct.TYPE_11__* %26, i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %4, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %5, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = load i32, i32* @compare_dents, align 4
  %36 = call %struct.TYPE_11__* @g_list_sort(%struct.TYPE_11__* %34, i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @seaf_dir_new(i32* null, %struct.TYPE_11__* %37, i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call i32 @g_list_free(%struct.TYPE_11__* %42)
  %44 = load i32*, i32** %8, align 8
  ret i32* %44
}

declare dso_local %struct.TYPE_11__* @g_hash_table_get_values(i32) #1

declare dso_local i32* @changeset_dirent_to_seaf_dirent(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @g_list_prepend(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_11__* @g_list_sort(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @seaf_dir_new(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
