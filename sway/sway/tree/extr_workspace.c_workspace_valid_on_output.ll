; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_valid_on_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_valid_on_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.sway_output = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @workspace_valid_on_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspace_valid_on_output(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.workspace_config*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.workspace_config* @workspace_find_config(i8* %10)
  store %struct.workspace_config* %11, %struct.workspace_config** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.sway_output* @output_by_name_or_id(i8* %12)
  store %struct.sway_output* %13, %struct.sway_output** %8, align 8
  %14 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %15 = icmp ne %struct.sway_output* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %19 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %24 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %25 = call i32 @output_get_identifier(i8* %23, i32 128, %struct.sway_output* %24)
  %26 = load %struct.workspace_config*, %struct.workspace_config** %6, align 8
  %27 = icmp ne %struct.workspace_config* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %82

29:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %78, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.workspace_config*, %struct.workspace_config** %6, align 8
  %33 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %30
  %39 = load %struct.workspace_config*, %struct.workspace_config** %6, align 8
  %40 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %38
  %51 = load %struct.workspace_config*, %struct.workspace_config** %6, align 8
  %52 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @strcmp(i32 %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %50
  %64 = load %struct.workspace_config*, %struct.workspace_config** %6, align 8
  %65 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %74 = call i64 @strcmp(i32 %72, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63, %50, %38
  store i32 1, i32* %3, align 4
  br label %82

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %30

81:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %76, %28, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.workspace_config* @workspace_find_config(i8*) #1

declare dso_local %struct.sway_output* @output_by_name_or_id(i8*) #1

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
