; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_configure_gaps.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_gaps.c_configure_gaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.gaps_data = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, i8*)* @configure_gaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_gaps(%struct.sway_workspace* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gaps_data*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gaps_data*
  store %struct.gaps_data* %7, %struct.gaps_data** %5, align 8
  %8 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %9 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %14 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %13, i32 0, i32 0
  %15 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %16 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %19 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @apply_gaps_op(i64* %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %24 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %30 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %33 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %36 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @apply_gaps_op(i64* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %22
  %40 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %41 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %47 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %50 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %53 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @apply_gaps_op(i64* %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %58 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %64 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %67 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %70 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @apply_gaps_op(i64* %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %56
  %74 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %75 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %81 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %84 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gaps_data*, %struct.gaps_data** %5, align 8
  %87 = getelementptr inbounds %struct.gaps_data, %struct.gaps_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @apply_gaps_op(i64* %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %79, %73
  %91 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %92 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %97 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = call i32 (...) @prevent_invalid_outer_gaps()
  %100 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %101 = call i32 @arrange_workspace(%struct.sway_workspace* %100)
  ret void
}

declare dso_local i32 @apply_gaps_op(i64*, i32, i32) #1

declare dso_local i32 @prevent_invalid_outer_gaps(...) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
