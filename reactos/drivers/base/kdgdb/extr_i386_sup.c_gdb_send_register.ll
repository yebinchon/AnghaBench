; ModuleID = '/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_i386_sup.c_gdb_send_register.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/base/kdgdb/extr_i386_sup.c_gdb_send_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gdb_input = common dso_local global i32* null, align 8
@gdb_dbg_pid = common dso_local global i64 0, align 8
@gdb_dbg_tid = common dso_local global i64 0, align 8
@CurrentStateChange = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CurrentContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"E03\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"xxxxxxxx\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"KDDBG : Sending registers as memory.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_send_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = load i32*, i32** @gdb_input, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hex_value(i32 %8)
  %10 = shl i32 %9, 4
  %11 = load i32*, i32** @gdb_input, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hex_value(i32 %13)
  %15 = or i32 %10, %14
  store i32 %15, i32* %2, align 4
  %16 = load i64, i64* @gdb_dbg_pid, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i64, i64* @gdb_dbg_tid, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %0
  %22 = load i64, i64* @gdb_dbg_tid, align 8
  %23 = call i64 @gdb_tid_to_handle(i64 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CurrentStateChange, i32 0, i32 0), align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i64 @PsGetThreadId(i32* %25)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %2, align 4
  %30 = call i8* @ctx_to_reg(i32* @CurrentContext, i32 %29, i16* %4)
  store i8* %30, i8** %3, align 8
  br label %43

31:                                               ; preds = %21
  %32 = load i64, i64* @gdb_dbg_pid, align 8
  %33 = load i64, i64* @gdb_dbg_tid, align 8
  %34 = call i32* @find_thread(i64 %32, i64 %33)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @send_gdb_packet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i8* @thread_to_reg(i32* %40, i32 %41, i16* %4)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i8*, i8** %3, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @send_gdb_packet(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %1, align 4
  br label %53

48:                                               ; preds = %43
  %49 = call i32 @KDDBGPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %3, align 8
  %51 = load i16, i16* %4, align 2
  %52 = call i32 @send_gdb_memory(i8* %50, i16 zeroext %51)
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %48, %46, %37
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @hex_value(i32) #1

declare dso_local i64 @gdb_tid_to_handle(i64) #1

declare dso_local i64 @PsGetThreadId(i32*) #1

declare dso_local i8* @ctx_to_reg(i32*, i32, i16*) #1

declare dso_local i32* @find_thread(i64, i64) #1

declare dso_local i32 @send_gdb_packet(i8*) #1

declare dso_local i8* @thread_to_reg(i32*, i32, i16*) #1

declare dso_local i32 @KDDBGPRINT(i8*) #1

declare dso_local i32 @send_gdb_memory(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
