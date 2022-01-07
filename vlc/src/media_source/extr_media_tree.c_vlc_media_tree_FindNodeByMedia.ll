; ModuleID = '/home/carl/AnghaBench/vlc/src/media_source/extr_media_tree.c_vlc_media_tree_FindNodeByMedia.c'
source_filename = "/home/carl/AnghaBench/vlc/src/media_source/extr_media_tree.c_vlc_media_tree_FindNodeByMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, %struct.TYPE_5__**, %struct.TYPE_5__**)* @vlc_media_tree_FindNodeByMedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_media_tree_FindNodeByMedia(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_5__** %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %35 = icmp ne %struct.TYPE_5__** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  store i32 1, i32* %5, align 4
  br label %53

40:                                               ; preds = %18
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %45 = call i32 @vlc_media_tree_FindNodeByMedia(%struct.TYPE_5__* %41, i32* %42, %struct.TYPE_5__** %43, %struct.TYPE_5__** %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %12

52:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
