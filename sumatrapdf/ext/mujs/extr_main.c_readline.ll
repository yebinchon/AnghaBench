; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_readline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readline.line = internal global [500 x i8] zeroinitializer, align 16
@readline.p = internal global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @readline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fputs(i8* %5, i32 %6)
  %8 = load i32, i32* @stdin, align 4
  %9 = call i8* @fgets(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @readline.line, i64 0, i64 0), i32 500, i32 %8)
  store i8* %9, i8** @readline.p, align 8
  %10 = load i8*, i8** @readline.p, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = call i32 @strlen(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @readline.line, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [500 x i8], [500 x i8]* @readline.line, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [500 x i8], [500 x i8]* @readline.line, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %24, %16, %12
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** @readline.p, align 8
  %33 = load i8*, i8** @readline.p, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @memcpy(i8* %33, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @readline.line, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** @readline.p, align 8
  store i8* %37, i8** %2, align 8
  br label %39

38:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
