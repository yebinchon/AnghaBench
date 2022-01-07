; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_new_as_node.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_new_as_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPUT_ITEM_URI_NOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @libvlc_media_new_as_node(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @INPUT_ITEM_URI_NOP, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @input_item_New(i32 %9, i8* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @libvlc_media_new_from_input_item(i32* %17, i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @input_item_Release(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @media_get_subitems(i32* %22, i32 1)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @libvlc_media_release(i32* %27)
  store i32* null, i32** %3, align 8
  br label %31

29:                                               ; preds = %16
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %29, %26, %14
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local i32* @input_item_New(i32, i8*) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32* @libvlc_media_new_from_input_item(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32* @media_get_subitems(i32*, i32) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
