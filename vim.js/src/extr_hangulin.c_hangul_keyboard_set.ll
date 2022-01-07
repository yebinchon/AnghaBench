; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_hangulin.c_hangul_keyboard_set.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_hangulin.c_hangul_keyboard_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"VIM_KEYBOARD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"HANGUL_KEYBOARD_TYPE\00", align 1
@hangul_keyboard_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hangul_keyboard_set() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @hangul_input_clear()
  %4 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 50
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 2, i32* %1, align 4
  br label %18

17:                                               ; preds = %11
  store i32 3, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %1, align 4
  store i32 %19, i32* @hangul_keyboard_type, align 4
  br label %20

20:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @hangul_input_clear(...) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
