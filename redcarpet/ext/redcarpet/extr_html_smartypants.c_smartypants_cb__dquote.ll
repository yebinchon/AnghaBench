; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__dquote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__dquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i32, i32*, i64)* @smartypants_cb__dquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__dquote(%struct.buf* %0, %struct.smartypants_data* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.smartypants_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.buf*, %struct.buf** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i64, i64* %10, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  %22 = load %struct.smartypants_data*, %struct.smartypants_data** %7, align 8
  %23 = getelementptr inbounds %struct.smartypants_data, %struct.smartypants_data* %22, i32 0, i32 0
  %24 = call i32 @smartypants_quotes(%struct.buf* %11, i32 %12, i32 %21, i8 signext 100, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.buf*, %struct.buf** %6, align 8
  %28 = call i32 @BUFPUTSL(%struct.buf* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  ret i64 0
}

declare dso_local i32 @smartypants_quotes(%struct.buf*, i32, i32, i8 signext, i32*) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
