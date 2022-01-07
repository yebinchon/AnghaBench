; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_send.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxpeer = type { i32, %struct.imsgbuf }
%struct.imsgbuf = type { i32 }

@PEER_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sending message %d to peer %p (%zu bytes)\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_send(%struct.tmuxpeer* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmuxpeer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.imsgbuf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tmuxpeer* %0, %struct.tmuxpeer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.tmuxpeer*, %struct.tmuxpeer** %7, align 8
  %16 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %15, i32 0, i32 1
  store %struct.imsgbuf* %16, %struct.imsgbuf** %12, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.tmuxpeer*, %struct.tmuxpeer** %7, align 8
  %19 = getelementptr inbounds %struct.tmuxpeer, %struct.tmuxpeer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PEER_BAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %43

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.tmuxpeer*, %struct.tmuxpeer** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.tmuxpeer* %27, i64 %28)
  %30 = load %struct.imsgbuf*, %struct.imsgbuf** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PROTOCOL_VERSION, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @imsg_compose(%struct.imsgbuf* %30, i32 %31, i32 %32, i32 -1, i32 %33, i8* %34, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %43

40:                                               ; preds = %25
  %41 = load %struct.tmuxpeer*, %struct.tmuxpeer** %7, align 8
  %42 = call i32 @proc_update_event(%struct.tmuxpeer* %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %39, %24
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @log_debug(i8*, i32, %struct.tmuxpeer*, i64) #1

declare dso_local i32 @imsg_compose(%struct.imsgbuf*, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @proc_update_event(%struct.tmuxpeer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
