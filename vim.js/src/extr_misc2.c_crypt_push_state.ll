; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc2.c_crypt_push_state.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc2.c_crypt_push_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypt_busy = common dso_local global i32 0, align 4
@use_crypt_method = common dso_local global i64 0, align 8
@keys = common dso_local global i32* null, align 8
@saved_keys = common dso_local global i32* null, align 8
@saved_crypt_method = common dso_local global i64 0, align 8
@e_intern2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"crypt_push_state()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypt_push_state() #0 {
  %1 = load i32, i32* @crypt_busy, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = load i64, i64* @use_crypt_method, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i32*, i32** @keys, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @saved_keys, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** @keys, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @saved_keys, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** @keys, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @saved_keys, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  br label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @bf_crypt_save()
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i64, i64* @use_crypt_method, align 8
  store i64 %25, i64* @saved_crypt_method, align 8
  br label %34

26:                                               ; preds = %0
  %27 = load i32, i32* @crypt_busy, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @e_intern2, align 4
  %31 = call i32 @_(i32 %30)
  %32 = call i32 @EMSG2(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* @crypt_busy, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @crypt_busy, align 4
  ret void
}

declare dso_local i32 @bf_crypt_save(...) #1

declare dso_local i32 @EMSG2(i32, i8*) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
