; ModuleID = '/home/carl/AnghaBench/tig/src/extr_parse.c_parse_blame_info.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_parse.c_parse_blame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_commit = type { i8*, i8*, i32, i32, i32, i32 }

@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"author-mail \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"author-time \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"author-tz \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"summary \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"previous \00", align 1
@SIZEOF_REV = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"filename \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_blame_info(%struct.blame_commit* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.blame_commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.blame_commit* %0, %struct.blame_commit** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @SIZEOF_STR, align 4
  %10 = zext i32 %9 to i64
  %11 = call i64 @match_blame_header(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @SIZEOF_STR, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = call i32 @string_ncopy_do(i8* %14, i32 %15, i8* %16, i64 %18)
  br label %115

20:                                               ; preds = %3
  %21 = call i64 @match_blame_header(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 62)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 60
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @get_author(i8* %39, i8* %40)
  %42 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %43 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  br label %114

46:                                               ; preds = %20
  %47 = call i64 @match_blame_header(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %51 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %50, i32 0, i32 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @parse_timesec(i32* %51, i8* %52)
  br label %113

54:                                               ; preds = %46
  %55 = call i64 @match_blame_header(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %59 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %58, i32 0, i32 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @parse_timezone(i32* %59, i8* %60)
  br label %112

62:                                               ; preds = %54
  %63 = call i64 @match_blame_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %67 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = call i32 @string_ncopy(i32 %68, i8* %69, i64 %71)
  br label %111

73:                                               ; preds = %62
  %74 = call i64 @match_blame_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = load i64, i64* @SIZEOF_REV, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %116

82:                                               ; preds = %76
  %83 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %84 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @string_copy_rev(i32 %85, i8* %86)
  %88 = load i64, i64* @SIZEOF_REV, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %7, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* @get_path(i8* %91)
  %93 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %94 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %96 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %116

100:                                              ; preds = %82
  br label %110

101:                                              ; preds = %73
  %102 = call i64 @match_blame_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @get_path(i8* %105)
  %107 = load %struct.blame_commit*, %struct.blame_commit** %5, align 8
  %108 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  store i32 1, i32* %4, align 4
  br label %116

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %100
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %57
  br label %113

113:                                              ; preds = %112, %49
  br label %114

114:                                              ; preds = %113, %38
  br label %115

115:                                              ; preds = %114, %13
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %104, %99, %81
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @match_blame_header(i8*, i8**) #1

declare dso_local i32 @string_ncopy_do(i8*, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @get_author(i8*, i8*) #1

declare dso_local i32 @parse_timesec(i32*, i8*) #1

declare dso_local i32 @parse_timezone(i32*, i8*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i64) #1

declare dso_local i32 @string_copy_rev(i32, i8*) #1

declare dso_local i8* @get_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
