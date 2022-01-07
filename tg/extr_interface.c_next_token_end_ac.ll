; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_next_token_end_ac.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_next_token_end_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_ptr = common dso_local global i8* null, align 8
@cur_token_quoted = common dso_local global i64 0, align 8
@cur_token = common dso_local global i8* null, align 8
@cur_token_len = common dso_local global i32 0, align 4
@force_end_mode = common dso_local global i32 0, align 4
@cur_token_end_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next_token_end_ac() #0 {
  %1 = call i32 (...) @skip_wspc()
  %2 = load i8*, i8** @line_ptr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %0
  %7 = load i8*, i8** @line_ptr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 34
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = load i8*, i8** @line_ptr, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 39
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  store i64 0, i64* @cur_token_quoted, align 8
  %17 = load i8*, i8** @line_ptr, align 8
  store i8* %17, i8** @cur_token, align 8
  br label %18

18:                                               ; preds = %22, %16
  %19 = load i8*, i8** @line_ptr, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** @line_ptr, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @line_ptr, align 8
  br label %18

25:                                               ; preds = %18
  %26 = load i8*, i8** @line_ptr, align 8
  %27 = load i8*, i8** @cur_token, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @cur_token_len, align 4
  %32 = load i32, i32* @cur_token_len, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @force_end_mode, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @cur_token_end_str, align 4
  br label %55

40:                                               ; preds = %11, %6, %0
  %41 = load i8*, i8** @line_ptr, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call i32 (...) @next_token()
  %46 = call i32 (...) @skip_wspc()
  %47 = load i8*, i8** @line_ptr, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* @cur_token_len, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %54

52:                                               ; preds = %40
  %53 = call i32 (...) @next_token()
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %25, %54
  ret void
}

declare dso_local i32 @skip_wspc(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @next_token(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
