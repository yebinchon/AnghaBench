; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list.c_libvlc_media_list_internal_remove_index.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list.c_libvlc_media_list_internal_remove_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Index out of bounds\00", align 1
@EventWillHappen = common dso_local global i32 0, align 4
@EventDidHappen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_list_internal_remove_index(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i64 @vlc_array_count(i32* %10)
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @vlc_array_item_at_index(i32* %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EventWillHappen, align 4
  %24 = call i32 @notify_item_deletion(%struct.TYPE_4__* %20, i32* %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @vlc_array_remove(i32* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EventDidHappen, align 4
  %33 = call i32 @notify_item_deletion(%struct.TYPE_4__* %29, i32* %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @libvlc_media_release(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32* @vlc_array_item_at_index(i32*, i32) #1

declare dso_local i32 @notify_item_deletion(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @vlc_array_remove(i32*, i32) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
