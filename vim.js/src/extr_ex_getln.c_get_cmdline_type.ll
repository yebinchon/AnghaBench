; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_get_cmdline_type.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_get_cmdline_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_info = type { i32, i64 }

@NUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cmdline_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cmdline_info*, align 8
  %3 = call %struct.cmdline_info* (...) @get_ccline_ptr()
  store %struct.cmdline_info* %3, %struct.cmdline_info** %2, align 8
  %4 = load %struct.cmdline_info*, %struct.cmdline_info** %2, align 8
  %5 = icmp eq %struct.cmdline_info* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @NUL, align 4
  store i32 %7, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = load %struct.cmdline_info*, %struct.cmdline_info** %2, align 8
  %10 = getelementptr inbounds %struct.cmdline_info, %struct.cmdline_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NUL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.cmdline_info*, %struct.cmdline_info** %2, align 8
  %16 = getelementptr inbounds %struct.cmdline_info, %struct.cmdline_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 64, i32 45
  store i32 %20, i32* %1, align 4
  br label %25

21:                                               ; preds = %8
  %22 = load %struct.cmdline_info*, %struct.cmdline_info** %2, align 8
  %23 = getelementptr inbounds %struct.cmdline_info, %struct.cmdline_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %14, %6
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local %struct.cmdline_info* @get_ccline_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
