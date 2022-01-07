; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__amp.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&#0;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i32, i32*, i64)* @smartypants_cb__amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__amp(%struct.buf* %0, %struct.smartypants_data* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.smartypants_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp uge i64 %13, 6
  br i1 %14, label %15, label %37

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @memcmp(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.buf*, %struct.buf** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* %11, align 8
  %23 = icmp uge i64 %22, 7
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load %struct.smartypants_data*, %struct.smartypants_data** %8, align 8
  %32 = getelementptr inbounds %struct.smartypants_data, %struct.smartypants_data* %31, i32 0, i32 0
  %33 = call i64 @smartypants_quotes(%struct.buf* %20, i32 %21, i32 %30, i8 signext 100, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i64 5, i64* %6, align 8
  br label %75

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %15, %5
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @squote_len(i32* %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load %struct.buf*, %struct.buf** %7, align 8
  %48 = load %struct.smartypants_data*, %struct.smartypants_data** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = sub i64 %55, %58
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @smartypants_squote(%struct.buf* %47, %struct.smartypants_data* %48, i32 %49, i32* %54, i64 %59, i32* %60, i32 %61)
  %63 = add i64 %46, %62
  store i64 %63, i64* %6, align 8
  br label %75

64:                                               ; preds = %37
  %65 = load i64, i64* %11, align 8
  %66 = icmp uge i64 %65, 4
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @memcmp(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i64 3, i64* %6, align 8
  br label %75

72:                                               ; preds = %67, %64
  %73 = load %struct.buf*, %struct.buf** %7, align 8
  %74 = call i32 @bufputc(%struct.buf* %73, i8 signext 38)
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %72, %71, %43, %35
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @smartypants_quotes(%struct.buf*, i32, i32, i8 signext, i32*) #1

declare dso_local i32 @squote_len(i32*, i64) #1

declare dso_local i64 @smartypants_squote(%struct.buf*, %struct.smartypants_data*, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
