; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_set_terminal_attributes.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_set_terminal_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@term_set_in = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@term_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tcsetattr()\00", align 1
@term_set_out = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@term_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_terminal_attributes() #0 {
  %1 = load i64, i64* @term_set_in, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @STDIN_FILENO, align 4
  %5 = call i64 @tcsetattr(i32 %4, i32 0, i32* @term_in)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %3
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i64, i64* @term_set_out, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* @STDOUT_FILENO, align 4
  %15 = call i64 @tcsetattr(i32 %14, i32 0, i32* @term_out)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %10
  ret void
}

declare dso_local i64 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
