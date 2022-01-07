; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_destroy_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_destroy_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_dir_hash = type { i32 }
%struct.target_dir_entry = type { %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry* }
%struct.target_file = type { %struct.target_file*, %struct.target_file*, %struct.target_file*, %struct.target_file*, %struct.target_file*, %struct.target_file*, %struct.target_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_dir_hash*, %struct.target_dir_entry*)* @dir_hash_destroy_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_hash_destroy_dir(%struct.target_dir_hash* %0, %struct.target_dir_entry* %1) #0 {
  %3 = alloca %struct.target_dir_hash*, align 8
  %4 = alloca %struct.target_dir_entry*, align 8
  %5 = alloca %struct.target_file*, align 8
  %6 = alloca %struct.target_dir_entry*, align 8
  store %struct.target_dir_hash* %0, %struct.target_dir_hash** %3, align 8
  store %struct.target_dir_entry* %1, %struct.target_dir_entry** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %9 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %8, i32 0, i32 6
  %10 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  store %struct.target_dir_entry* %10, %struct.target_dir_entry** %6, align 8
  %11 = icmp ne %struct.target_dir_entry* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.target_dir_entry*, %struct.target_dir_entry** %6, align 8
  %14 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %13, i32 0, i32 4
  %15 = load %struct.target_dir_entry*, %struct.target_dir_entry** %14, align 8
  %16 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %17 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %16, i32 0, i32 6
  store %struct.target_dir_entry* %15, %struct.target_dir_entry** %17, align 8
  %18 = load %struct.target_dir_hash*, %struct.target_dir_hash** %3, align 8
  %19 = load %struct.target_dir_entry*, %struct.target_dir_entry** %6, align 8
  call void @dir_hash_destroy_dir(%struct.target_dir_hash* %18, %struct.target_dir_entry* %19)
  %20 = load %struct.target_dir_entry*, %struct.target_dir_entry** %6, align 8
  %21 = bitcast %struct.target_dir_entry* %20 to %struct.target_file*
  %22 = call i32 @free(%struct.target_file* %21)
  br label %7

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %30, %23
  %25 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %26 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %25, i32 0, i32 5
  %27 = load %struct.target_dir_entry*, %struct.target_dir_entry** %26, align 8
  %28 = bitcast %struct.target_dir_entry* %27 to %struct.target_file*
  store %struct.target_file* %28, %struct.target_file** %5, align 8
  %29 = icmp ne %struct.target_file* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.target_file*, %struct.target_file** %5, align 8
  %32 = getelementptr inbounds %struct.target_file, %struct.target_file* %31, i32 0, i32 4
  %33 = load %struct.target_file*, %struct.target_file** %32, align 8
  %34 = bitcast %struct.target_file* %33 to %struct.target_dir_entry*
  %35 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %36 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %35, i32 0, i32 5
  store %struct.target_dir_entry* %34, %struct.target_dir_entry** %36, align 8
  %37 = load %struct.target_file*, %struct.target_file** %5, align 8
  %38 = getelementptr inbounds %struct.target_file, %struct.target_file* %37, i32 0, i32 3
  %39 = load %struct.target_file*, %struct.target_file** %38, align 8
  %40 = call i32 @free(%struct.target_file* %39)
  %41 = load %struct.target_file*, %struct.target_file** %5, align 8
  %42 = getelementptr inbounds %struct.target_file, %struct.target_file* %41, i32 0, i32 2
  %43 = load %struct.target_file*, %struct.target_file** %42, align 8
  %44 = call i32 @free(%struct.target_file* %43)
  %45 = load %struct.target_file*, %struct.target_file** %5, align 8
  %46 = call i32 @free(%struct.target_file* %45)
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.target_dir_hash*, %struct.target_dir_hash** %3, align 8
  %49 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %50 = bitcast %struct.target_dir_entry* %49 to %struct.target_file*
  %51 = call i32 @delete_entry(%struct.target_dir_hash* %48, %struct.target_file* %50)
  %52 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %53 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %52, i32 0, i32 1
  %54 = load %struct.target_dir_entry*, %struct.target_dir_entry** %53, align 8
  %55 = bitcast %struct.target_dir_entry* %54 to %struct.target_file*
  %56 = call i32 @free(%struct.target_file* %55)
  %57 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %58 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %57, i32 0, i32 0
  %59 = load %struct.target_dir_entry*, %struct.target_dir_entry** %58, align 8
  %60 = bitcast %struct.target_dir_entry* %59 to %struct.target_file*
  %61 = call i32 @free(%struct.target_file* %60)
  ret void
}

declare dso_local i32 @free(%struct.target_file*) #1

declare dso_local i32 @delete_entry(%struct.target_dir_hash*, %struct.target_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
