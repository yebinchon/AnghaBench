; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_comment_length.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_comment_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @vlc_http_comment_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_http_comment_length(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 40
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %63

12:                                               ; preds = %1
  store i64 1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  br label %13

13:                                               ; preds = %58, %12
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 41
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %5, align 8
  br label %57

27:                                               ; preds = %16
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 40
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %56

34:                                               ; preds = %27
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i64 0, i64* %2, align 8
  br label %63

48:                                               ; preds = %38
  br label %55

49:                                               ; preds = %34
  %50 = load i8, i8* %6, align 1
  %51 = call i32 @vlc_http_isctext(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i64 0, i64* %2, align 8
  br label %63

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %31
  br label %57

57:                                               ; preds = %56, %24
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %13

61:                                               ; preds = %13
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %61, %53, %47, %11
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @vlc_http_isctext(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
