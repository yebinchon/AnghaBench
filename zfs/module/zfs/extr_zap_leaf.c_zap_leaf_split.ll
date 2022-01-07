; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_leaf.c_zap_leaf_split.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_leaf.c_zap_leaf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zap_leaf_entry = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CHAIN_END = common dso_local global i32 0, align 4
@ZLF_ENTRIES_CDSORTED = common dso_local global i32 0, align 4
@ZAP_CHUNK_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zap_leaf_split(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zap_leaf_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 63, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 1
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CHAIN_END, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ZAP_LEAF_HASH_NUMENTRIES(i32* %52)
  %54 = mul nsw i32 2, %53
  %55 = call i32 @zap_memset(i32 %50, i32 %51, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %3
  %59 = load i32, i32* @ZLF_ENTRIES_CDSORTED, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call %struct.TYPE_4__* @zap_leaf_phys(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %3
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @ZAP_LEAF_NUMCHUNKS(i32* %69)
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %67
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32* %73, i32 %74)
  store %struct.zap_leaf_entry* %75, %struct.zap_leaf_entry** %9, align 8
  %76 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %9, align 8
  %77 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ZAP_CHUNK_ENTRY, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %101

82:                                               ; preds = %72
  %83 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %9, align 8
  %84 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 1, %87
  %89 = and i64 %85, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @zap_leaf_transfer_entry(i32* %92, i32 %93, i32* %94)
  br label %100

96:                                               ; preds = %82
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @zap_leaf_rehash_entry(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  br label %101

101:                                              ; preds = %100, %81
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %67

104:                                              ; preds = %67
  ret void
}

declare dso_local %struct.TYPE_4__* @zap_leaf_phys(i32*) #1

declare dso_local i32 @zap_memset(i32, i32, i32) #1

declare dso_local i32 @ZAP_LEAF_HASH_NUMENTRIES(i32*) #1

declare dso_local i32 @ZAP_LEAF_NUMCHUNKS(i32*) #1

declare dso_local %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32*, i32) #1

declare dso_local i32 @zap_leaf_transfer_entry(i32*, i32, i32*) #1

declare dso_local i32 @zap_leaf_rehash_entry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
