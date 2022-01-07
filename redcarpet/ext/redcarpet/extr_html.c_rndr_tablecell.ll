; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_tablecell.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_tablecell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }

@MKD_TABLE_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"<th\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<td\00", align 1
@MKD_TABLE_ALIGNMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c" style=\22text-align: center\22>\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" style=\22text-align: left\22>\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" style=\22text-align: right\22>\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"</th>\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"</td>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_tablecell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_tablecell(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MKD_TABLE_HEADER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = call i32 @BUFPUTSL(%struct.buf* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %19

16:                                               ; preds = %4
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = call i32 @BUFPUTSL(%struct.buf* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MKD_TABLE_ALIGNMASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %32 [
    i32 130, label %23
    i32 129, label %26
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load %struct.buf*, %struct.buf** %5, align 8
  %25 = call i32 @BUFPUTSL(%struct.buf* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.buf*, %struct.buf** %5, align 8
  %28 = call i32 @BUFPUTSL(%struct.buf* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.buf*, %struct.buf** %5, align 8
  %31 = call i32 @BUFPUTSL(%struct.buf* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.buf*, %struct.buf** %5, align 8
  %34 = call i32 @BUFPUTSL(%struct.buf* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29, %26, %23
  %36 = load %struct.buf*, %struct.buf** %6, align 8
  %37 = icmp ne %struct.buf* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.buf*, %struct.buf** %5, align 8
  %40 = load %struct.buf*, %struct.buf** %6, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.buf*, %struct.buf** %6, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bufput(%struct.buf* %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MKD_TABLE_HEADER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.buf*, %struct.buf** %5, align 8
  %54 = call i32 @BUFPUTSL(%struct.buf* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.buf*, %struct.buf** %5, align 8
  %57 = call i32 @BUFPUTSL(%struct.buf* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
