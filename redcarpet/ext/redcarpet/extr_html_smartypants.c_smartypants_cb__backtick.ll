; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__backtick.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__backtick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i8, i8*, i64)* @smartypants_cb__backtick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__backtick(%struct.buf* %0, %struct.smartypants_data* %1, i8 signext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.smartypants_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %12, 2
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 96
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.buf*, %struct.buf** %7, align 8
  %22 = load i8, i8* %9, align 1
  %23 = load i64, i64* %11, align 8
  %24 = icmp uge i64 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ 0, %30 ]
  %33 = trunc i32 %32 to i8
  %34 = load %struct.smartypants_data*, %struct.smartypants_data** %8, align 8
  %35 = getelementptr inbounds %struct.smartypants_data, %struct.smartypants_data* %34, i32 0, i32 0
  %36 = call i64 @smartypants_quotes(%struct.buf* %21, i8 signext %22, i8 signext %33, i8 signext 100, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i64 1, i64* %6, align 8
  br label %46

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %14, %5
  %41 = load %struct.buf*, %struct.buf** %7, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @bufputc(%struct.buf* %41, i8 signext %44)
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %40, %38
  %47 = load i64, i64* %6, align 8
  ret i64 %47
}

declare dso_local i64 @smartypants_quotes(%struct.buf*, i8 signext, i8 signext, i8 signext, i32*) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
