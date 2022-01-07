; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showlocks.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showlocks.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s FILENAME\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@MX_LCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"no locks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = call i32 @open(i8* %19, i32 %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %31)
  store i32 1, i32* %3, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MX_LCK, align 4
  %36 = call i32 @showLocksInRange(i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %24, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @showLocksInRange(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
