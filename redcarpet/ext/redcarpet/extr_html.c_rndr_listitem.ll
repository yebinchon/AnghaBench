; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_listitem.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_listitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"<li>\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"</li>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_listitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_listitem(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.buf*, %struct.buf** %5, align 8
  %11 = call i32 @BUFPUTSL(%struct.buf* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.buf*, %struct.buf** %6, align 8
  %13 = icmp ne %struct.buf* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load %struct.buf*, %struct.buf** %6, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %33, %14
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.buf*, %struct.buf** %6, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi i1 [ false, %18 ], [ %30, %21 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %9, align 8
  br label %18

36:                                               ; preds = %31
  %37 = load %struct.buf*, %struct.buf** %5, align 8
  %38 = load %struct.buf*, %struct.buf** %6, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @bufput(%struct.buf* %37, i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %4
  %44 = load %struct.buf*, %struct.buf** %5, align 8
  %45 = call i32 @BUFPUTSL(%struct.buf* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
