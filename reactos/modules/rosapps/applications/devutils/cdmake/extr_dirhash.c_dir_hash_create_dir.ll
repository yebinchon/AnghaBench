; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_create_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_dirhash.c_dir_hash_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_dir_entry = type { i8*, i64, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_dir_entry*, i8*, %struct.target_dir_entry* }
%struct.target_dir_hash = type { %struct.target_dir_entry**, %struct.target_dir_entry }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NUM_DIR_HASH_BUCKETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_dir_entry* @dir_hash_create_dir(%struct.target_dir_hash* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.target_dir_entry*, align 8
  %5 = alloca %struct.target_dir_hash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.target_dir_entry*, align 8
  %9 = alloca %struct.target_dir_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.target_dir_entry**, align 8
  store %struct.target_dir_hash* %0, %struct.target_dir_hash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %15 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %3
  %20 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %22 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %22, i32 0, i32 5
  store i8* %20, i8** %23, align 8
  %24 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %26 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = call i8* @djb_hash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %31 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  %33 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %34 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %33, i32 0, i32 1
  %35 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %36 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %35, i32 0, i32 0
  %37 = load %struct.target_dir_entry**, %struct.target_dir_entry*** %36, align 8
  %38 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %39 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NUM_DIR_HASH_BUCKETS, align 8
  %43 = urem i64 %41, %42
  %44 = getelementptr inbounds %struct.target_dir_entry*, %struct.target_dir_entry** %37, i64 %43
  store %struct.target_dir_entry* %34, %struct.target_dir_entry** %44, align 8
  br label %45

45:                                               ; preds = %19, %3
  %46 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call %struct.target_dir_entry* @get_entry_by_normname(%struct.target_dir_hash* %46, i8* %47)
  store %struct.target_dir_entry* %48, %struct.target_dir_entry** %8, align 8
  %49 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %50 = icmp ne %struct.target_dir_entry* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  store %struct.target_dir_entry* %52, %struct.target_dir_entry** %4, align 8
  br label %119

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @split_path(i8* %54, i8** %10, i8** %11)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @split_path(i8* %56, i8** %12, i8** null)
  %58 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call %struct.target_dir_entry* @dir_hash_create_dir(%struct.target_dir_hash* %58, i8* %59, i8* %60)
  store %struct.target_dir_entry* %61, %struct.target_dir_entry** %9, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %53
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  store %struct.target_dir_entry* %72, %struct.target_dir_entry** %4, align 8
  br label %119

73:                                               ; preds = %53
  %74 = call %struct.target_dir_entry* @calloc(i32 1, i32 56)
  store %struct.target_dir_entry* %74, %struct.target_dir_entry** %8, align 8
  %75 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  %76 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %77 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %76, i32 0, i32 6
  store %struct.target_dir_entry* %75, %struct.target_dir_entry** %77, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @strdup(i8* %78)
  %80 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %81 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %84 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @djb_hash(i8* %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %89 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  %91 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %90, i32 0, i32 3
  %92 = load %struct.target_dir_entry*, %struct.target_dir_entry** %91, align 8
  %93 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %94 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %93, i32 0, i32 4
  store %struct.target_dir_entry* %92, %struct.target_dir_entry** %94, align 8
  %95 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %96 = load %struct.target_dir_entry*, %struct.target_dir_entry** %9, align 8
  %97 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %96, i32 0, i32 3
  store %struct.target_dir_entry* %95, %struct.target_dir_entry** %97, align 8
  %98 = load %struct.target_dir_hash*, %struct.target_dir_hash** %5, align 8
  %99 = getelementptr inbounds %struct.target_dir_hash, %struct.target_dir_hash* %98, i32 0, i32 0
  %100 = load %struct.target_dir_entry**, %struct.target_dir_entry*** %99, align 8
  %101 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %102 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NUM_DIR_HASH_BUCKETS, align 8
  %105 = urem i64 %103, %104
  %106 = getelementptr inbounds %struct.target_dir_entry*, %struct.target_dir_entry** %100, i64 %105
  store %struct.target_dir_entry** %106, %struct.target_dir_entry*** %13, align 8
  br label %107

107:                                              ; preds = %111, %73
  %108 = load %struct.target_dir_entry**, %struct.target_dir_entry*** %13, align 8
  %109 = load %struct.target_dir_entry*, %struct.target_dir_entry** %108, align 8
  %110 = icmp ne %struct.target_dir_entry* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.target_dir_entry**, %struct.target_dir_entry*** %13, align 8
  %113 = load %struct.target_dir_entry*, %struct.target_dir_entry** %112, align 8
  %114 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %113, i32 0, i32 2
  store %struct.target_dir_entry** %114, %struct.target_dir_entry*** %13, align 8
  br label %107

115:                                              ; preds = %107
  %116 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %117 = load %struct.target_dir_entry**, %struct.target_dir_entry*** %13, align 8
  store %struct.target_dir_entry* %116, %struct.target_dir_entry** %117, align 8
  %118 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  store %struct.target_dir_entry* %118, %struct.target_dir_entry** %4, align 8
  br label %119

119:                                              ; preds = %115, %69, %51
  %120 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  ret %struct.target_dir_entry* %120
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @djb_hash(i8*) #1

declare dso_local %struct.target_dir_entry* @get_entry_by_normname(%struct.target_dir_hash*, i8*) #1

declare dso_local i32 @split_path(i8*, i8**, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.target_dir_entry* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
