; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_parse_env.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_parse_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KILL_PROCESS_GROUP_GROUP_ENV_VAR = common dso_local global i32 0, align 4
@kill_process_group = common dso_local global i32 0, align 4
@VERBOSITY_ENV_VAR = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@SUBREAPER_ENV_VAR = common dso_local global i32 0, align 4
@subreaper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_env() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @KILL_PROCESS_GROUP_GROUP_ENV_VAR, align 4
  %3 = call i8* @getenv(i32 %2)
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @kill_process_group, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @kill_process_group, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @VERBOSITY_ENV_VAR, align 4
  %10 = call i8* @getenv(i32 %9)
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @atoi(i8* %14)
  store i32 %15, i32* @verbosity, align 4
  br label %16

16:                                               ; preds = %13, %8
  ret i32 0
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
