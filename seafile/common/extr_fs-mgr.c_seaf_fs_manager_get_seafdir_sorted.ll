; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_seafdir_sorted.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_seafdir_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@compare_dirents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @seaf_fs_manager_get_seafdir_sorted(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call %struct.TYPE_4__* @seaf_fs_manager_get_seafdir(i32* %11, i8* %12, i32 %13, i8* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %40

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %5, align 8
  br label %40

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_dirents_sorted(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @compare_dirents, align 4
  %35 = call i32 @g_list_sort(i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %5, align 8
  br label %40

40:                                               ; preds = %38, %22, %18
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %41
}

declare dso_local %struct.TYPE_4__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i8*) #1

declare dso_local i32 @is_dirents_sorted(i32) #1

declare dso_local i32 @g_list_sort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
