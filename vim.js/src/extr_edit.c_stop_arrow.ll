; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_stop_arrow.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_stop_arrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@arrow_used = common dso_local global i8* null, align 8
@OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@ins_need_undo = common dso_local global i8* null, align 8
@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@Insstart = common dso_local global i32 0, align 4
@Insstart_textlen = common dso_local global i64 0, align 8
@ai_col = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"1i\00", align 1
@new_insert_skip = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@VREPLACE_FLAG = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_6__* null, align 8
@orig_line_count = common dso_local global i32 0, align 4
@vr_lines_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_arrow() #0 {
  %1 = load i8*, i8** @arrow_used, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = call i64 (...) @u_save_cursor()
  %5 = load i64, i64* @OK, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** @arrow_used, align 8
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** @ins_need_undo, align 8
  br label %10

10:                                               ; preds = %7, %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @Insstart, align 4
  %14 = call i32 (...) @ml_get_curline()
  %15 = call i64 @linetabsize(i32 %14)
  store i64 %15, i64* @Insstart_textlen, align 8
  store i64 0, i64* @ai_col, align 8
  %16 = call i32 (...) @ResetRedobuff()
  %17 = call i32 @AppendToRedobuff(i32* bitcast ([3 x i8]* @.str to i32*))
  store i32 2, i32* @new_insert_skip, align 4
  br label %29

18:                                               ; preds = %0
  %19 = load i8*, i8** @ins_need_undo, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = call i64 (...) @u_save_cursor()
  %23 = load i64, i64* @OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @FALSE, align 8
  store i8* %26, i8** @ins_need_undo, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i8*, i8** @arrow_used, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @ins_need_undo, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @FAIL, align 4
  %37 = sext i32 %36 to i64
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @OK, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i64 [ %37, %35 ], [ %39, %38 ]
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

declare dso_local i64 @u_save_cursor(...) #1

declare dso_local i64 @linetabsize(i32) #1

declare dso_local i32 @ml_get_curline(...) #1

declare dso_local i32 @ResetRedobuff(...) #1

declare dso_local i32 @AppendToRedobuff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
