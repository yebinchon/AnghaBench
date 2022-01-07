; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_init_raidz_golden_map.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_init_raidz_golden_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32 }

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"initializing the golden copy ... [FAIL]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @init_raidz_golden_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_raidz_golden_map(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = call i32 @fini_raidz_map(%struct.TYPE_15__** %21, %struct.TYPE_15__** %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @UMEM_NOFAIL, align 4
  %27 = call i8* @umem_zalloc(i32 16, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_15__*
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %30, align 8
  %31 = load i32, i32* @UMEM_NOFAIL, align 4
  %32 = call i8* @umem_zalloc(i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  store i32 %36, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  store i32 %45, i32* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @raidz_alloc(i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @raidz_alloc(i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = call i32 @init_zio_abd(%struct.TYPE_15__* %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = call i32 @init_zio_abd(%struct.TYPE_15__* %70)
  %72 = call i32 @vdev_raidz_impl_set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @VERIFY0(i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i8* @vdev_raidz_map_alloc(%struct.TYPE_15__* %76, i32 %79, i64 %80, i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_15__*
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i8* @vdev_raidz_map_alloc(%struct.TYPE_15__* %86, i32 %89, i64 %90, i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %7, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = call i32 @VERIFY(%struct.TYPE_15__* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = call i32 @VERIFY(%struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = call i32 @vdev_raidz_generate_parity(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = call i32 @vdev_raidz_generate_parity(%struct.TYPE_15__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = call i32 @cmp_data(%struct.TYPE_16__* %108, %struct.TYPE_15__* %109)
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @cmp_code(%struct.TYPE_16__* %113, %struct.TYPE_15__* %114, i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %25
  %122 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %25
  %124 = call i32 @fini_raidz_map(%struct.TYPE_15__** %6, %struct.TYPE_15__** %7)
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @fini_raidz_map(%struct.TYPE_15__**, %struct.TYPE_15__**) #1

declare dso_local i8* @umem_zalloc(i32, i32) #1

declare dso_local i8* @raidz_alloc(i32) #1

declare dso_local i32 @init_zio_abd(%struct.TYPE_15__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @vdev_raidz_impl_set(i8*) #1

declare dso_local i8* @vdev_raidz_map_alloc(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @VERIFY(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_raidz_generate_parity(%struct.TYPE_15__*) #1

declare dso_local i32 @cmp_data(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @cmp_code(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
