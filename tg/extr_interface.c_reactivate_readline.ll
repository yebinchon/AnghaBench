; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_reactivate_readline.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_reactivate_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_one_string = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@one_string_prompt = common dso_local global i8* null, align 8
@one_string_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@one_string_len = common dso_local global i8* null, align 8
@one_string = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@saved_line = common dso_local global i32 0, align 4
@saved_point = common dso_local global i32 0, align 4
@rl_point = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reactivate_readline() #0 {
  %1 = load i64, i64* @read_one_string, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i8*, i8** @one_string_prompt, align 8
  %5 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @one_string_flags, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i8*, i8** @one_string_len, align 8
  %11 = load i32, i32* @one_string, align 4
  %12 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fflush(i32 %14)
  br label %25

16:                                               ; preds = %0
  %17 = call i32 (...) @get_default_prompt()
  %18 = call i32 @set_prompt(i32 %17)
  %19 = load i32, i32* @saved_line, align 4
  %20 = call i32 @rl_replace_line(i32 %19, i32 0)
  %21 = load i32, i32* @saved_point, align 4
  store i32 %21, i32* @rl_point, align 4
  %22 = call i32 (...) @rl_redisplay()
  %23 = load i32, i32* @saved_line, align 4
  %24 = call i32 @free(i32 %23)
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @set_prompt(i32) #1

declare dso_local i32 @get_default_prompt(...) #1

declare dso_local i32 @rl_replace_line(i32, i32) #1

declare dso_local i32 @rl_redisplay(...) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
