; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_hist_prev.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_hist_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hist_pos = common dso_local global i32 0, align 4
@HIST_SIZE = common dso_local global i32 0, align 4
@hist_buf = common dso_local global i8** null, align 8
@hist_last = common dso_local global i32 0, align 4
@hist_empty_elem = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @hist_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hist_prev() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %3 = load i32, i32* @hist_pos, align 4
  %4 = sub nsw i32 %3, 1
  %5 = load i32, i32* @HIST_SIZE, align 4
  %6 = add nsw i32 %4, %5
  %7 = load i32, i32* @HIST_SIZE, align 4
  %8 = srem i32 %6, %7
  store i32 %8, i32* %2, align 4
  %9 = load i8**, i8*** @hist_buf, align 8
  %10 = load i32, i32* @hist_pos, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @hist_last, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* @hist_pos, align 4
  %21 = load i8**, i8*** @hist_buf, align 8
  %22 = load i32, i32* @hist_pos, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %1, align 8
  br label %26

26:                                               ; preds = %19, %15, %0
  %27 = load i8*, i8** %1, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** @hist_empty_elem, align 8
  store i8* %30, i8** %1, align 8
  %31 = call i32 (...) @gl_beep()
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** %1, align 8
  ret i8* %33
}

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
