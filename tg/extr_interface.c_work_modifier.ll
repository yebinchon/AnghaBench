; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_work_modifier.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_work_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"[offline]\00", align 1
@offline_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"[reply=%d]\00", align 1
@reply_id = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[html]\00", align 1
@TGLMF_HTML = common dso_local global i32 0, align 4
@do_html = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"[disable_preview]\00", align 1
@TGL_SEND_MSG_FLAG_DISABLE_PREVIEW = common dso_local global i32 0, align 4
@disable_msg_preview = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"[enable_preview]\00", align 1
@TGL_SEND_MSG_FLAG_ENABLE_PREVIEW = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @work_modifier(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @is_same_word(i8* %5, i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* @offline_mode, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @reply_id)
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @is_same_word(i8* %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @TGLMF_HTML, align 4
  store i32 %21, i32* @do_html, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @is_same_word(i8* %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TGL_SEND_MSG_FLAG_DISABLE_PREVIEW, align 4
  store i32 %28, i32* @disable_msg_preview, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @is_same_word(i8* %30, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TGL_SEND_MSG_FLAG_ENABLE_PREVIEW, align 4
  store i32 %35, i32* @disable_msg_preview, align 4
  br label %36

36:                                               ; preds = %34, %29
  ret void
}

declare dso_local i64 @is_same_word(i8*, i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
