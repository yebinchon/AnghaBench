; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_addfrommatch.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_compl_addfrommatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_8__* }

@curwin = common dso_local global %struct.TYPE_9__* null, align 8
@compl_col = common dso_local global i64 0, align 8
@compl_shown_match = common dso_local global %struct.TYPE_10__* null, align 8
@ORIGINAL_TEXT = common dso_local global i32 0, align 4
@compl_first_match = common dso_local global %struct.TYPE_8__* null, align 8
@compl_leader = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_compl_addfrommatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_compl_addfrommatch() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* @compl_col, align 8
  %11 = trunc i64 %10 to i32
  %12 = sub nsw i32 %9, %11
  store i32 %12, i32* %2, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @compl_shown_match, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @STRLEN(i32* %16)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %2, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @compl_shown_match, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ORIGINAL_TEXT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  store i32* null, i32** %1, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @compl_shown_match, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  br label %32

32:                                               ; preds = %57, %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @compl_first_match, align 8
  %38 = icmp ne %struct.TYPE_8__* %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %61

41:                                               ; preds = %39
  %42 = load i32*, i32** @compl_leader, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32*, i32** @compl_leader, align 8
  %47 = load i32*, i32** @compl_leader, align 8
  %48 = call i64 @STRLEN(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = call i64 @ins_compl_equal(%struct.TYPE_8__* %45, i32* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %1, align 8
  br label %61

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %4, align 8
  br label %32

61:                                               ; preds = %52, %39
  %62 = load i32*, i32** %1, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %1, align 8
  %66 = call i64 @STRLEN(i32* %65)
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %2, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %61
  br label %83

71:                                               ; preds = %64
  br label %73

72:                                               ; preds = %21
  br label %83

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %0
  %75 = load i32, i32* %2, align 4
  %76 = load i32*, i32** %1, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %1, align 8
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @PTR2CHAR(i32* %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ins_compl_addleader(i32 %81)
  br label %83

83:                                               ; preds = %74, %72, %70
  ret void
}

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i64 @ins_compl_equal(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @PTR2CHAR(i32*) #1

declare dso_local i32 @ins_compl_addleader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
