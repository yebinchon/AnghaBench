; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_guard.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32, i64, %struct.client* }
%struct.client = type { i32, i32 }

@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%%%s %ld %u %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmdq_guard(%struct.cmdq_item* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.client*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %9 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %8, i32 0, i32 2
  %10 = load %struct.client*, %struct.client** %9, align 8
  store %struct.client* %10, %struct.client** %7, align 8
  %11 = load %struct.client*, %struct.client** %7, align 8
  %12 = icmp eq %struct.client* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.client*, %struct.client** %7, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CLIENT_CONTROL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %3
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.client*, %struct.client** %7, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %27 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %30 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @evbuffer_add_printf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %28, i32 %31, i32 %32)
  %34 = load %struct.client*, %struct.client** %7, align 8
  %35 = call i32 @server_client_push_stdout(%struct.client* %34)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @server_client_push_stdout(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
