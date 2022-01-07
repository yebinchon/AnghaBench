; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c_GetInputOutputHandles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/ctm/extr_ctm.c_GetInputOutputHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@hStdin = common dso_local global i8* null, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@hStdout = common dso_local global i8* null, align 8
@CONSOLE_TEXTMODE_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetInputOutputHandles() #0 {
  %1 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %2 = call i8* @GetStdHandle(i32 %1)
  store i8* %2, i8** @hStdin, align 8
  %3 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %4 = call i8* @GetStdHandle(i32 %3)
  store i8* %4, i8** @hStdout, align 8
  ret void
}

declare dso_local i8* @GetStdHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
