; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_deactivate_readline.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_deactivate_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_one_string = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"\1B[2K\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@rl_point = common dso_local global i32 0, align 4
@saved_point = common dso_local global i32 0, align 4
@rl_end = common dso_local global i32 0, align 4
@saved_line = common dso_local global i64* null, align 8
@rl_line_buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deactivate_readline() #0 {
  %1 = load i64, i64* @read_one_string, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fflush(i32 %5)
  br label %25

7:                                                ; preds = %0
  %8 = load i32, i32* @rl_point, align 4
  store i32 %8, i32* @saved_point, align 4
  %9 = load i32, i32* @rl_end, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i64* @malloc(i32 %10)
  store i64* %11, i64** @saved_line, align 8
  %12 = load i64*, i64** @saved_line, align 8
  %13 = call i32 @assert(i64* %12)
  %14 = load i64*, i64** @saved_line, align 8
  %15 = load i32, i32* @rl_end, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** @saved_line, align 8
  %19 = load i32, i32* @rl_line_buffer, align 4
  %20 = load i32, i32* @rl_end, align 4
  %21 = call i32 @memcpy(i64* %18, i32 %19, i32 %20)
  %22 = call i32 (...) @rl_save_prompt()
  %23 = call i32 @rl_replace_line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %24 = call i32 (...) @rl_redisplay()
  br label %25

25:                                               ; preds = %7, %3
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @rl_save_prompt(...) #1

declare dso_local i32 @rl_replace_line(i8*, i32) #1

declare dso_local i32 @rl_redisplay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
