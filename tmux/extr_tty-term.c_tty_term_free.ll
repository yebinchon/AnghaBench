; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_term = type { i64, i64, %struct.tty_term*, %struct.tty_term*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_term* }

@entry = common dso_local global i32 0, align 4
@TTYCODE_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_term_free(%struct.tty_term* %0) #0 {
  %2 = alloca %struct.tty_term*, align 8
  %3 = alloca i64, align 8
  store %struct.tty_term* %0, %struct.tty_term** %2, align 8
  %4 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %5 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %12 = load i32, i32* @entry, align 4
  %13 = call i32 @LIST_REMOVE(%struct.tty_term* %11, i32 %12)
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %39, %10
  %15 = load i64, i64* %3, align 8
  %16 = call i64 (...) @tty_term_ncodes()
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %20 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %19, i32 0, i32 3
  %21 = load %struct.tty_term*, %struct.tty_term** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %21, i64 %22
  %24 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TTYCODE_STRING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %30 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %29, i32 0, i32 3
  %31 = load %struct.tty_term*, %struct.tty_term** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %31, i64 %32
  %34 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.tty_term*, %struct.tty_term** %35, align 8
  %37 = call i32 @free(%struct.tty_term* %36)
  br label %38

38:                                               ; preds = %28, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %44 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %43, i32 0, i32 3
  %45 = load %struct.tty_term*, %struct.tty_term** %44, align 8
  %46 = call i32 @free(%struct.tty_term* %45)
  %47 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %48 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %47, i32 0, i32 2
  %49 = load %struct.tty_term*, %struct.tty_term** %48, align 8
  %50 = call i32 @free(%struct.tty_term* %49)
  %51 = load %struct.tty_term*, %struct.tty_term** %2, align 8
  %52 = call i32 @free(%struct.tty_term* %51)
  br label %53

53:                                               ; preds = %42, %9
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.tty_term*, i32) #1

declare dso_local i64 @tty_term_ncodes(...) #1

declare dso_local i32 @free(%struct.tty_term*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
