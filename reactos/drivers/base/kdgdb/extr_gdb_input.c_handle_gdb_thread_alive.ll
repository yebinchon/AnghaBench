; ModuleID = '/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_input.c_handle_gdb_thread_alive.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_gdb_input.c_handle_gdb_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_input = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Checking if p%p.%p is alive.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"E03\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_gdb_thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_gdb_thread_alive() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @gdb_input, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 2
  %7 = call i64 @hex_to_pid(i32* %6)
  store i64 %7, i64* %1, align 8
  %8 = load i32*, i32** @gdb_input, align 8
  %9 = call i32* @strstr(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = call i64 @hex_to_tid(i32* %10)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i32 (i8*, i64, ...) @KDDBGPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32* @find_thread(i64 %15, i64 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @send_gdb_packet(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %24

22:                                               ; preds = %0
  %23 = call i32 @send_gdb_packet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @hex_to_pid(i32*) #1

declare dso_local i64 @hex_to_tid(i32*) #1

declare dso_local i32* @strstr(i32*, i8*) #1

declare dso_local i32 @KDDBGPRINT(i8*, i64, ...) #1

declare dso_local i32* @find_thread(i64, i64) #1

declare dso_local i32 @send_gdb_packet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
