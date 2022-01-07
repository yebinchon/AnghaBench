; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_select_view_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_select_view_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.position, i32*, %struct.TYPE_2__*, i32 }
%struct.position = type { i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.view*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @select_view_line(%struct.view* %0, i64 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.position, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 0
  %8 = bitcast %struct.position* %5 to i8*
  %9 = bitcast %struct.position* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.view*, %struct.view** %3, align 8
  %11 = load %struct.view*, %struct.view** %3, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.position, %struct.position* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @goto_view_line(%struct.view* %10, i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %2
  %19 = load %struct.view*, %struct.view** %3, align 8
  %20 = call i64 @view_is_displayed(%struct.view* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.position, %struct.position* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.position, %struct.position* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.view*, %struct.view** %3, align 8
  %32 = call i32 @redraw_view(%struct.view* %31)
  br label %58

33:                                               ; preds = %22
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.position, %struct.position* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.view*, %struct.view** %3, align 8
  %38 = getelementptr inbounds %struct.view, %struct.view* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.position, %struct.position* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %36, %40
  %42 = call i32 @draw_view_line(%struct.view* %34, i64 %41)
  %43 = load %struct.view*, %struct.view** %3, align 8
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.position, %struct.position* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.view*, %struct.view** %3, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.position, %struct.position* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %47, %51
  %53 = call i32 @draw_view_line(%struct.view* %43, i64 %52)
  %54 = load %struct.view*, %struct.view** %3, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wnoutrefresh(i32 %56)
  br label %58

58:                                               ; preds = %33, %30
  br label %75

59:                                               ; preds = %18
  %60 = load %struct.view*, %struct.view** %3, align 8
  %61 = getelementptr inbounds %struct.view, %struct.view* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.view*, i32*)*, i32 (%struct.view*, i32*)** %63, align 8
  %65 = load %struct.view*, %struct.view** %3, align 8
  %66 = load %struct.view*, %struct.view** %3, align 8
  %67 = getelementptr inbounds %struct.view, %struct.view* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.position, %struct.position* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = call i32 %64(%struct.view* %65, i32* %73)
  br label %75

75:                                               ; preds = %59, %58
  br label %76

76:                                               ; preds = %75, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @goto_view_line(%struct.view*, i64, i64) #2

declare dso_local i64 @view_is_displayed(%struct.view*) #2

declare dso_local i32 @redraw_view(%struct.view*) #2

declare dso_local i32 @draw_view_line(%struct.view*, i64) #2

declare dso_local i32 @wnoutrefresh(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
