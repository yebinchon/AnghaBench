; ModuleID = '/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_display_question_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_display_question_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_answer = type { i32, i64 }

@.str = private unnamed_addr constant [96 x i8] c"question dialog: title: '%s', text: '%s', type: %d, cancel: '%s', action1: '%s', action2: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i8*, i32, i8*, i8*, i8*)* @display_question_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_question_cb(i8* %0, i32* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.cb_answer*, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.cb_answer*
  store %struct.cb_answer* %19, %struct.cb_answer** %17, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i32 %22, i8* %23, i8* %24, i8* %25)
  %27 = load %struct.cb_answer*, %struct.cb_answer** %17, align 8
  %28 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @vlc_dialog_id_dismiss(i32* %32)
  br label %46

34:                                               ; preds = %8
  %35 = load %struct.cb_answer*, %struct.cb_answer** %17, align 8
  %36 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.cb_answer*, %struct.cb_answer** %17, align 8
  %42 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vlc_dialog_id_post_action(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %31
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @vlc_dialog_id_dismiss(i32*) #1

declare dso_local i32 @vlc_dialog_id_post_action(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
