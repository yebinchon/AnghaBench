; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_rdjpgcom.c_process_COM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_rdjpgcom.c_process_COM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_COM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_COM(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @read_2_bytes()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @ERREXIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %3, align 4
  %13 = sub i32 %12, 2
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %59, %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = call i32 (...) @read_1_byte()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @putc(i32 %22, i32 %23)
  br label %59

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %58

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 13
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  br label %57

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 92
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @isprint(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @putc(i32 %49, i32 %50)
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %14

63:                                               ; preds = %14
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @read_2_bytes(...) #1

declare dso_local i32 @ERREXIT(i8*) #1

declare dso_local i32 @read_1_byte(...) #1

declare dso_local i32 @putc(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
