; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_interpreter_chat_mode.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_interpreter_chat_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/exit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@in_chat_mode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"/history\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/history %99d\00", align 1
@TLS = common dso_local global i32 0, align 4
@chat_mode_id = common dso_local global i32 0, align 4
@offline_mode = common dso_local global i32 0, align 4
@print_msg_list_gw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"/read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpreter_chat_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %6, %1
  store i64 0, i64* @in_chat_mode, align 8
  %15 = call i32 (...) @update_prompt()
  br label %55

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  store i32 40, i32* %3, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 1000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %20
  store i32 40, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* @TLS, align 4
  %31 = load i32, i32* @chat_mode_id, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @offline_mode, align 4
  %34 = load i32, i32* @print_msg_list_gw, align 4
  %35 = call i32 @tgl_do_get_history(i32 %30, i32 %31, i32 0, i32 %32, i32 %33, i32 %34, i32 0)
  br label %55

36:                                               ; preds = %16
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @TLS, align 4
  %42 = load i32, i32* @chat_mode_id, align 4
  %43 = call i32 @tgl_do_mark_read(i32 %41, i32 %42, i32 0, i32 0)
  br label %55

44:                                               ; preds = %36
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @TLS, align 4
  %50 = load i32, i32* @chat_mode_id, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = call i32 @tgl_do_send_message(i32 %49, i32 %50, i8* %51, i64 %53, i32 0, i32* null, i32 0, i32 0)
  br label %55

55:                                               ; preds = %14, %29, %40, %48, %44
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @update_prompt(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @tgl_do_get_history(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tgl_do_mark_read(i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tgl_do_send_message(i32, i32, i8*, i64, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
