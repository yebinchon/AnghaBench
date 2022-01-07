; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_process_menuItem.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_process_menuItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_menuItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_menuItem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 9
  %12 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i8* @strtok(i8* %11, i32 %12)
  store i8* %13, i8** %3, align 8
  %14 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i8* @strtok(i8* null, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i8* @strtok(i8* null, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = call i8* @strtok(i8* null, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = call i8* @strtok(i8* null, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i8* @strtok(i8* null, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = call i32 @NOCATGETS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i8* @strtok(i8* null, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @workshop_menu_item(i8* %38, i8* %39, i8* %40, i8* %41, i8* %42, i8* %43, i8* %44)
  ret void
}

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @NOCATGETS(i8*) #1

declare dso_local i32 @workshop_menu_item(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
