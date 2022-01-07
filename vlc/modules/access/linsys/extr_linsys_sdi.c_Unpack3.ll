; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_Unpack3.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_Unpack3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U = common dso_local global i32 0, align 4
@Y1 = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@Y2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32*)* @Unpack3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Unpack3(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %11, align 8
  br label %17

17:                                               ; preds = %21, %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @U, align 4
  %25 = add nsw i32 %24, 2
  %26 = mul nsw i32 3, %25
  %27 = sdiv i32 %26, 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sdiv i32 %30, 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32, i32* @Y1, align 4
  %35 = add nsw i32 %34, 2
  %36 = sdiv i32 %35, 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @V, align 4
  %42 = add nsw i32 %41, 2
  %43 = mul nsw i32 3, %42
  %44 = sdiv i32 %43, 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %47, 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* @Y2, align 4
  %52 = add nsw i32 %51, 2
  %53 = sdiv i32 %52, 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32* %57, i32** %6, align 8
  br label %17

58:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
