; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_table.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"<table><thead>\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"</thead><tbody>\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"</tbody></table>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, %struct.buf*, i8*)* @rndr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_table(%struct.buf* %0, %struct.buf* %1, %struct.buf* %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store %struct.buf* %2, %struct.buf** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.buf*, %struct.buf** %5, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = call i32 @bufputc(%struct.buf* %14, i8 signext 10)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = call i32 @BUFPUTSL(%struct.buf* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.buf*, %struct.buf** %6, align 8
  %20 = icmp ne %struct.buf* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.buf*, %struct.buf** %5, align 8
  %23 = load %struct.buf*, %struct.buf** %6, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.buf*, %struct.buf** %6, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bufput(%struct.buf* %22, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.buf*, %struct.buf** %5, align 8
  %32 = call i32 @BUFPUTSL(%struct.buf* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.buf*, %struct.buf** %7, align 8
  %34 = icmp ne %struct.buf* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.buf*, %struct.buf** %5, align 8
  %37 = load %struct.buf*, %struct.buf** %7, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.buf*, %struct.buf** %7, align 8
  %41 = getelementptr inbounds %struct.buf, %struct.buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bufput(%struct.buf* %36, i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.buf*, %struct.buf** %5, align 8
  %46 = call i32 @BUFPUTSL(%struct.buf* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
