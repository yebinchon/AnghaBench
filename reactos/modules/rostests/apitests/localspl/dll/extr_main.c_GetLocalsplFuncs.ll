; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/dll/extr_main.c_GetLocalsplFuncs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/localspl/dll/extr_main.c_GetLocalsplFuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 108, i32 111, i32 99, i32 97, i32 108, i32 115, i32 112, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"GetModuleHandleW failed with error %u!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"InitializePrintProvidor\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"GetProcAddress failed with error %u!\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"pfnInitializePrintProvidor failed with error %u!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetLocalsplFuncs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (i32, i32, i32*)*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @GetModuleHandleW(i8* bitcast ([9 x i32]* @.str to i8*))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @GetLastError()
  %11 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32 (i32, i32, i32*)*
  store i32 (i32, i32, i32*)* %16, i32 (i32, i32, i32*)** %5, align 8
  %17 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %5, align 8
  %18 = icmp ne i32 (i32, i32, i32*)* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %13
  %24 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 %24(i32 %25, i32 4, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %28, %19, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @GetModuleHandleW(i8*) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
