; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_UnrollTIFFLab16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_UnrollTIFFLab16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmstransform_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cmstransform_struct*, i32*, i8*, %struct._cmstransform_struct*)* @UnrollTIFFLab16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UnrollTIFFLab16(i32 %0, %struct._cmstransform_struct* %1, i32* %2, i8* %3, %struct._cmstransform_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._cmstransform_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._cmstransform_struct*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cmstransform_struct* %1, %struct._cmstransform_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct._cmstransform_struct* %4, %struct._cmstransform_struct** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FromLabV2ToLabV4(i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 32512
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 32768
  br label %34

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 32768
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %28, %24 ], [ %33, %29 ]
  %36 = call i32 @FromLabV2ToLabV4(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 32512
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 32768
  br label %53

48:                                               ; preds = %34
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 32768
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  %55 = call i32 @FromLabV2ToLabV4(i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 12
  ret i8* %59
}

declare dso_local i32 @FromLabV2ToLabV4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
