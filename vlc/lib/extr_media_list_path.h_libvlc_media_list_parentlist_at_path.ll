; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_path.h_libvlc_media_list_parentlist_at_path.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_path.h_libvlc_media_list_parentlist_at_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @libvlc_media_list_parentlist_at_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @libvlc_media_list_parentlist_at_path(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %52, %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @libvlc_media_list_release(i32* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @libvlc_media_list_retain(i32* %33)
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %3, align 8
  br label %63

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @libvlc_media_list_item_at_index(i32* %37, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @libvlc_media_subitems(i32* %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @libvlc_media_release(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %63

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @libvlc_media_list_release(i32* %60)
  br label %62

62:                                               ; preds = %59, %55
  store i32* null, i32** %3, align 8
  br label %63

63:                                               ; preds = %62, %50, %32
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32 @libvlc_media_list_retain(i32*) #1

declare dso_local i32* @libvlc_media_list_item_at_index(i32*, i32) #1

declare dso_local i32* @libvlc_media_subitems(i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
