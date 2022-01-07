; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_execute_binding.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_execute_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32 }
%struct.swaybar_binding = type { i32, i32, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Executing binding for button %u (release=%d): `%s`\00", align 1
@IPC_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_execute_binding(%struct.swaybar* %0, %struct.swaybar_binding* %1) #0 {
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca %struct.swaybar_binding*, align 8
  %5 = alloca i32, align 4
  store %struct.swaybar* %0, %struct.swaybar** %3, align 8
  store %struct.swaybar_binding* %1, %struct.swaybar_binding** %4, align 8
  %6 = load i32, i32* @SWAY_DEBUG, align 4
  %7 = load %struct.swaybar_binding*, %struct.swaybar_binding** %4, align 8
  %8 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.swaybar_binding*, %struct.swaybar_binding** %4, align 8
  %11 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.swaybar_binding*, %struct.swaybar_binding** %4, align 8
  %14 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sway_log(i32 %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.swaybar_binding*, %struct.swaybar_binding** %4, align 8
  %18 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %22 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPC_COMMAND, align 4
  %25 = load %struct.swaybar_binding*, %struct.swaybar_binding** %4, align 8
  %26 = getelementptr inbounds %struct.swaybar_binding, %struct.swaybar_binding* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ipc_single_command(i32 %23, i32 %24, i32 %27, i32* %5)
  %29 = call i32 @free(i32 %28)
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ipc_single_command(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
