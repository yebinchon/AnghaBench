; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_list_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_list_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @print_pool(i32* %10, %struct.TYPE_4__* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @zpool_get_config(i32* %18, i32* null)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %22 = call i64 @nvlist_lookup_nvlist(i32* %20, i32 %21, i32** %7)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @verify(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call i32 @print_list_stats(i32* %26, i32* null, i32* %27, %struct.TYPE_4__* %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local i32 @print_pool(i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @print_list_stats(i32*, i32*, i32*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
