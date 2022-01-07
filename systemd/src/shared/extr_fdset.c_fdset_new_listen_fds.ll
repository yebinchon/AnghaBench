; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_fdset.c_fdset_new_listen_fds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_fdset.c_fdset_new_listen_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdset_new_listen_fds(i32** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i32 @assert(i32** %10)
  %12 = call i32* (...) @fdset_new()
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sd_listen_fds(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %36, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @fdset_put(i32* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %42

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32*, i32** %9, align 8
  %41 = load i32**, i32*** %4, align 8
  store i32* %40, i32** %41, align 8
  store i32 0, i32* %3, align 4
  br label %51

42:                                               ; preds = %34, %15
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @MAKE_SET(i32* %46)
  %48 = call i32 @set_free(i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32* @fdset_new(...) #1

declare dso_local i32 @sd_listen_fds(i32) #1

declare dso_local i32 @fdset_put(i32*, i32) #1

declare dso_local i32 @set_free(i32) #1

declare dso_local i32 @MAKE_SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
