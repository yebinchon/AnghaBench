; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_search_for.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_search_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_item = type { i32, i32, %struct.mode_tree_item*, i32 }
%struct.mode_tree_data = type { i64, i32*, i32, i64 (i32, i32, i32*)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mode_tree_item* }

@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mode_tree_item* (%struct.mode_tree_data*)* @mode_tree_search_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mode_tree_item* @mode_tree_search_for(%struct.mode_tree_data* %0) #0 {
  %2 = alloca %struct.mode_tree_item*, align 8
  %3 = alloca %struct.mode_tree_data*, align 8
  %4 = alloca %struct.mode_tree_item*, align 8
  %5 = alloca %struct.mode_tree_item*, align 8
  %6 = alloca %struct.mode_tree_item*, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %3, align 8
  %7 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %8 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.mode_tree_item* null, %struct.mode_tree_item** %2, align 8
  br label %104

12:                                               ; preds = %1
  %13 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %14 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %17 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mode_tree_item*, %struct.mode_tree_item** %20, align 8
  store %struct.mode_tree_item* %21, %struct.mode_tree_item** %5, align 8
  store %struct.mode_tree_item* %21, %struct.mode_tree_item** %4, align 8
  br label %22

22:                                               ; preds = %102, %84, %12
  %23 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %24 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %23, i32 0, i32 3
  %25 = call i32 @TAILQ_EMPTY(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %29 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %28, i32 0, i32 3
  %30 = call %struct.mode_tree_item* @TAILQ_FIRST(i32* %29)
  store %struct.mode_tree_item* %30, %struct.mode_tree_item** %4, align 8
  br label %56

31:                                               ; preds = %22
  %32 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %33 = load i32, i32* @entry, align 4
  %34 = call %struct.mode_tree_item* @TAILQ_NEXT(%struct.mode_tree_item* %32, i32 %33)
  store %struct.mode_tree_item* %34, %struct.mode_tree_item** %6, align 8
  %35 = icmp ne %struct.mode_tree_item* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  store %struct.mode_tree_item* %37, %struct.mode_tree_item** %4, align 8
  br label %55

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %53, %38
  %40 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %41 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %40, i32 0, i32 2
  %42 = load %struct.mode_tree_item*, %struct.mode_tree_item** %41, align 8
  store %struct.mode_tree_item* %42, %struct.mode_tree_item** %4, align 8
  %43 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %44 = icmp eq %struct.mode_tree_item* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %54

46:                                               ; preds = %39
  %47 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %48 = load i32, i32* @entry, align 4
  %49 = call %struct.mode_tree_item* @TAILQ_NEXT(%struct.mode_tree_item* %47, i32 %48)
  store %struct.mode_tree_item* %49, %struct.mode_tree_item** %6, align 8
  %50 = icmp ne %struct.mode_tree_item* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load %struct.mode_tree_item*, %struct.mode_tree_item** %6, align 8
  store %struct.mode_tree_item* %52, %struct.mode_tree_item** %4, align 8
  br label %54

53:                                               ; preds = %46
  br label %39

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %58 = icmp eq %struct.mode_tree_item* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %61 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %60, i32 0, i32 4
  %62 = call %struct.mode_tree_item* @TAILQ_FIRST(i32* %61)
  store %struct.mode_tree_item* %62, %struct.mode_tree_item** %4, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %65 = load %struct.mode_tree_item*, %struct.mode_tree_item** %5, align 8
  %66 = icmp eq %struct.mode_tree_item* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %103

68:                                               ; preds = %63
  %69 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %70 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %69, i32 0, i32 3
  %71 = load i64 (i32, i32, i32*)*, i64 (i32, i32, i32*)** %70, align 8
  %72 = icmp eq i64 (i32, i32, i32*)* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %75 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %78 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32* @strstr(i32 %76, i32* %79)
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  store %struct.mode_tree_item* %83, %struct.mode_tree_item** %2, align 8
  br label %104

84:                                               ; preds = %73
  br label %22

85:                                               ; preds = %68
  %86 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %87 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %86, i32 0, i32 3
  %88 = load i64 (i32, i32, i32*)*, i64 (i32, i32, i32*)** %87, align 8
  %89 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %90 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  %93 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mode_tree_data*, %struct.mode_tree_data** %3, align 8
  %96 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 %88(i32 %91, i32 %94, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load %struct.mode_tree_item*, %struct.mode_tree_item** %4, align 8
  store %struct.mode_tree_item* %101, %struct.mode_tree_item** %2, align 8
  br label %104

102:                                              ; preds = %85
  br label %22

103:                                              ; preds = %67
  store %struct.mode_tree_item* null, %struct.mode_tree_item** %2, align 8
  br label %104

104:                                              ; preds = %103, %100, %82, %11
  %105 = load %struct.mode_tree_item*, %struct.mode_tree_item** %2, align 8
  ret %struct.mode_tree_item* %105
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.mode_tree_item* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.mode_tree_item* @TAILQ_NEXT(%struct.mode_tree_item*, i32) #1

declare dso_local i32* @strstr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
