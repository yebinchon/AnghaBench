; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_list.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i8* }

@MKD_LIST_ORDERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<ol>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<ul>\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"</ol>\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"</ul>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_list(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.buf*, %struct.buf** %5, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = call i32 @bufputc(%struct.buf* %14, i8 signext 10)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MKD_LIST_ORDERED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %24 = call i32 @bufput(%struct.buf* %17, i8* %23, i32 5)
  %25 = load %struct.buf*, %struct.buf** %6, align 8
  %26 = icmp ne %struct.buf* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.buf*, %struct.buf** %5, align 8
  %29 = load %struct.buf*, %struct.buf** %6, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.buf*, %struct.buf** %6, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bufput(%struct.buf* %28, i8* %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.buf*, %struct.buf** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MKD_LIST_ORDERED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 @bufput(%struct.buf* %37, i8* %43, i32 6)
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
