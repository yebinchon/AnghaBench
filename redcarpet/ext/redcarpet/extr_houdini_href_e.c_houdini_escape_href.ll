; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_houdini_href_e.c_houdini_escape_href.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_houdini_href_e.c_houdini_escape_href.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@houdini_escape_href.hex_chars = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@HREF_SAFE = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"&#x27;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @houdini_escape_href(%struct.buf* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i8], align 1
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @ESCAPE_GROW_FACTOR(i64 %11)
  %13 = call i32 @bufgrow(%struct.buf* %10, i32 %12)
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 37, i8* %14, align 1
  br label %15

15:                                               ; preds = %86, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %36, %19
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64*, i64** @HREF_SAFE, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %21
  %35 = phi i1 [ false, %21 ], [ %33, %25 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %21

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.buf*, %struct.buf** %4, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 (%struct.buf*, ...) @bufput(%struct.buf* %44, i64* %47, i64 %50)
  br label %52

52:                                               ; preds = %43, %39
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %89

57:                                               ; preds = %52
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %65 [
    i64 39, label %62
  ]

62:                                               ; preds = %57
  %63 = load %struct.buf*, %struct.buf** %4, align 8
  %64 = call i32 @BUFPUTSL(%struct.buf* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %86

65:                                               ; preds = %57
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = lshr i64 %69, 4
  %71 = and i64 %70, 15
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* @houdini_escape_href.hex_chars, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, 15
  %80 = getelementptr inbounds [17 x i8], [17 x i8]* @houdini_escape_href.hex_chars, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  store i8 %81, i8* %82, align 1
  %83 = load %struct.buf*, %struct.buf** %4, align 8
  %84 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %85 = call i32 (%struct.buf*, ...) @bufput(%struct.buf* %83, i8* %84, i32 3)
  br label %86

86:                                               ; preds = %65, %62
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %15

89:                                               ; preds = %56, %15
  ret void
}

declare dso_local i32 @bufgrow(%struct.buf*, i32) #1

declare dso_local i32 @ESCAPE_GROW_FACTOR(i64) #1

declare dso_local i32 @bufput(%struct.buf*, ...) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
