; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_display_error_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_display_error_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VLC_MSG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_dialog_display_error_va(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %13, %4
  %20 = phi i1 [ false, %13 ], [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @get_dialog_provider(i32* %23, i32 1)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dialog_display_error_va(i32* %28, i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @msg_Err(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @VLC_MSG_ERR, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @msg_GenericVa(i32* %43, i32 %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_dialog_provider(i32*, i32) #1

declare dso_local i32 @dialog_display_error_va(i32*, i8*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @msg_GenericVa(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
