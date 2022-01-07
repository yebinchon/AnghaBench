; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_unmark.c_cmd_unmark.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_unmark.c_cmd_unmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container*, i64 }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@remove_all_marks_iterator = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_unmark(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.sway_container* null, %struct.sway_container** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.sway_container*, %struct.sway_container** %15, align 8
  store %struct.sway_container* %16, %struct.sway_container** %5, align 8
  br label %17

17:                                               ; preds = %12, %2
  store i8* null, i8** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @join_args(i8** %21, i32 %22)
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %26 = icmp ne %struct.sway_container* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @container_has_mark(%struct.sway_container* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @container_find_and_unmark(i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %64

39:                                               ; preds = %27, %24
  %40 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %41 = icmp ne %struct.sway_container* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %47 = call i32 @container_clear_marks(%struct.sway_container* %46)
  %48 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %49 = call i32 @container_update_marks_textures(%struct.sway_container* %48)
  br label %63

50:                                               ; preds = %42, %39
  %51 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %52 = icmp ne %struct.sway_container* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @container_find_and_unmark(i8* %57)
  br label %62

59:                                               ; preds = %53, %50
  %60 = load i32, i32* @remove_all_marks_iterator, align 4
  %61 = call i32 @root_for_each_container(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* @CMD_SUCCESS, align 4
  %68 = call %struct.cmd_results* @cmd_results_new(i32 %67, i32* null)
  ret %struct.cmd_results* %68
}

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i64 @container_has_mark(%struct.sway_container*, i8*) #1

declare dso_local i32 @container_find_and_unmark(i8*) #1

declare dso_local i32 @container_clear_marks(%struct.sway_container*) #1

declare dso_local i32 @container_update_marks_textures(%struct.sway_container*) #1

declare dso_local i32 @root_for_each_container(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
