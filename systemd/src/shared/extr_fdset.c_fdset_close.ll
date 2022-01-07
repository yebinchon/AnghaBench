; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_fdset.c_fdset_close.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_fdset.c_fdset_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Closing set fd %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdset_close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @MAKE_SET(i32* %5)
  %7 = call i8* @set_steal_first(i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @PTR_TO_FD(i8* %10)
  %12 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @PTR_TO_FD(i8* %13)
  %15 = call i32 @close_nointr(i32 %14)
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local i8* @set_steal_first(i32) #1

declare dso_local i32 @MAKE_SET(i32*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @PTR_TO_FD(i8*) #1

declare dso_local i32 @close_nointr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
