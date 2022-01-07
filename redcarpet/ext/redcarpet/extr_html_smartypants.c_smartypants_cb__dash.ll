; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__dash.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__dash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"&mdash;\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"&ndash;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i8, i8*, i64)* @smartypants_cb__dash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__dash(%struct.buf* %0, %struct.smartypants_data* %1, i8 signext %2, i8* %3, i64 %4) #0 {
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
  %13 = icmp uge i64 %12, 3
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.buf*, %struct.buf** %7, align 8
  %28 = call i32 @BUFPUTSL(%struct.buf* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %47

29:                                               ; preds = %20, %14, %5
  %30 = load i64, i64* %11, align 8
  %31 = icmp uge i64 %30, 2
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.buf*, %struct.buf** %7, align 8
  %40 = call i32 @BUFPUTSL(%struct.buf* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %47

41:                                               ; preds = %32, %29
  %42 = load %struct.buf*, %struct.buf** %7, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @bufputc(%struct.buf* %42, i8 signext %45)
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %41, %38, %26
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
