; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/args/extr_args.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/args/extr_args.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@InputHandle = common dso_local global i8* null, align 8
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@OutputHandle = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"GetCommandLineA() %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"argc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Argv[%d]: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Argv[%d]: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @AllocConsole()
  %8 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %9 = call i8* @GetStdHandle(i32 %8)
  store i8* %9, i8** @InputHandle, align 8
  %10 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %11 = call i8* @GetStdHandle(i32 %10)
  store i8* %11, i8** @OutputHandle, align 8
  %12 = call i8* (...) @GetCommandLineA()
  %13 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i8* (...) @GetCommandLineA()
  %15 = call i32 (i8*, ...) @debug_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, ...) @debug_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @debug_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %23, i8* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @debug_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %30, i8* %35)
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %18

40:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @AllocConsole(...) #1

declare dso_local i8* @GetStdHandle(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @GetCommandLineA(...) #1

declare dso_local i32 @debug_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
