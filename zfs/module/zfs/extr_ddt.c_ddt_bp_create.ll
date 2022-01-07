; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_bp_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_bp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@DMU_OT_DEDUP = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddt_bp_create(i32 %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %8, align 8
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %10 = call i32 @BP_ZERO(%struct.TYPE_26__* %9)
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %12 = icmp ne %struct.TYPE_24__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ddt_bp_fill(%struct.TYPE_24__* %14, %struct.TYPE_26__* %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = call i32 @DDK_GET_LSIZE(%struct.TYPE_25__* %27)
  %29 = call i32 @BP_SET_LSIZE(%struct.TYPE_26__* %26, i32 %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = call i32 @DDK_GET_PSIZE(%struct.TYPE_25__* %31)
  %33 = call i32 @BP_SET_PSIZE(%struct.TYPE_26__* %30, i32 %32)
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = call i32 @DDK_GET_COMPRESS(%struct.TYPE_25__* %35)
  %37 = call i32 @BP_SET_COMPRESS(%struct.TYPE_26__* %34, i32 %36)
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = call i32 @DDK_GET_CRYPT(%struct.TYPE_25__* %39)
  %41 = call i32 @BP_SET_CRYPT(%struct.TYPE_26__* %38, i32 %40)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %43 = call i32 @BP_SET_FILL(%struct.TYPE_26__* %42, i32 1)
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BP_SET_CHECKSUM(%struct.TYPE_26__* %44, i32 %45)
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %48 = load i32, i32* @DMU_OT_DEDUP, align 4
  %49 = call i32 @BP_SET_TYPE(%struct.TYPE_26__* %47, i32 %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %51 = call i32 @BP_SET_LEVEL(%struct.TYPE_26__* %50, i32 0)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %53 = call i32 @BP_SET_DEDUP(%struct.TYPE_26__* %52, i32 1)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %55 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %56 = call i32 @BP_SET_BYTEORDER(%struct.TYPE_26__* %54, i32 %55)
  ret void
}

declare dso_local i32 @BP_ZERO(%struct.TYPE_26__*) #1

declare dso_local i32 @ddt_bp_fill(%struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_LSIZE(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DDK_GET_LSIZE(%struct.TYPE_25__*) #1

declare dso_local i32 @BP_SET_PSIZE(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DDK_GET_PSIZE(%struct.TYPE_25__*) #1

declare dso_local i32 @BP_SET_COMPRESS(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DDK_GET_COMPRESS(%struct.TYPE_25__*) #1

declare dso_local i32 @BP_SET_CRYPT(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DDK_GET_CRYPT(%struct.TYPE_25__*) #1

declare dso_local i32 @BP_SET_FILL(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_CHECKSUM(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_TYPE(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_LEVEL(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_DEDUP(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @BP_SET_BYTEORDER(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
