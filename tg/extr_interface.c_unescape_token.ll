; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_unescape_token.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_unescape_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unescape_token.cur_token_buff = internal global [1048577 x i8] zeroinitializer, align 16
@cur_token_len = common dso_local global i32 0, align 4
@cur_token = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @unescape_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unescape_token(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* @cur_token_len, align 4
  store i8* getelementptr inbounds ([1048577 x i8], [1048577 x i8]* @unescape_token.cur_token_buff, i64 0, i64 0), i8** @cur_token, align 8
  br label %5

5:                                                ; preds = %70, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %9, label %73

9:                                                ; preds = %5
  %10 = load i32, i32* @cur_token_len, align 4
  %11 = icmp slt i32 %10, 1048576
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %62 [
    i32 92, label %17
  ]

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %53 [
    i32 110, label %23
    i32 114, label %29
    i32 116, label %35
    i32 98, label %41
    i32 97, label %47
  ]

23:                                               ; preds = %17
  %24 = load i8*, i8** @cur_token, align 8
  %25 = load i32, i32* @cur_token_len, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @cur_token_len, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 10, i8* %28, align 1
  br label %61

29:                                               ; preds = %17
  %30 = load i8*, i8** @cur_token, align 8
  %31 = load i32, i32* @cur_token_len, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @cur_token_len, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 13, i8* %34, align 1
  br label %61

35:                                               ; preds = %17
  %36 = load i8*, i8** @cur_token, align 8
  %37 = load i32, i32* @cur_token_len, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @cur_token_len, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 9, i8* %40, align 1
  br label %61

41:                                               ; preds = %17
  %42 = load i8*, i8** @cur_token, align 8
  %43 = load i32, i32* @cur_token_len, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @cur_token_len, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 8, i8* %46, align 1
  br label %61

47:                                               ; preds = %17
  %48 = load i8*, i8** @cur_token, align 8
  %49 = load i32, i32* @cur_token_len, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @cur_token_len, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 7, i8* %52, align 1
  br label %61

53:                                               ; preds = %17
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** @cur_token, align 8
  %57 = load i32, i32* @cur_token_len, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @cur_token_len, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 %55, i8* %60, align 1
  br label %61

61:                                               ; preds = %53, %47, %41, %35, %29, %23
  br label %70

62:                                               ; preds = %9
  %63 = load i8*, i8** %3, align 8
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** @cur_token, align 8
  %66 = load i32, i32* @cur_token_len, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @cur_token_len, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 %64, i8* %69, align 1
  br label %70

70:                                               ; preds = %62, %61
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  br label %5

73:                                               ; preds = %5
  %74 = load i8*, i8** @cur_token, align 8
  %75 = load i32, i32* @cur_token_len, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
