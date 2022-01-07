; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_cache_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_cache_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@sdata = common dso_local global i64 0, align 8
@head_rect = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_rect(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* @sdata, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @draw_cursor()
  br label %79

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = call i32 @warp_coords(i32* %6, i32* %7, i32* %8, i32* %9, i32* null, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %79

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %17
  %26 = call i64 @xmalloc(i32 32)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @head_rect, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** @head_rect, align 8
  br label %79

48:                                               ; preds = %25
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  br label %49

49:                                               ; preds = %67, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = icmp eq %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @head_rect, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %12, align 8
  br label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %12, align 8
  br label %58

58:                                               ; preds = %54, %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = call i64 @is_contained_by(%struct.TYPE_6__* %59, %struct.TYPE_6__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = call i32 @xfree(%struct.TYPE_6__* %64)
  br label %79

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %49, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %78, align 8
  br label %79

79:                                               ; preds = %15, %23, %63, %72, %46
  ret void
}

declare dso_local i32 @draw_cursor(...) #1

declare dso_local i32 @warp_coords(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @is_contained_by(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @xfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
