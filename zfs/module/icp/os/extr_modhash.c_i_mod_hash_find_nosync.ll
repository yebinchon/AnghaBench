; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_find_nosync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_find_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.mod_hash_entry** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mod_hash_entry = type { i32, i32, %struct.mod_hash_entry* }

@MH_ERR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_mod_hash_find_nosync(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mod_hash_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @i_mod_hash(%struct.TYPE_7__* %10, i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %15, i64 %16
  %18 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %17, align 8
  store %struct.mod_hash_entry* %18, %struct.mod_hash_entry** %9, align 8
  br label %19

19:                                               ; preds = %41, %3
  %20 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %21 = icmp ne %struct.mod_hash_entry* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %25 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @MH_KEYCMP(%struct.TYPE_7__* %23, i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %32 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %43 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %42, i32 0, i32 2
  %44 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %43, align 8
  store %struct.mod_hash_entry* %44, %struct.mod_hash_entry** %9, align 8
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @MH_ERR_NOTFOUND, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %30
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @i_mod_hash(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @MH_KEYCMP(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
