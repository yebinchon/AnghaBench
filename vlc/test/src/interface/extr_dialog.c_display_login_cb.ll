; ModuleID = '/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_display_login_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/interface/extr_dialog.c_display_login_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_answer = type { i32*, i64 }

@.str = private unnamed_addr constant [80 x i8] c"login dialog: title: '%s', text: '%s', default_username: '%s', b_ask_store: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i8*, i8*, i32)* @display_login_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_login_cb(i8* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cb_answer*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.cb_answer*
  store %struct.cb_answer* %15, %struct.cb_answer** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %18, i32 %19)
  %21 = load %struct.cb_answer*, %struct.cb_answer** %13, align 8
  %22 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @vlc_dialog_id_dismiss(i32* %26)
  br label %40

28:                                               ; preds = %6
  %29 = load %struct.cb_answer*, %struct.cb_answer** %13, align 8
  %30 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.cb_answer*, %struct.cb_answer** %13, align 8
  %36 = getelementptr inbounds %struct.cb_answer, %struct.cb_answer* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vlc_dialog_id_post_login(i32* %34, i32* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_dialog_id_dismiss(i32*) #1

declare dso_local i32 @vlc_dialog_id_post_login(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
