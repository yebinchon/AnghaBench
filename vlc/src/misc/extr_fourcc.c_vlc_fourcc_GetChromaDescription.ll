; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_vlc_fourcc_GetChromaDescription.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_fourcc.c_vlc_fourcc_GetChromaDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@p_list_chroma_description = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_fourcc_GetChromaDescription(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_list_chroma_description, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_list_chroma_description, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %51, %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i1 [ false, %24 ], [ %33, %27 ]
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_list_chroma_description, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* %49, i32** %2, align 8
  br label %59

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %24

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %7

58:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
