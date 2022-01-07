; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_VimTryEnd.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_VimTryEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@trylevel = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@did_emsg = common dso_local global i8* null, align 8
@got_int = common dso_local global i8* null, align 8
@current_exception = common dso_local global %struct.TYPE_2__* null, align 8
@did_throw = common dso_local global i8* null, align 8
@need_rethrow = common dso_local global i8* null, align 8
@PyExc_KeyboardInterrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @VimTryEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VimTryEnd() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @trylevel, align 4
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* @trylevel, align 4
  %4 = load i8*, i8** @FALSE, align 8
  store i8* %4, i8** @did_emsg, align 8
  %5 = load i8*, i8** @got_int, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_exception, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @discard_current_exception()
  br label %14

12:                                               ; preds = %7
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** @did_throw, align 8
  store i8* %13, i8** @need_rethrow, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** @got_int, align 8
  %16 = load i32, i32* @PyExc_KeyboardInterrupt, align 4
  %17 = call i32 @PyErr_SetNone(i32 %16)
  store i32 -1, i32* %1, align 4
  br label %44

18:                                               ; preds = %0
  %19 = load i8*, i8** @did_throw, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = call i64 (...) @PyErr_Occurred()
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 0
  store i32 %25, i32* %1, align 4
  br label %44

26:                                               ; preds = %18
  %27 = call i64 (...) @PyErr_Occurred()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_exception, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @discard_current_exception()
  br label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @FALSE, align 8
  store i8* %35, i8** @did_throw, align 8
  store i8* %35, i8** @need_rethrow, align 8
  br label %36

36:                                               ; preds = %34, %32
  store i32 -1, i32* %1, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_exception, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @PyErr_SetVim(i8* %41)
  %43 = call i32 (...) @discard_current_exception()
  store i32 -1, i32* %1, align 4
  br label %44

44:                                               ; preds = %37, %36, %21, %14
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @discard_current_exception(...) #1

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PyErr_SetVim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
