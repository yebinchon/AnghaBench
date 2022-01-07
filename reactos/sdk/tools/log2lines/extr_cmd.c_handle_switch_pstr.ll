; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cmd.c_handle_switch_pstr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cmd.c_handle_switch_pstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KDBG_ESC_OFF = common dso_local global i8* null, align 8
@LINESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s is \22%s\22 (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unchanged\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"(readonly)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i8*)* @handle_switch_pstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_switch_pstr(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** @KDBG_ESC_OFF, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8**, i8*** %6, align 8
  store i8* null, i8** %30, align 8
  br label %53

31:                                               ; preds = %16
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @LINESIZE, align 4
  %37 = call i8* @malloc(i32 %36)
  %38 = load i8**, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i8*, i8** %7, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %42, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %12
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %67 = call i32 (i32*, i8*, ...) @esclog(i32* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %62, i8* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 (i32*, i8*, ...) @esclog(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %58
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @esclog(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
