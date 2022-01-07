; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_prev_next_impl.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_prev_next_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { %struct.TYPE_4__*, %struct.sway_workspace* }
%struct.sway_output = type { %struct.TYPE_4__*, %struct.sway_output* }

@root = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_workspace* (%struct.sway_workspace*, i32)* @workspace_prev_next_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_workspace* @workspace_prev_next_impl(%struct.sway_workspace* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %11 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %10, i32 0, i32 1
  %12 = load %struct.sway_workspace*, %struct.sway_workspace** %11, align 8
  %13 = bitcast %struct.sway_workspace* %12 to %struct.sway_output*
  store %struct.sway_output* %13, %struct.sway_output** %6, align 8
  %14 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %15 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %18 = call i32 @list_find(%struct.TYPE_4__* %16, %struct.sway_workspace* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %27 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %34 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.sway_workspace**, %struct.sway_workspace*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %37, i64 %39
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %40, align 8
  store %struct.sway_workspace* %41, %struct.sway_workspace** %3, align 8
  br label %93

42:                                               ; preds = %24, %2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %47 = bitcast %struct.sway_output* %46 to %struct.sway_workspace*
  %48 = call i32 @list_find(%struct.TYPE_4__* %45, %struct.sway_workspace* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wrap(i32 %51, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @root, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.sway_workspace**, %struct.sway_workspace*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %62, i64 %64
  %66 = load %struct.sway_workspace*, %struct.sway_workspace** %65, align 8
  %67 = bitcast %struct.sway_workspace* %66 to %struct.sway_output*
  store %struct.sway_output* %67, %struct.sway_output** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %78

70:                                               ; preds = %42
  %71 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %72 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.sway_workspace**, %struct.sway_workspace*** %74, align 8
  %76 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %75, i64 0
  %77 = load %struct.sway_workspace*, %struct.sway_workspace** %76, align 8
  store %struct.sway_workspace* %77, %struct.sway_workspace** %3, align 8
  br label %93

78:                                               ; preds = %42
  %79 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %80 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.sway_workspace**, %struct.sway_workspace*** %82, align 8
  %84 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %85 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %83, i64 %90
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %91, align 8
  store %struct.sway_workspace* %92, %struct.sway_workspace** %3, align 8
  br label %93

93:                                               ; preds = %78, %70, %32
  %94 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  ret %struct.sway_workspace* %94
}

declare dso_local i32 @list_find(%struct.TYPE_4__*, %struct.sway_workspace*) #1

declare dso_local i32 @wrap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
