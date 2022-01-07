; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_insert_nosync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_insert_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.mod_hash_entry**, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mod_hash_entry = type { %struct.mod_hash_entry*, i32, i32 }

@mh_e_cache = common dso_local global i32 0, align 4
@MH_ERR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_mod_hash_insert_nosync(%struct.TYPE_7__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mod_hash_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call i32 @ASSERT(%struct.TYPE_7__* %12)
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load i32, i32* @mh_e_cache, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mod_hash_entry* @kmem_cache_alloc(i32 %17, i32 %20)
  store %struct.mod_hash_entry* %21, %struct.mod_hash_entry** %11, align 8
  %22 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %11, align 8
  %23 = icmp eq %struct.mod_hash_entry* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @MH_ERR_NOMEM, align 4
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %16
  br label %35

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %33 to %struct.mod_hash_entry*
  store %struct.mod_hash_entry* %34, %struct.mod_hash_entry** %11, align 8
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @i_mod_hash(%struct.TYPE_7__* %36, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %11, align 8
  %41 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %11, align 8
  %44 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %47, i64 %48
  %50 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %49, align 8
  %51 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %11, align 8
  %52 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %51, i32 0, i32 0
  store %struct.mod_hash_entry* %50, %struct.mod_hash_entry** %52, align 8
  %53 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %56, i64 %57
  store %struct.mod_hash_entry* %53, %struct.mod_hash_entry** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %35, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ASSERT(%struct.TYPE_7__*) #1

declare dso_local %struct.mod_hash_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @i_mod_hash(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
