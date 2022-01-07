; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_next_token.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_token_end_str = common dso_local global i32 0, align 4
@cur_token_quoted = common dso_local global i32 0, align 4
@line_ptr = common dso_local global i8* null, align 8
@cur_token_len = common dso_local global i32 0, align 4
@cur_token = common dso_local global i8* null, align 8
@force_end_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_token() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @skip_wspc()
  store i32 0, i32* @cur_token_end_str, align 4
  store i32 0, i32* @cur_token_quoted, align 4
  %5 = load i8*, i8** @line_ptr, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* @cur_token_len, align 4
  store i32 1, i32* @cur_token_end_str, align 4
  br label %101

9:                                                ; preds = %0
  %10 = load i8*, i8** @line_ptr, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %1, align 1
  %12 = load i8*, i8** @line_ptr, align 8
  store i8* %12, i8** %2, align 8
  %13 = load i8, i8* %1, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load i8, i8* %1, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %67

20:                                               ; preds = %16, %9
  store i32 1, i32* @cur_token_quoted, align 4
  %21 = load i8*, i8** @line_ptr, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** @line_ptr, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %51, %20
  %24 = load i8*, i8** @line_ptr, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** @line_ptr, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* %1, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br label %38

38:                                               ; preds = %31, %28
  %39 = phi i1 [ true, %28 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi i1 [ false, %23 ], [ %39, %38 ]
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = load i8*, i8** @line_ptr, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 1, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i8*, i8** @line_ptr, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** @line_ptr, align 8
  br label %23

54:                                               ; preds = %40
  %55 = load i8*, i8** @line_ptr, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 -2, i32* @cur_token_len, align 4
  br label %66

59:                                               ; preds = %54
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** @line_ptr, align 8
  %63 = call i32 @unescape_token(i8* %61, i8* %62)
  %64 = load i8*, i8** @line_ptr, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** @line_ptr, align 8
  br label %66

66:                                               ; preds = %59, %58
  br label %101

67:                                               ; preds = %16
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i8*, i8** @line_ptr, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** @line_ptr, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %76, 32
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** @line_ptr, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** @line_ptr, align 8
  br label %68

83:                                               ; preds = %78
  %84 = load i8*, i8** %2, align 8
  store i8* %84, i8** @cur_token, align 8
  %85 = load i8*, i8** @line_ptr, align 8
  %86 = load i8*, i8** %2, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* @cur_token_len, align 4
  %91 = load i32, i32* @force_end_mode, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  %94 = load i8*, i8** @line_ptr, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br label %98

98:                                               ; preds = %93, %83
  %99 = phi i1 [ false, %83 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* @cur_token_end_str, align 4
  br label %101

101:                                              ; preds = %8, %98, %66
  ret void
}

declare dso_local i32 @skip_wspc(...) #1

declare dso_local i32 @unescape_token(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
