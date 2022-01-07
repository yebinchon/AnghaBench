; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_get_recorded.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_get_recorded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@recordbuff = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@last_recorded_len = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@restart_edit = common dso_local global i64 0, align 8
@Ctrl_O = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @get_recorded() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i64* @get_buffcont(i32* @recordbuff, i32 %3)
  store i64* %4, i64** %1, align 8
  %5 = call i32 @free_buff(i32* @recordbuff)
  %6 = load i64*, i64** %1, align 8
  %7 = call i64 @STRLEN(i64* %6)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @last_recorded_len, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load i32, i32* @last_recorded_len, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* @NUL, align 8
  %18 = load i64*, i64** %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %12, %0
  %22 = load i64, i64* %2, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i64, i64* @restart_edit, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i64*, i64** %1, align 8
  %29 = load i64, i64* %2, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @Ctrl_O, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64, i64* @NUL, align 8
  %37 = load i64*, i64** %1, align 8
  %38 = load i64, i64* %2, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %27, %24, %21
  %42 = load i64*, i64** %1, align 8
  ret i64* %42
}

declare dso_local i64* @get_buffcont(i32*, i32) #1

declare dso_local i32 @free_buff(i32*) #1

declare dso_local i64 @STRLEN(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
