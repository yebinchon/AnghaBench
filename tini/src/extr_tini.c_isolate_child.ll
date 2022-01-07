; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_isolate_child.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_isolate_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"setpgid failed: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"tcsetpgrp failed: no tty (ok to proceed)\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"tcsetpgrp failed: no such device (ok to proceed)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"tcsetpgrp failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isolate_child() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @setpgid(i32 0, i32 0)
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* @errno, align 8
  %6 = call i32 @strerror(i64 %5)
  %7 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 1, i32* %1, align 4
  br label %32

8:                                                ; preds = %0
  %9 = load i32, i32* @STDIN_FILENO, align 4
  %10 = call i32 (...) @getpgrp()
  %11 = call i64 @tcsetpgrp(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOTTY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @PRINT_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %30

19:                                               ; preds = %13
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENXIO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @PRINT_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @strerror(i64 %26)
  %28 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 1, i32* %1, align 4
  br label %32

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %17
  br label %31

31:                                               ; preds = %30, %8
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %25, %4
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @setpgid(i32, i32) #1

declare dso_local i32 @PRINT_FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @tcsetpgrp(i32, i32) #1

declare dso_local i32 @getpgrp(...) #1

declare dso_local i32 @PRINT_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
