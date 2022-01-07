; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_restore_view_position.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_restore_view_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, %struct.TYPE_3__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*)* @restore_view_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_view_position(%struct.view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.view*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  %4 = load %struct.view*, %struct.view** %3, align 8
  %5 = getelementptr inbounds %struct.view, %struct.view* %4, i32 0, i32 1
  %6 = call i64 @check_position(%struct.TYPE_3__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.view*, %struct.view** %3, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.view*, %struct.view** %3, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.view*, %struct.view** %3, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %13, %1
  %23 = load %struct.view*, %struct.view** %3, align 8
  %24 = load %struct.view*, %struct.view** %3, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.view*, %struct.view** %3, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @goto_view_line(%struct.view* %23, i32 %27, i64 %31)
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %13, %8
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 2
  %36 = call i64 @check_position(%struct.TYPE_3__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 1
  %41 = call i32 @clear_position(%struct.TYPE_3__* %40)
  store i32 0, i32* %2, align 4
  br label %74

42:                                               ; preds = %33
  %43 = load %struct.view*, %struct.view** %3, align 8
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.view*, %struct.view** %3, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @goto_view_line(%struct.view* %43, i32 %47, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load %struct.view*, %struct.view** %3, align 8
  %56 = call i64 @view_is_displayed(%struct.view* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.view*, %struct.view** %3, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @werase(i32 %61)
  br label %63

63:                                               ; preds = %58, %54, %42
  %64 = load %struct.view*, %struct.view** %3, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.view*, %struct.view** %3, align 8
  %69 = getelementptr inbounds %struct.view, %struct.view* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.view*, %struct.view** %3, align 8
  %72 = getelementptr inbounds %struct.view, %struct.view* %71, i32 0, i32 1
  %73 = call i32 @clear_position(%struct.TYPE_3__* %72)
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %38, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @check_position(%struct.TYPE_3__*) #1

declare dso_local i32 @goto_view_line(%struct.view*, i32, i64) #1

declare dso_local i32 @clear_position(%struct.TYPE_3__*) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @werase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
