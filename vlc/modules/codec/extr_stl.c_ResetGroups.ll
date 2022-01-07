; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ResetGroups.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_ResetGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i8*, i8*, i32*, i32*, i32** }

@STL_GROUPS_MAX = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ResetGroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetGroups(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @STL_GROUPS_MAX, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @text_segment_ChainDelete(i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  store i32** %27, i32*** %29, align 8
  br label %30

30:                                               ; preds = %19, %9
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @text_style_Delete(i32* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %5

56:                                               ; preds = %5
  ret void
}

declare dso_local i32 @text_segment_ChainDelete(i32*) #1

declare dso_local i32 @text_style_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
