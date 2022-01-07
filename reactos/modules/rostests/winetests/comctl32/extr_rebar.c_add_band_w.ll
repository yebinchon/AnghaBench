; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_add_band_w.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_add_band_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@REBARBANDINFOA_V6_SIZE = common dso_local global i32 0, align 4
@RBBIM_SIZE = common dso_local global i32 0, align 4
@RBBIM_CHILDSIZE = common dso_local global i32 0, align 4
@RBBIM_CHILD = common dso_local global i32 0, align 4
@RBBIM_IDEALSIZE = common dso_local global i32 0, align 4
@RBBIM_TEXT = common dso_local global i32 0, align 4
@RB_INSERTBANDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32)* @add_band_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_band_w(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @strcpy(i32* %17, i32* %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @REBARBANDINFOA_V6_SIZE, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @RBBIM_SIZE, align 4
  %27 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RBBIM_CHILD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RBBIM_IDEALSIZE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RBBIM_TEXT, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 20, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @build_toolbar(i32 1, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %50

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i32* [ %17, %48 ], [ null, %49 ]
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RB_INSERTBANDA, align 4
  %55 = ptrtoint %struct.TYPE_2__* %13 to i32
  %56 = call i32 @SendMessageA(i32 %53, i32 %54, i32 -1, i32 %55)
  %57 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i32*, i32*) #2

declare dso_local i32 @build_toolbar(i32, i32) #2

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
