; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_do_get_string.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_do_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }

@one_string_type = common dso_local global i32 0, align 4
@one_string_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@one_string_prompt = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@read_one_string = common dso_local global i32 0, align 4
@one_string_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_get_string(%struct.tgl_state* %0) #0 {
  %2 = alloca %struct.tgl_state*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %2, align 8
  %3 = call i32 (...) @deactivate_readline()
  %4 = load i32, i32* @one_string_type, align 4
  %5 = load i32, i32* @one_string_num, align 4
  %6 = call i32 @generate_prompt(i32 %4, i32 %5)
  %7 = load i8*, i8** @one_string_prompt, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fflush(i32 %9)
  store i32 1, i32* @read_one_string, align 4
  store i64 0, i64* @one_string_len, align 8
  ret void
}

declare dso_local i32 @deactivate_readline(...) #1

declare dso_local i32 @generate_prompt(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
