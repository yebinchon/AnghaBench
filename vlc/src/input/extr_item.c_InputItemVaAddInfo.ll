; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_InputItemVaAddInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_InputItemVaAddInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i8*, i32)* @InputItemVaAddInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InputItemVaAddInfo(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = call i32 @vlc_mutex_assert(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32* @InputItemFindCat(%struct.TYPE_6__* %17, i32* null, i8* %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = call i32* @info_category_New(i8* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %6, align 4
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @TAB_APPEND(i32 %32, i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %29, %5
  %39 = load i32*, i32** %12, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.TYPE_7__* @info_category_VaAddInfo(i32* %39, i8* %40, i8* %41, i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %13, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %51, %27
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @vlc_mutex_assert(i32*) #1

declare dso_local i32* @InputItemFindCat(%struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i32* @info_category_New(i8*) #1

declare dso_local i32 @TAB_APPEND(i32, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @info_category_VaAddInfo(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
