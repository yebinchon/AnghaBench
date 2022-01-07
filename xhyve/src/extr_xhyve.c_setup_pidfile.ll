; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_setup_pidfile.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_setup_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pidfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set up pidfile\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_pidfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [21 x i8], align 16
  %6 = load i32*, i32** @pidfile, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %56

9:                                                ; preds = %0
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %53

17:                                               ; preds = %9
  %18 = load i32*, i32** @pidfile, align 8
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = load i32, i32* @O_EXCL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i32* %18, i32 %23, i32 420)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %53

28:                                               ; preds = %17
  %29 = call i32 @atexit(i32 (...)* @remove_pidfile)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @close(i32 %33)
  %35 = call i32 (...) @remove_pidfile()
  br label %53

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = call i64 @write(i32 %37, i8* %38, i32 %40)
  %42 = icmp sgt i64 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @close(i32 %44)
  br label %53

46:                                               ; preds = %36
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @close(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %56

53:                                               ; preds = %51, %43, %32, %27, %16
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %52, %8
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i32*, i32, i32) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @remove_pidfile(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
