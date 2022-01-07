; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_add_color.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_add_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }

@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid color definition %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @add_color(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 7
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 9
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @CMD_INVALID, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.cmd_results* @cmd_results_new(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17)
  store %struct.cmd_results* %18, %struct.cmd_results** %3, align 8
  br label %64

19:                                               ; preds = %12, %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 35
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @CMD_INVALID, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.cmd_results* @cmd_results_new(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %64

29:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @isxdigit(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @CMD_INVALID, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call %struct.cmd_results* @cmd_results_new(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %44)
  store %struct.cmd_results* %45, %struct.cmd_results** %3, align 8
  br label %64

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcpy(i8* %51, i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 7
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  store i8 102, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8 102, i8* %60, align 1
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 9
  store i8 0, i8* %63, align 1
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %64

64:                                               ; preds = %61, %42, %25, %15
  %65 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %65
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
