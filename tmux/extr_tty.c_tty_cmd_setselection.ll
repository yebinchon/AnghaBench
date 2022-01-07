; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_setselection.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_setselection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i32 }

@TTYC_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_setselection(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TTYC_MS, align 4
  %11 = call i32 @tty_term_has(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 2
  %19 = sdiv i32 %18, 3
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @xmalloc(i64 %23)
  store i8* %24, i8** %5, align 8
  %25 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @b64_ntop(i32 %27, i32 %30, i8* %31, i64 %32)
  %34 = load %struct.tty*, %struct.tty** %3, align 8
  %35 = load i32, i32* @TTYC_MS, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @tty_putcode_ptr2(%struct.tty* %34, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  br label %40

40:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @b64_ntop(i32, i32, i8*, i64) #1

declare dso_local i32 @tty_putcode_ptr2(%struct.tty*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
