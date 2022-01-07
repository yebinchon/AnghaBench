; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_remove_nosync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/os/extr_modhash.c_i_mod_hash_remove_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.mod_hash_entry** }
%struct.TYPE_7__ = type { i32 }
%struct.mod_hash_entry = type { i32, i32, %struct.mod_hash_entry* }

@MH_ERR_NOTFOUND = common dso_local global i32 0, align 4
@mh_e_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_mod_hash_remove_nosync(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mod_hash_entry*, align 8
  %10 = alloca %struct.mod_hash_entry*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @i_mod_hash(%struct.TYPE_8__* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  store %struct.mod_hash_entry* null, %struct.mod_hash_entry** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %16, i64 %18
  %20 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %19, align 8
  store %struct.mod_hash_entry* %20, %struct.mod_hash_entry** %9, align 8
  br label %21

21:                                               ; preds = %35, %3
  %22 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %23 = icmp ne %struct.mod_hash_entry* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %27 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @MH_KEYCMP(%struct.TYPE_8__* %25, i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  store %struct.mod_hash_entry* %34, %struct.mod_hash_entry** %10, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %37 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %36, i32 0, i32 2
  %38 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %37, align 8
  store %struct.mod_hash_entry* %38, %struct.mod_hash_entry** %9, align 8
  br label %21

39:                                               ; preds = %32, %21
  %40 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %41 = icmp eq %struct.mod_hash_entry* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @MH_ERR_NOTFOUND, align 4
  store i32 %43, i32* %4, align 4
  br label %81

44:                                               ; preds = %39
  %45 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %10, align 8
  %46 = icmp eq %struct.mod_hash_entry* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %49 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %48, i32 0, i32 2
  %50 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.mod_hash_entry**, %struct.mod_hash_entry*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mod_hash_entry*, %struct.mod_hash_entry** %53, i64 %55
  store %struct.mod_hash_entry* %50, %struct.mod_hash_entry** %56, align 8
  br label %63

57:                                               ; preds = %44
  %58 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %59 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %58, i32 0, i32 2
  %60 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %59, align 8
  %61 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %10, align 8
  %62 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %61, i32 0, i32 2
  store %struct.mod_hash_entry* %60, %struct.mod_hash_entry** %62, align 8
  br label %63

63:                                               ; preds = %57, %47
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %66 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MH_KEY_DESTROY(%struct.TYPE_8__* %64, i32 %67)
  %69 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %70 = getelementptr inbounds %struct.mod_hash_entry, %struct.mod_hash_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @mh_e_cache, align 4
  %74 = load %struct.mod_hash_entry*, %struct.mod_hash_entry** %9, align 8
  %75 = call i32 @kmem_cache_free(i32 %73, %struct.mod_hash_entry* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %63, %42
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @i_mod_hash(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @MH_KEYCMP(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MH_KEY_DESTROY(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mod_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
