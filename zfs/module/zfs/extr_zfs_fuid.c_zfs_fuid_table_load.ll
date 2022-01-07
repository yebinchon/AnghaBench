; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fuid.c_zfs_fuid_table_load.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_fuid.c_zfs_fuid_table_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }

@FTAG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@FUID_NVP_ARRAY = common dso_local global i32 0, align 4
@FUID_DOMAIN = common dso_local global i32 0, align 4
@FUID_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfs_fuid_table_load(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i64 @dmu_bonus_hold(i32* %23, i64 %24, i32 %25, %struct.TYPE_7__** %9)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dmu_buf_rele(%struct.TYPE_7__* %35, i32 %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %116

40:                                               ; preds = %4
  store i32* null, i32** %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @KM_SLEEP, align 4
  %44 = call i8* @kmem_alloc(i32 %42, i32 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %50 = call i64 @dmu_read(i32* %45, i64 %46, i32 0, i64 %47, i8* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @nvlist_unpack(i8* %54, i64 %55, i32** %12, i32 0)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @FUID_NVP_ARRAY, align 4
  %62 = call i64 @nvlist_lookup_nvlist_array(i32* %60, i32 %61, i32*** %11, i32* %13)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @VERIFY(i32 %64)
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %107, %40
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load i32**, i32*** %11, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @FUID_DOMAIN, align 4
  %77 = call i64 @nvlist_lookup_string(i32* %75, i32 %76, i8** %17)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @VERIFY(i32 %79)
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @FUID_IDX, align 4
  %87 = call i64 @nvlist_lookup_uint64(i32* %85, i32 %86, i64* %18)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @VERIFY(i32 %89)
  %91 = load i32, i32* @KM_SLEEP, align 4
  %92 = call i8* @kmem_alloc(i32 16, i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %16, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @ksid_lookupdomain(i8* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = call i32 @avl_add(i32* %101, %struct.TYPE_6__* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %106 = call i32 @avl_add(i32* %104, %struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %70
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %66

110:                                              ; preds = %66
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @nvlist_free(i32* %111)
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @kmem_free(i8* %113, i64 %114)
  br label %116

116:                                              ; preds = %110, %4
  %117 = load i64, i64* %10, align 8
  ret i64 %117
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dmu_bonus_hold(i32*, i64, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i64 @dmu_read(i32*, i64, i32, i64, i8*, i32) #1

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @ksid_lookupdomain(i8*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
