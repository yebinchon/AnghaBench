; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_set_option_first.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_set_option_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"workshopkeys\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"savefiles\00", align 1
@save_files = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"balloon\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"balloondelay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_set_option_first(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @workshop_hotkeys(i32 %16)
  br label %47

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* @save_files, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @workshop_balloon_mode(i32 %29)
  br label %45

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @workshop_balloon_delay(i32 %38)
  br label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @workshop_set_option(i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @workshop_hotkeys(i32) #1

declare dso_local i32 @workshop_balloon_mode(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @workshop_balloon_delay(i32) #1

declare dso_local i32 @workshop_set_option(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
