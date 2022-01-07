; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_clear_nosync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_clear_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.mod_hash_entry** }
%struct.TYPE_6__ = type { i64 }
%struct.mod_hash_entry = type { %struct.mod_hash_entry*, i32, i32 }

@mh_e_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_mod_hash_clear_nosync(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mod_hash_entry*, align 8
  %5 = alloca %struct.mod_hash_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %15, i64 %17
  %19 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %18, align 8
  store %struct.mod_hash_entry* %19, %struct.mod_hash_entry** %4, align 8
  br label %20

20:                                               ; preds = %23, %12
  %21 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %4, align 8
  %22 = icmp ne %struct.mod_hash_entry* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %4, align 8
  %26 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MH_KEY_DESTROY(%struct.TYPE_7__* %24, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %4, align 8
  %31 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MH_VAL_DESTROY(%struct.TYPE_7__* %29, i32 %32)
  %34 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %4, align 8
  store %struct.mod_hash_entry* %34, %struct.mod_hash_entry** %5, align 8
  %35 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %4, align 8
  %36 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %35, i32 0, i32 0
  %37 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %36, align 8
  store %struct.mod_hash_entry* %37, %struct.mod_hash_entry** %4, align 8
  %38 = load i32, i32* @mh_e_cache, align 4
  %39 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %5, align 8
  %40 = call i32 @kmem_cache_free(i32 %38, %struct.mod_hash_entry* %39)
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %44, i64 %46
  store %struct.mod_hash_entry* null, %struct.mod_hash_entry** %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %6

51:                                               ; preds = %6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @MH_KEY_DESTROY(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MH_VAL_DESTROY(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mod_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
