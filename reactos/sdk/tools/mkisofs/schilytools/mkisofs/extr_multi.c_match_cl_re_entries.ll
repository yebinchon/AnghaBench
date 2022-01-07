; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/mkisofs/schilytools/mkisofs/extr_multi.c_match_cl_re_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/mkisofs/schilytools/mkisofs/extr_multi.c_match_cl_re_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_extent_link = type { i64, %struct.directory_entry*, %struct.dir_extent_link* }
%struct.directory_entry = type { %struct.directory_entry*, i32, %struct.directory_entry* }
%struct.TYPE_2__ = type { %struct.directory_entry* }

@re_dirs = common dso_local global %struct.dir_extent_link* null, align 8
@cl_dirs = common dso_local global %struct.dir_extent_link* null, align 8
@reloc_dir = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @match_cl_re_entries() #0 {
  %1 = alloca %struct.dir_extent_link*, align 8
  %2 = alloca %struct.dir_extent_link*, align 8
  %3 = alloca %struct.directory_entry*, align 8
  %4 = load %struct.dir_extent_link*, %struct.dir_extent_link** @re_dirs, align 8
  store %struct.dir_extent_link* %4, %struct.dir_extent_link** %1, align 8
  br label %5

5:                                                ; preds = %69, %0
  %6 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %7 = icmp ne %struct.dir_extent_link* %6, null
  br i1 %7, label %8, label %73

8:                                                ; preds = %5
  %9 = load %struct.dir_extent_link*, %struct.dir_extent_link** @cl_dirs, align 8
  store %struct.dir_extent_link* %9, %struct.dir_extent_link** %2, align 8
  br label %10

10:                                               ; preds = %64, %8
  %11 = load %struct.dir_extent_link*, %struct.dir_extent_link** %2, align 8
  %12 = icmp ne %struct.dir_extent_link* %11, null
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = load %struct.dir_extent_link*, %struct.dir_extent_link** %2, align 8
  %15 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %18 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %13
  %22 = load %struct.dir_extent_link*, %struct.dir_extent_link** %2, align 8
  %23 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %22, i32 0, i32 1
  %24 = load %struct.directory_entry*, %struct.directory_entry** %23, align 8
  %25 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %26 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %25, i32 0, i32 1
  %27 = load %struct.directory_entry*, %struct.directory_entry** %26, align 8
  %28 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %27, i32 0, i32 2
  store %struct.directory_entry* %24, %struct.directory_entry** %28, align 8
  %29 = load %struct.dir_extent_link*, %struct.dir_extent_link** %2, align 8
  %30 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %29, i32 0, i32 1
  %31 = load %struct.directory_entry*, %struct.directory_entry** %30, align 8
  %32 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %35 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %34, i32 0, i32 1
  %36 = load %struct.directory_entry*, %struct.directory_entry** %35, align 8
  %37 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reloc_dir, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %21
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reloc_dir, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.directory_entry*, %struct.directory_entry** %42, align 8
  store %struct.directory_entry* %43, %struct.directory_entry** %3, align 8
  br label %44

44:                                               ; preds = %57, %40
  %45 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %46 = icmp ne %struct.directory_entry* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %49 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %48, i32 0, i32 1
  %50 = load %struct.directory_entry*, %struct.directory_entry** %49, align 8
  %51 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %52 = icmp eq %struct.directory_entry* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %55 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %54, i32 0, i32 1
  store %struct.directory_entry* null, %struct.directory_entry** %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %59 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %58, i32 0, i32 0
  %60 = load %struct.directory_entry*, %struct.directory_entry** %59, align 8
  store %struct.directory_entry* %60, %struct.directory_entry** %3, align 8
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %21
  br label %68

63:                                               ; preds = %13
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.dir_extent_link*, %struct.dir_extent_link** %2, align 8
  %66 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %65, i32 0, i32 2
  %67 = load %struct.dir_extent_link*, %struct.dir_extent_link** %66, align 8
  store %struct.dir_extent_link* %67, %struct.dir_extent_link** %2, align 8
  br label %10

68:                                               ; preds = %62, %10
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %71 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %70, i32 0, i32 2
  %72 = load %struct.dir_extent_link*, %struct.dir_extent_link** %71, align 8
  store %struct.dir_extent_link* %72, %struct.dir_extent_link** %1, align 8
  br label %5

73:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
