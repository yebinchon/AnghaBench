; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_ODGetURL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_ODGetURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32**)* @ODGetURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ODGetURL(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @ODGetBytes(i32* %7, i32** %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @strndup(i8* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %24, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %6, align 8
  ret i8* %32
}

declare dso_local i32 @ODGetBytes(i32*, i32**, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
