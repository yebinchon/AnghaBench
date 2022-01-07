; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_houdini_html_e.c_houdini_escape_html0.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_houdini_html_e.c_houdini_escape_html0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@HTML_ESCAPE_TABLE = common dso_local global i64* null, align 8
@HTML_ESCAPES = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @houdini_escape_html0(%struct.buf* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.buf*, %struct.buf** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @ESCAPE_GROW_FACTOR(i64 %13)
  %15 = call i32 @bufgrow(%struct.buf* %12, i32 %14)
  br label %16

16:                                               ; preds = %77, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %37, %20
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i64*, i64** @HTML_ESCAPE_TABLE, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %26, %22
  %36 = phi i1 [ false, %22 ], [ %34, %26 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %22

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.buf*, %struct.buf** %5, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @bufput(%struct.buf* %45, i64* %48, i64 %51)
  br label %53

53:                                               ; preds = %44, %40
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %80

58:                                               ; preds = %53
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 47
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.buf*, %struct.buf** %5, align 8
  %69 = call i32 @bufputc(%struct.buf* %68, i8 signext 47)
  br label %77

70:                                               ; preds = %64, %58
  %71 = load %struct.buf*, %struct.buf** %5, align 8
  %72 = load i32*, i32** @HTML_ESCAPES, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bufputs(%struct.buf* %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %16

80:                                               ; preds = %57, %16
  ret void
}

declare dso_local i32 @bufgrow(%struct.buf*, i32) #1

declare dso_local i32 @ESCAPE_GROW_FACTOR(i64) #1

declare dso_local i32 @bufput(%struct.buf*, i64*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @bufputs(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
