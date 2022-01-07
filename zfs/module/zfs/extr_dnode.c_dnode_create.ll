; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_16__*, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_17__*, i32*, i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }

@dnode_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4
@ARC_SPACE_DNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32, %struct.TYPE_17__*)* @dnode_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @dnode_create(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32* %2, i32 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %10, align 8
  %12 = load i32, i32* @dnode_cache, align 4
  %13 = load i32, i32* @KM_SLEEP, align 4
  %14 = call %struct.TYPE_15__* @kmem_cache_alloc(i32 %12, i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %11, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 21
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 20
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 19
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 18
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %5
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @dnode_setdblksz(%struct.TYPE_15__* %34, i32 %39)
  br label %48

41:                                               ; preds = %5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 17
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 16
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 15
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %33
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %114 = call i32 @dmu_zfetch_init(i32* %112, %struct.TYPE_15__* %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @DMU_OT_IS_VALID(i32 %119)
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = call i32 @zrl_is_locked(i32* %123)
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = call i32 @DN_SLOT_IS_PTR(%struct.TYPE_15__* %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = call i32 @mutex_enter(i32* %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @DMU_OBJECT_IS_SPECIAL(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %48
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %144 = call i32 @list_insert_head(i32* %142, %struct.TYPE_15__* %143)
  br label %145

145:                                              ; preds = %140, %48
  %146 = call i32 (...) @membar_producer()
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = call i32 @mutex_exit(i32* %154)
  %156 = load i32, i32* @ARC_SPACE_DNODE, align 4
  %157 = call i32 @arc_space_consume(i32 144, i32 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  ret %struct.TYPE_15__* %158
}

declare dso_local %struct.TYPE_15__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @dnode_setdblksz(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dmu_zfetch_init(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DMU_OT_IS_VALID(i32) #1

declare dso_local i32 @zrl_is_locked(i32*) #1

declare dso_local i32 @DN_SLOT_IS_PTR(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @DMU_OBJECT_IS_SPECIAL(i32) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @membar_producer(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @arc_space_consume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
