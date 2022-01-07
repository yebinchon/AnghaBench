; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_update_size.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_update_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.sway_container* }
%struct.sway_container = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_update_size(%struct.sway_view* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_container*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %9 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %8, i32 0, i32 0
  %10 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  store %struct.sway_container* %10, %struct.sway_container** %7, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %12 = call i64 @container_is_floating(%struct.sway_container* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %30 = call i32 @container_set_geometry_from_content(%struct.sway_container* %29)
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 6
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %34, i64 %41
  %43 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %49 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sdiv i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %47, i64 %54
  %56 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @fmax(i8* %60, i8* %63)
  %65 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %68 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @fmax(i8* %69, i8* %72)
  %74 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %31, %14
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %79 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  ret void
}

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_set_geometry_from_content(%struct.sway_container*) #1

declare dso_local i8* @fmax(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
