; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_del.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_edit.c_ins_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FAIL = common dso_local global i64 0, align 8
@NUL = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@BS_EOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@did_ai = common dso_local global i8* null, align 8
@K_DEL = common dso_local global i32 0, align 4
@can_si = common dso_local global i8* null, align 8
@can_si_back = common dso_local global i8* null, align 8
@did_si = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ins_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins_del() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @stop_arrow()
  %3 = load i64, i64* @FAIL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %45

6:                                                ; preds = %0
  %7 = call i64 (...) @gchar_cursor()
  %8 = load i64, i64* @NUL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @BS_EOL, align 4
  %16 = call i32 @can_bs(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i8*, i8** @FALSE, align 8
  %22 = call i64 @do_join(i32 2, i8* %19, i32 %20, i8* %21)
  %23 = load i64, i64* @FAIL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %10
  %26 = call i32 (...) @vim_beep()
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %1, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %25
  br label %41

33:                                               ; preds = %6
  %34 = load i8*, i8** @FALSE, align 8
  %35 = call i64 @del_char(i8* %34)
  %36 = load i64, i64* @FAIL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @vim_beep()
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i8*, i8** @FALSE, align 8
  store i8* %42, i8** @did_ai, align 8
  %43 = load i32, i32* @K_DEL, align 4
  %44 = call i32 @AppendCharToRedobuff(i32 %43)
  br label %45

45:                                               ; preds = %41, %5
  ret void
}

declare dso_local i64 @stop_arrow(...) #1

declare dso_local i64 @gchar_cursor(...) #1

declare dso_local i32 @can_bs(i32) #1

declare dso_local i64 @do_join(i32, i8*, i32, i8*) #1

declare dso_local i32 @vim_beep(...) #1

declare dso_local i64 @del_char(i8*) #1

declare dso_local i32 @AppendCharToRedobuff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
