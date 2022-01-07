; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_free.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@compl_pattern = common dso_local global %struct.TYPE_7__* null, align 8
@compl_leader = common dso_local global %struct.TYPE_7__* null, align 8
@compl_first_match = common dso_local global %struct.TYPE_7__* null, align 8
@compl_curr_match = common dso_local global %struct.TYPE_7__* null, align 8
@FREE_FNAME = common dso_local global i32 0, align 4
@CPT_COUNT = common dso_local global i32 0, align 4
@compl_shown_match = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_compl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_compl_free() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_pattern, align 8
  %4 = call i32 @vim_free(%struct.TYPE_7__* %3)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @compl_pattern, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_leader, align 8
  %6 = call i32 @vim_free(%struct.TYPE_7__* %5)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @compl_leader, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_first_match, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %64

10:                                               ; preds = %0
  %11 = call i32 (...) @ins_compl_del_pum()
  %12 = call i32 (...) @pum_clear()
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_first_match, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** @compl_curr_match, align 8
  br label %14

14:                                               ; preds = %61, %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_curr_match, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %1, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_curr_match, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** @compl_curr_match, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @vim_free(%struct.TYPE_7__* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FREE_FNAME, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @vim_free(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %29, %14
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @CPT_COUNT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @vim_free(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %53 = call i32 @vim_free(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_curr_match, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_curr_match, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @compl_first_match, align 8
  %60 = icmp ne %struct.TYPE_7__* %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %14, label %63

63:                                               ; preds = %61
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @compl_curr_match, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @compl_first_match, align 8
  store i32* null, i32** @compl_shown_match, align 8
  br label %64

64:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @vim_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ins_compl_del_pum(...) #1

declare dso_local i32 @pum_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
