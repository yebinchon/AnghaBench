; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_unscape_text.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_unscape_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*)* @unscape_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unscape_text(%struct.buf* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %58, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.buf*, %struct.buf** %4, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %13
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.buf*, %struct.buf** %4, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.buf*, %struct.buf** %4, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 92
  br label %30

30:                                               ; preds = %21, %15
  %31 = phi i1 [ false, %15 ], [ %29, %21 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %15

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.buf*, %struct.buf** %3, align 8
  %41 = load %struct.buf*, %struct.buf** %4, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %46, %47
  %49 = call i32 @bufput(%struct.buf* %40, i8* %45, i64 %48)
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  %53 = load %struct.buf*, %struct.buf** %4, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %70

58:                                               ; preds = %50
  %59 = load %struct.buf*, %struct.buf** %3, align 8
  %60 = load %struct.buf*, %struct.buf** %4, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @bufputc(%struct.buf* %59, i8 signext %66)
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 2
  store i64 %69, i64* %5, align 8
  br label %7

70:                                               ; preds = %57, %7
  ret void
}

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
