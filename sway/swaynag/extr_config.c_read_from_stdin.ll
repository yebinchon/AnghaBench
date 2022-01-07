; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_config.c_read_from_stdin.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_config.c_read_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @read_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_from_stdin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32 @getline(i8** %3, i64* %4, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load i8*, i8** %1, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i8* @realloc(i8* %11, i32 %17)
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @snprintf(i8* %21, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %2, align 8
  br label %6

30:                                               ; preds = %6
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %46, %30
  %34 = load i8*, i8** %1, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %1, align 8
  %38 = load i64, i64* %2, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i1 [ false, %33 ], [ %43, %36 ]
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load i8*, i8** %1, align 8
  %48 = load i64, i64* %2, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %2, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %33

51:                                               ; preds = %44
  %52 = load i8*, i8** %1, align 8
  ret i8* %52
}

declare dso_local i32 @getline(i8**, i64*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
