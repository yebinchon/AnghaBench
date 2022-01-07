; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_GetImage.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_GetImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_TYPEMASK = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@IMAGE_CURSOR = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@IMAGE_ENHMETAFILE = common dso_local global i32 0, align 4
@HICON_GWL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @STATIC_GetImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @STATIC_GetImage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SS_TYPEMASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %33 [
    i32 128, label %11
    i32 130, label %21
    i32 129, label %27
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IMAGE_ICON, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IMAGE_CURSOR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %40

20:                                               ; preds = %15, %11
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IMAGE_BITMAP, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %40

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IMAGE_ENHMETAFILE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %40

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %40

34:                                               ; preds = %32, %26, %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @HICON_GWL_OFFSET, align 4
  %37 = call i32 @GetWindowLongPtrW(i32 %35, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %34, %33, %31, %25, %19
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
