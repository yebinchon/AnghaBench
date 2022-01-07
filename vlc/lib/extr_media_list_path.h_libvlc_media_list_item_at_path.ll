; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_path.h_libvlc_media_list_item_at_path.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_path.h_libvlc_media_list_item_at_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @libvlc_media_list_item_at_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @libvlc_media_list_item_at_path(i32* %0, i32* %1) #0 {
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

10:                                               ; preds = %50, %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @libvlc_media_list_item_at_index(i32* %18, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @libvlc_media_list_release(i32* %29)
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %3, align 8
  br label %61

41:                                               ; preds = %31
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @libvlc_media_subitems(i32* %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @libvlc_media_release(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32* null, i32** %3, align 8
  br label %61

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @libvlc_media_list_release(i32* %58)
  br label %60

60:                                               ; preds = %57, %53
  store i32* null, i32** %3, align 8
  br label %61

61:                                               ; preds = %60, %48, %39
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local i32* @libvlc_media_list_item_at_index(i32*, i32) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32* @libvlc_media_subitems(i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
