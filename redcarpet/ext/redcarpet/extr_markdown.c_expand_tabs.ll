; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_expand_tabs.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_expand_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i8*, i64)* @expand_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_tabs(%struct.buf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %62, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %29, %14
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 9
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %16

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @bufput(%struct.buf* %39, i8* %42, i64 %45)
  br label %47

47:                                               ; preds = %38, %34
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %65

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %58, %52
  %54 = load %struct.buf*, %struct.buf** %4, align 8
  %55 = call i32 @bufputc(%struct.buf* %54, i8 signext 32)
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %8, align 8
  %60 = urem i64 %59, 4
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %53, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %10

65:                                               ; preds = %51, %10
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
