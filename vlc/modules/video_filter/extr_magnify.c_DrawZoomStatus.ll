; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_magnify.c_DrawZoomStatus.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_magnify.c_DrawZoomStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DrawZoomStatus.p_hide = internal global i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [251 x i8] c"X   X XXXXX XXXX  XXXXX   XXXXX  XXX   XXX  XX XXLX   X   X   X   X X          X  X   X X   X X X XLXXXXX   X   X   X XXXX      X   X   X X   X X   XLX   X   X   X   X X        X    X   X X   X X   XLX   X XXXXX XXXX  XXXXX   XXXXX  XXX   XXX  X   XL\00", align 1
@DrawZoomStatus.p_show = internal global i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [251 x i8] c" XXXX X   X  XXX  X   X   XXXXX  XXX   XXX  XX XXLX     X   X X   X X   X      X  X   X X   X X X XL XXX  XXXXX X   X X X X     X   X   X X   X X   XL    X X   X X   X X X X    X    X   X X   X X   XLXXXX  X   X  XXX   X X    XXXXX  XXX   XXX  X   XL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32)* @DrawZoomStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawZoomStatus(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i8*, i8** @DrawZoomStatus.p_hide, align 8
  br label %25

23:                                               ; preds = %7
  %24 = load i8*, i8** @DrawZoomStatus.p_show, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %22, %21 ], [ %24, %23 ]
  store i8* %26, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %18, align 4
  br label %29

29:                                               ; preds = %91, %25
  %30 = load i8*, i8** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %94

37:                                               ; preds = %29
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 88
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  store i32 255, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %49, %45
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %90

65:                                               ; preds = %37
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %89

76:                                               ; preds = %65
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 76
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %84, %76
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %29

94:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
