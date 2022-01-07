; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_flag.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_term = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TTYCODE_FLAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"not a flag: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_term_flag(%struct.tty_term* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_term*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_term* %0, %struct.tty_term** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tty_term*, %struct.tty_term** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @tty_term_has(%struct.tty_term* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.tty_term*, %struct.tty_term** %4, align 8
  %13 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TTYCODE_FLAG, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @fatalx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.tty_term*, %struct.tty_term** %4, align 8
  %27 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @tty_term_has(%struct.tty_term*, i32) #1

declare dso_local i32 @fatalx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
