; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_get_callback1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_get_callback1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i8*, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"[%s/%p]\00", align 1
@CMDQ_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmdq_item* @cmdq_get_callback1(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmdq_item*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call %struct.cmdq_item* @xcalloc(i32 1, i32 40)
  store %struct.cmdq_item* %8, %struct.cmdq_item** %7, align 8
  %9 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %10 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %9, i32 0, i32 5
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %13 = call i32 @xasprintf(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11, %struct.cmdq_item* %12)
  %14 = load i32, i32* @CMDQ_CALLBACK, align 4
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %16 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %20 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %23 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  ret %struct.cmdq_item* %27
}

declare dso_local %struct.cmdq_item* @xcalloc(i32, i32) #1

declare dso_local i32 @xasprintf(i32*, i8*, i8*, %struct.cmdq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
