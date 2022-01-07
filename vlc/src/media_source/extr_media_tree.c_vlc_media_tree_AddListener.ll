; ModuleID = '/home/carl/AnghaBench/vlc/src/media_source/extr_media_tree.c_vlc_media_tree_AddListener.c'
source_filename = "/home/carl/AnghaBench/vlc/src/media_source/extr_media_tree.c_vlc_media_tree_AddListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, %struct.vlc_media_tree_callbacks* }
%struct.vlc_media_tree_callbacks = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @vlc_media_tree_AddListener(i32* %0, %struct.vlc_media_tree_callbacks* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_media_tree_callbacks*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.vlc_media_tree_callbacks* %1, %struct.vlc_media_tree_callbacks** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.TYPE_7__* @malloc(i32 24)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %46

20:                                               ; preds = %4
  %21 = load %struct.vlc_media_tree_callbacks*, %struct.vlc_media_tree_callbacks** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store %struct.vlc_media_tree_callbacks* %21, %struct.vlc_media_tree_callbacks** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.TYPE_8__* @mt_priv(i32* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %11, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @vlc_media_tree_Lock(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @vlc_list_append(i32* %32, i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = call i32 @vlc_media_tree_NotifyCurrentState(i32* %39, %struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %38, %20
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @vlc_media_tree_Unlock(i32* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %5, align 8
  br label %46

46:                                               ; preds = %42, %19
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @mt_priv(i32*) #1

declare dso_local i32 @vlc_media_tree_Lock(i32*) #1

declare dso_local i32 @vlc_list_append(i32*, i32*) #1

declare dso_local i32 @vlc_media_tree_NotifyCurrentState(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_media_tree_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
