; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_logStackTrace.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_logStackTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"EIP:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0ABacktrace:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logStackTrace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [101 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 (...) @openDirectLogFiledes()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = getelementptr inbounds [101 x i8*], [101 x i8*]* %3, i64 0, i64 0
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = call i32 @backtrace(i8** %14, i32 100)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @getMcontextEip(i32* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 @write(i32 %20, i8* %21, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @getMcontextEip(i32* %28)
  %30 = bitcast i32* %29 to i8*
  %31 = getelementptr inbounds [101 x i8*], [101 x i8*]* %3, i64 0, i64 0
  store i8* %30, i8** %31, align 16
  %32 = getelementptr inbounds [101 x i8*], [101 x i8*]* %3, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @backtrace_symbols_fd(i8** %32, i32 1, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @write(i32 %35, i8* %36, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %12
  %44 = getelementptr inbounds [101 x i8*], [101 x i8*]* %3, i64 0, i64 0
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @backtrace_symbols_fd(i8** %45, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @closeDirectLogFiledes(i32 %49)
  br label %51

51:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @openDirectLogFiledes(...) #1

declare dso_local i32 @backtrace(i8**, i32) #1

declare dso_local i32* @getMcontextEip(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @backtrace_symbols_fd(i8**, i32, i32) #1

declare dso_local i32 @closeDirectLogFiledes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
