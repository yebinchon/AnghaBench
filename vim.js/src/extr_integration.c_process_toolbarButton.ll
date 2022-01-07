; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_process_toolbarButton.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_process_toolbarButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_toolbarButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_toolbarButton(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 14
  %13 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* @strtok(i8* %12, i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = call i8* @strtok(i8* null, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i8* @strtok(i8* null, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = call i8* @strtok(i8* null, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = call i8* @strtok(i8* null, i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = call i8* @strtok(i8* null, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = call i8* @strtok(i8* null, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i8* @strtok(i8* null, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @strcmp(i8* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @strcmp(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i8* null, i8** %7, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @strcmp(i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i8* null, i8** %9, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @strcmp(i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i8* null, i8** %5, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @workshop_toolbar_button(i8* %53, i8* %54, i8* %55, i8* %56, i8* %57, i8* %58, i8* %59, i8* %60)
  ret void
}

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @NOCATGETS(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @workshop_toolbar_button(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
