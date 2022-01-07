; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc2.c_crypt_pop_state.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc2.c_crypt_pop_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypt_busy = common dso_local global i32 0, align 4
@saved_crypt_method = common dso_local global i64 0, align 8
@use_crypt_method = common dso_local global i64 0, align 8
@saved_keys = common dso_local global i32* null, align 8
@keys = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypt_pop_state() #0 {
  %1 = load i32, i32* @crypt_busy, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @crypt_busy, align 4
  %3 = load i32, i32* @crypt_busy, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load i64, i64* @saved_crypt_method, align 8
  store i64 %6, i64* @use_crypt_method, align 8
  %7 = load i64, i64* @use_crypt_method, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32*, i32** @saved_keys, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @keys, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** @saved_keys, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @keys, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** @saved_keys, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @keys, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %22, i32* %24, align 4
  br label %27

25:                                               ; preds = %5
  %26 = call i32 (...) @bf_crypt_restore()
  br label %27

27:                                               ; preds = %25, %9
  br label %28

28:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @bf_crypt_restore(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
