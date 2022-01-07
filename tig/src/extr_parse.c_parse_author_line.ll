; ModuleID = '/home/carl/AnghaBench/tig/src/extr_parse.c_parse_author_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_parse.c_parse_author_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.ident = type { i32 }
%struct.time = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@unknown_ident = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" +0700\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_author_line(i8* %0, %struct.ident** %1, %struct.time* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ident**, align 8
  %6 = alloca %struct.time*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ident** %1, %struct.ident*** %5, align 8
  store %struct.time* %2, %struct.time** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 60)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 62)
  store i8* %16, i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @string_trim(i8* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i8* @string_trim(i8* %32)
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unknown_ident, i32 0, i32 0), align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %44, %43 ], [ %46, %45 ]
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %47, %34
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  br label %62

60:                                               ; preds = %53
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unknown_ident, i32 0, i32 1), align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ]
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %62, %49
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call %struct.ident* @get_author(i8* %65, i8* %66)
  %68 = load %struct.ident**, %struct.ident*** %5, align 8
  store %struct.ident* %67, %struct.ident** %68, align 8
  %69 = load %struct.time*, %struct.time** %6, align 8
  %70 = icmp ne %struct.time* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %64
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 32)
  store i8* %84, i8** %12, align 8
  %85 = load %struct.time*, %struct.time** %6, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @parse_timesec(%struct.time* %85, i8* %86)
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @strlen(i8* %91)
  %93 = call i64 @STRING_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.time*, %struct.time** %6, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 @parse_timezone(%struct.time* %96, i8* %98)
  br label %100

100:                                              ; preds = %95, %90, %80
  br label %101

101:                                              ; preds = %100, %74, %71, %64
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @string_trim(i8*) #1

declare dso_local %struct.ident* @get_author(i8*, i8*) #1

declare dso_local i32 @parse_timesec(%struct.time*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @STRING_SIZE(i8*) #1

declare dso_local i32 @parse_timezone(%struct.time*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
