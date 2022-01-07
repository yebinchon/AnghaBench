; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_get_highest_available.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_output_get_highest_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.sway_output = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @workspace_output_get_highest_available(%struct.sway_workspace* %0, %struct.sway_output* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sway_output*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store %struct.sway_output* %1, %struct.sway_output** %5, align 8
  %10 = bitcast [128 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 128, i1 false)
  %11 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %12 = icmp ne %struct.sway_output* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %15 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %16 = call i32 @output_get_identifier(i8* %14, i32 128, %struct.sway_output* %15)
  br label %17

17:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %61, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %21 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %18
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %28 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  %36 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %37 = icmp ne %struct.sway_output* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %41 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %39, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %38
  br label %61

53:                                               ; preds = %47, %26
  %54 = load i8*, i8** %8, align 8
  %55 = call %struct.sway_output* @output_by_name_or_id(i8* %54)
  store %struct.sway_output* %55, %struct.sway_output** %9, align 8
  %56 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  %57 = icmp ne %struct.sway_output* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load %struct.sway_output*, %struct.sway_output** %9, align 8
  store %struct.sway_output* %59, %struct.sway_output** %3, align 8
  br label %65

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %18

64:                                               ; preds = %18
  store %struct.sway_output* null, %struct.sway_output** %3, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  ret %struct.sway_output* %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
