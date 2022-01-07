; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_destroy_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_destroy_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32 }
%struct.layout_cell = type { i64, i32, %struct.layout_cell*, i64, i64, i64, i64 }

@entry = common dso_local global i32 0, align 4
@layout_cells = common dso_local global i32 0, align 4
@LAYOUT_LEFTRIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_destroy_cell(%struct.window* %0, %struct.layout_cell* %1, %struct.layout_cell** %2) #0 {
  %4 = alloca %struct.window*, align 8
  %5 = alloca %struct.layout_cell*, align 8
  %6 = alloca %struct.layout_cell**, align 8
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca %struct.layout_cell*, align 8
  store %struct.window* %0, %struct.window** %4, align 8
  store %struct.layout_cell* %1, %struct.layout_cell** %5, align 8
  store %struct.layout_cell** %2, %struct.layout_cell*** %6, align 8
  %9 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %10 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %9, i32 0, i32 2
  %11 = load %struct.layout_cell*, %struct.layout_cell** %10, align 8
  store %struct.layout_cell* %11, %struct.layout_cell** %8, align 8
  %12 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %13 = icmp eq %struct.layout_cell* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %16 = call i32 @layout_free_cell(%struct.layout_cell* %15)
  %17 = load %struct.layout_cell**, %struct.layout_cell*** %6, align 8
  store %struct.layout_cell* null, %struct.layout_cell** %17, align 8
  br label %117

18:                                               ; preds = %3
  %19 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %20 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %21 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %20, i32 0, i32 1
  %22 = call %struct.layout_cell* @TAILQ_FIRST(i32* %21)
  %23 = icmp eq %struct.layout_cell* %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %26 = load i32, i32* @entry, align 4
  %27 = call %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell* %25, i32 %26)
  store %struct.layout_cell* %27, %struct.layout_cell** %7, align 8
  br label %33

28:                                               ; preds = %18
  %29 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %30 = load i32, i32* @layout_cells, align 4
  %31 = load i32, i32* @entry, align 4
  %32 = call %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell* %29, i32 %30, i32 %31)
  store %struct.layout_cell* %32, %struct.layout_cell** %7, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %35 = icmp ne %struct.layout_cell* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %38 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LAYOUT_LEFTRIGHT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.window*, %struct.window** %4, align 8
  %44 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %45 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %46 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %49 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @layout_resize_adjust(%struct.window* %43, %struct.layout_cell* %44, i64 %47, i64 %51)
  br label %68

53:                                               ; preds = %36, %33
  %54 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %55 = icmp ne %struct.layout_cell* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.window*, %struct.window** %4, align 8
  %58 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %59 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %60 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %63 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @layout_resize_adjust(%struct.window* %57, %struct.layout_cell* %58, i64 %61, i64 %65)
  br label %67

67:                                               ; preds = %56, %53
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %70 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %69, i32 0, i32 1
  %71 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %72 = load i32, i32* @entry, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %70, %struct.layout_cell* %71, i32 %72)
  %74 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %75 = call i32 @layout_free_cell(%struct.layout_cell* %74)
  %76 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %77 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %76, i32 0, i32 1
  %78 = call %struct.layout_cell* @TAILQ_FIRST(i32* %77)
  store %struct.layout_cell* %78, %struct.layout_cell** %5, align 8
  %79 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %80 = load i32, i32* @entry, align 4
  %81 = call %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell* %79, i32 %80)
  %82 = icmp eq %struct.layout_cell* %81, null
  br i1 %82, label %83, label %117

83:                                               ; preds = %68
  %84 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %85 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %84, i32 0, i32 1
  %86 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %87 = load i32, i32* @entry, align 4
  %88 = call i32 @TAILQ_REMOVE(i32* %85, %struct.layout_cell* %86, i32 %87)
  %89 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %90 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %89, i32 0, i32 2
  %91 = load %struct.layout_cell*, %struct.layout_cell** %90, align 8
  %92 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %93 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %92, i32 0, i32 2
  store %struct.layout_cell* %91, %struct.layout_cell** %93, align 8
  %94 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %95 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %94, i32 0, i32 2
  %96 = load %struct.layout_cell*, %struct.layout_cell** %95, align 8
  %97 = icmp eq %struct.layout_cell* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %100 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %102 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %104 = load %struct.layout_cell**, %struct.layout_cell*** %6, align 8
  store %struct.layout_cell* %103, %struct.layout_cell** %104, align 8
  br label %114

105:                                              ; preds = %83
  %106 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %107 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %106, i32 0, i32 2
  %108 = load %struct.layout_cell*, %struct.layout_cell** %107, align 8
  %109 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %108, i32 0, i32 1
  %110 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %111 = load %struct.layout_cell*, %struct.layout_cell** %5, align 8
  %112 = load i32, i32* @entry, align 4
  %113 = call i32 @TAILQ_REPLACE(i32* %109, %struct.layout_cell* %110, %struct.layout_cell* %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %98
  %115 = load %struct.layout_cell*, %struct.layout_cell** %8, align 8
  %116 = call i32 @layout_free_cell(%struct.layout_cell* %115)
  br label %117

117:                                              ; preds = %14, %114, %68
  ret void
}

declare dso_local i32 @layout_free_cell(%struct.layout_cell*) #1

declare dso_local %struct.layout_cell* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.layout_cell* @TAILQ_NEXT(%struct.layout_cell*, i32) #1

declare dso_local %struct.layout_cell* @TAILQ_PREV(%struct.layout_cell*, i32, i32) #1

declare dso_local i32 @layout_resize_adjust(%struct.window*, %struct.layout_cell*, i64, i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.layout_cell*, i32) #1

declare dso_local i32 @TAILQ_REPLACE(i32*, %struct.layout_cell*, %struct.layout_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
