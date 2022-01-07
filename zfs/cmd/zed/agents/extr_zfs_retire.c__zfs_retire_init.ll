; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c__zfs_retire_init.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c__zfs_retire_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@FMD_API_VERSION = common dso_local global i32 0, align 4
@fmd_info = common dso_local global i32 0, align 4
@FMD_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zfs_retire_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32* (...) @libzfs_init()
  store i32* %5, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @FMD_API_VERSION, align 4
  %11 = call i64 @fmd_hdl_register(i32* %9, i32 %10, i32* @fmd_info)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @libzfs_fini(i32* %14)
  br label %26

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @FMD_SLEEP, align 4
  %19 = call %struct.TYPE_4__* @fmd_hdl_zalloc(i32* %17, i32 8, i32 %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = call i32 @fmd_hdl_setspecific(i32* %23, %struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %16, %13, %7
  ret void
}

declare dso_local i32* @libzfs_init(...) #1

declare dso_local i64 @fmd_hdl_register(i32*, i32, i32*) #1

declare dso_local i32 @libzfs_fini(i32*) #1

declare dso_local %struct.TYPE_4__* @fmd_hdl_zalloc(i32*, i32, i32) #1

declare dso_local i32 @fmd_hdl_setspecific(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
