; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_add_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_file = type { i8*, i8*, %struct.target_file* }
%struct.target_dir_hash = type { i32 }
%struct.target_dir_entry = type { %struct.target_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_file* @dir_hash_add_file(%struct.target_dir_hash* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.target_file*, align 8
  %5 = alloca %struct.target_dir_hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.target_file*, align 8
  %9 = alloca %struct.target_dir_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.target_dir_hash* %0, %struct.target_dir_hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @split_path(i8* %13, i8** %10, i8** %11)
  %15 = load i8*, i8** %11, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @free(i8* %21)
  store %struct.target_file* null, %struct.target_file** %4, align 8
  br label %53

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @normalize_dirname(i8* %26)
  %28 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call %struct.target_dir_entry* @dir_hash_create_dir(%struct.target_dir_hash* %28, i8* %29, i8* %30)
  store %struct.target_dir_entry* %31, %struct.target_dir_entry** %9, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @free(i8* %34)
  %36 = call %struct.target_file* @calloc(i32 1, i32 24)
  store %struct.target_file* %36, %struct.target_file** %8, align 8
  %37 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  %38 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %37, i32 0, i32 0
  %39 = load %struct.target_file*, %struct.target_file** %38, align 8
  %40 = load %struct.target_file*, %struct.target_file** %8, align 8
  %41 = getelementptr inbounds %struct.target_file, %struct.target_file* %40, i32 0, i32 2
  store %struct.target_file* %39, %struct.target_file** %41, align 8
  %42 = load %struct.target_file*, %struct.target_file** %8, align 8
  %43 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  %44 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %43, i32 0, i32 0
  store %struct.target_file* %42, %struct.target_file** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strdup(i8* %45)
  %47 = load %struct.target_file*, %struct.target_file** %8, align 8
  %48 = getelementptr inbounds %struct.target_file, %struct.target_file* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.target_file*, %struct.target_file** %8, align 8
  %51 = getelementptr inbounds %struct.target_file, %struct.target_file* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.target_file*, %struct.target_file** %8, align 8
  store %struct.target_file* %52, %struct.target_file** %4, align 8
  br label %53

53:                                               ; preds = %23, %18
  %54 = load %struct.target_file*, %struct.target_file** %4, align 8
  ret %struct.target_file* %54
}

declare dso_local i32 @split_path(i8*, i8**, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @normalize_dirname(i8*) #1

declare dso_local %struct.target_dir_entry* @dir_hash_create_dir(%struct.target_dir_hash*, i8*, i8*) #1

declare dso_local %struct.target_file* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
