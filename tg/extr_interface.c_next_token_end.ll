; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_next_token_end.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_next_token_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_ptr = common dso_local global i8* null, align 8
@cur_token_quoted = common dso_local global i64 0, align 8
@cur_token = common dso_local global i8* null, align 8
@cur_token_len = common dso_local global i32 0, align 4
@force_end_mode = common dso_local global i32 0, align 4
@cur_token_end_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next_token_end() #0 {
  %1 = call i32 (...) @skip_wspc()
  %2 = load i8*, i8** @line_ptr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %0
  %7 = load i8*, i8** @line_ptr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 34
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load i8*, i8** @line_ptr, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 39
  br i1 %15, label %16, label %58

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
  br label %32

32:                                               ; preds = %46, %25
  %33 = load i8*, i8** @cur_token, align 8
  %34 = load i32, i32* @cur_token_len, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @cur_token_len, align 4
  %43 = icmp sge i32 %42, 0
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ false, %32 ], [ %43, %41 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* @cur_token_len, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @cur_token_len, align 4
  br label %32

49:                                               ; preds = %44
  %50 = load i32, i32* @cur_token_len, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @force_end_mode, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @cur_token_end_str, align 4
  br label %73

58:                                               ; preds = %11, %6, %0
  %59 = load i8*, i8** @line_ptr, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = call i32 (...) @next_token()
  %64 = call i32 (...) @skip_wspc()
  %65 = load i8*, i8** @line_ptr, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* @cur_token_len, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %72

70:                                               ; preds = %58
  %71 = call i32 (...) @next_token()
  br label %72

72:                                               ; preds = %70, %69
  br label %73

73:                                               ; preds = %49, %72
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
