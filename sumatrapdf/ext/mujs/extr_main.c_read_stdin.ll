; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_read_stdin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_read_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot allocate storage for stdin contents\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @read_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_stdin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i32 512, i32* %3, align 4
  store i8* null, i8** %4, align 8
  br label %6

6:                                                ; preds = %38, %0
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @realloc(i8* %7, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @free(i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %56

17:                                               ; preds = %6
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @stdin, align 4
  %28 = call i64 @fread(i8* %22, i32 1, i32 %26, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  br label %41

38:                                               ; preds = %17
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %3, align 4
  br label %6

41:                                               ; preds = %37
  %42 = load i32, i32* @stdin, align 4
  %43 = call i64 @ferror(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %56

50:                                               ; preds = %41
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %1, align 8
  br label %56

56:                                               ; preds = %50, %45, %12
  %57 = load i8*, i8** %1, align 8
  ret i8* %57
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
