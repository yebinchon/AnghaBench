; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_open_trace.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_open_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_trace.trace_file = internal global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"TIG_TRACE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@LOCK_EX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LOCK_UN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @open_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_trace(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** @open_trace.trace_file, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** @open_trace.trace_file, align 8
  %12 = load i8*, i8** @open_trace.trace_file, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** @open_trace.trace_file, align 8
  br label %15

15:                                               ; preds = %14, %10
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i8*, i8** @open_trace.trace_file, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %16
  %21 = load i8*, i8** @open_trace.trace_file, align 8
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_APPEND, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %21, i32 %26, i32 438)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LOCK_EX, align 4
  %30 = call i32 @flock(i32 %28, i32 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %59, %20
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @write(i32 %39, i8* %44, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @write(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %38
  br label %62

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %31

62:                                               ; preds = %57, %31
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @write(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %69, %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @LOCK_UN, align 4
  %76 = call i32 @flock(i32 %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %3, align 4
  br label %87

80:                                               ; preds = %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @LOCK_UN, align 4
  %83 = call i32 @flock(i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %16
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %80, %73
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
