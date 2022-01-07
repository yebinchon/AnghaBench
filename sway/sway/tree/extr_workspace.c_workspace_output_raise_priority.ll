; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_raise_priority.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_raise_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8** }
%struct.sway_output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_output_raise_priority(%struct.sway_workspace* %0, %struct.sway_output* %1, %struct.sway_output* %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store %struct.sway_output* %1, %struct.sway_output** %5, align 8
  store %struct.sway_output* %2, %struct.sway_output** %6, align 8
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %12 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %13 = call i32 @workspace_output_get_priority(%struct.sway_workspace* %11, %struct.sway_output* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %19 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %20 = call i32 @workspace_output_get_priority(%struct.sway_workspace* %18, %struct.sway_output* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %25 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %26 = call i32 @output_get_identifier(i8* %24, i32 128, %struct.sway_output* %25)
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %28 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %32 = call i8* @strdup(i8* %31)
  %33 = call i32 @list_insert(%struct.TYPE_3__* %29, i32 %30, i8* %32)
  br label %60

34:                                               ; preds = %17
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %40 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %49 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @list_del(%struct.TYPE_3__* %50, i32 %51)
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %54 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @list_insert(%struct.TYPE_3__* %55, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %38, %34
  br label %60

60:                                               ; preds = %16, %59, %23
  ret void
}

declare dso_local i32 @workspace_output_get_priority(%struct.sway_workspace*, %struct.sway_output*) #1

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i32 @list_insert(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
