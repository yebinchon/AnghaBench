; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_scroll_up.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_msg_scroll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Rows = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@Columns = common dso_local global i32 0, align 4
@ScreenAttrs = common dso_local global i64* null, align 8
@LineOffset = common dso_local global i32* null, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @msg_scroll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_scroll_up() #0 {
  %1 = load i32, i32* @Rows, align 4
  %2 = load i32, i32* @TRUE, align 4
  %3 = call i32 @screen_del_lines(i32 0, i32 0, i32 1, i32 %1, i32 %2, i32* null)
  %4 = call i32 @can_clear(i32* bitcast ([2 x i8]* @.str to i32*))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @Rows, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* @Rows, align 4
  %10 = load i32, i32* @Columns, align 4
  %11 = call i32 @screen_fill(i32 %8, i32 %9, i32 0, i32 %10, i8 signext 32, i8 signext 32, i32 0)
  %12 = load i64*, i64** @ScreenAttrs, align 8
  %13 = load i32*, i32** @LineOffset, align 8
  %14 = load i32, i32* @Rows, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @Columns, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %12, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load i32, i32* @Rows, align 4
  %28 = sub nsw i32 %27, 2
  %29 = load i32, i32* @Rows, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @Columns, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* @Columns, align 4
  %34 = call i32 @screen_fill(i32 %28, i32 %30, i32 %32, i32 %33, i8 signext 32, i8 signext 32, i32 0)
  br label %35

35:                                               ; preds = %26, %6
  br label %36

36:                                               ; preds = %35, %0
  ret void
}

declare dso_local i32 @screen_del_lines(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @can_clear(i32*) #1

declare dso_local i32 @screen_fill(i32, i32, i32, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
