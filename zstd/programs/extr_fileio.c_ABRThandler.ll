; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_ABRThandler.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_ABRThandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STACK_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SIGINT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Caught %s signal, printing stack:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ZSTD_START_SYMBOLLIST_FRAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ABRThandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ABRThandler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAX_STACK_FRAMES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8*, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %20 [
    i32 132, label %15
    i32 131, label %16
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @MAX_STACK_FRAMES, align 4
  %25 = call i32 @backtrace(i8** %13, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %56

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = call i8** @backtrace_symbols(i8** %13, i32 %31)
  store i8** %32, i8*** %6, align 8
  %33 = load i32, i32* @ZSTD_START_SYMBOLLIST_FRAME, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %45, %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load i8**, i8*** %6, align 8
  %50 = call i32 @free(i8** %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SIG_DFL, align 4
  %53 = call i32 @signal(i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @raise(i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %48, %28
  %57 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DISPLAY(i8*, ...) #2

declare dso_local i32 @backtrace(i8**, i32) #2

declare dso_local i8** @backtrace_symbols(i8**, i32) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @raise(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
