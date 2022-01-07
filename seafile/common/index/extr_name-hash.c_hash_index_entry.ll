; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_name-hash.c_hash_index_entry.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_name-hash.c_hash_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32*, i32 }

@CE_HASHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.cache_entry*)* @hash_index_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_index_entry(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %7 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CE_HASHED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* @CE_HASHED, align 4
  %16 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %26 = call i32 @ce_namelen(%struct.cache_entry* %25)
  %27 = call i32 @hash_name(i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %30 = load %struct.index_state*, %struct.index_state** %3, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = call i8** @insert_hash(i32 %28, %struct.cache_entry* %29, i32* %31)
  store i8** %32, i8*** %5, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %14
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %42 = bitcast %struct.cache_entry* %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %13, %35, %14
  ret void
}

declare dso_local i32 @hash_name(i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i8** @insert_hash(i32, %struct.cache_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
