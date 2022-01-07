; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_footnote_def.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_footnote_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }

@.str = private unnamed_addr constant [17 x i8] c"\0A<li id=\22fn%d\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"&nbsp;<a href=\22#fnref%d\22>&#8617;</a>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"</li>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i32, i8*)* @rndr_footnote_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_footnote_def(%struct.buf* %0, %struct.buf* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.buf*, %struct.buf** %6, align 8
  %12 = icmp ne %struct.buf* %11, null
  br i1 %12, label %13, label %77

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %72, %62, %42, %31, %13
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 3
  %17 = load %struct.buf*, %struct.buf** %6, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %14
  %22 = load %struct.buf*, %struct.buf** %6, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 60
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %14

32:                                               ; preds = %21
  %33 = load %struct.buf*, %struct.buf** %6, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %14

43:                                               ; preds = %32
  %44 = load %struct.buf*, %struct.buf** %6, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 112
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.buf*, %struct.buf** %6, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 80
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %14

63:                                               ; preds = %53, %43
  %64 = load %struct.buf*, %struct.buf** %6, align 8
  %65 = getelementptr inbounds %struct.buf, %struct.buf* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 62
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %14

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, 3
  store i64 %75, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %14
  br label %77

77:                                               ; preds = %76, %4
  %78 = load %struct.buf*, %struct.buf** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @bufprintf(%struct.buf* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.buf*, %struct.buf** %5, align 8
  %85 = load %struct.buf*, %struct.buf** %6, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @bufput(%struct.buf* %84, i8* %87, i64 %88)
  %90 = load %struct.buf*, %struct.buf** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @bufprintf(%struct.buf* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.buf*, %struct.buf** %5, align 8
  %94 = load %struct.buf*, %struct.buf** %6, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load %struct.buf*, %struct.buf** %6, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %101, %102
  %104 = call i32 @bufput(%struct.buf* %93, i8* %98, i64 %103)
  br label %118

105:                                              ; preds = %77
  %106 = load %struct.buf*, %struct.buf** %6, align 8
  %107 = icmp ne %struct.buf* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.buf*, %struct.buf** %5, align 8
  %110 = load %struct.buf*, %struct.buf** %6, align 8
  %111 = getelementptr inbounds %struct.buf, %struct.buf* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.buf*, %struct.buf** %6, align 8
  %114 = getelementptr inbounds %struct.buf, %struct.buf* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @bufput(%struct.buf* %109, i8* %112, i64 %115)
  br label %117

117:                                              ; preds = %108, %105
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.buf*, %struct.buf** %5, align 8
  %120 = call i32 @BUFPUTSL(%struct.buf* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bufprintf(%struct.buf*, i8*, i32) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
