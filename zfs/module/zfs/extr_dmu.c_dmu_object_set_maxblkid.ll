; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_object_set_maxblkid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_object_set_maxblkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_object_set_maxblkid(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @FTAG, align 4
  %15 = call i32 @dnode_hold(i32* %12, i32 %13, i32 %14, %struct.TYPE_5__** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* @RW_WRITER, align 4
  %24 = call i32 @rw_enter(i32* %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = load i32, i32* @B_TRUE, align 4
  %30 = call i32 @dnode_new_blkid(%struct.TYPE_5__* %25, i32 %26, i32* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @rw_exit(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @dnode_rele(%struct.TYPE_5__* %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %20, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dnode_new_blkid(%struct.TYPE_5__*, i32, i32*, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
