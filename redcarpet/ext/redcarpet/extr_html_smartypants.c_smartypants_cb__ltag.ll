; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__ltag.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__ltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@smartypants_cb__ltag.skip_tags = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"samp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@smartypants_cb__ltag.skip_tags_count = internal constant i64 8, align 8
@HTML_TAG_OPEN = common dso_local global i64 0, align 8
@HTML_TAG_CLOSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"&rsquo;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i8, i8*, i64)* @smartypants_cb__ltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__ltag(%struct.buf* %0, %struct.smartypants_data* %1, i8 signext %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.smartypants_data*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %6, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %27, %5
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 62
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %13, align 8
  br label %14

30:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds [8 x i8*], [8 x i8*]* @smartypants_cb__ltag.skip_tags, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @sdhtml_is_tag(i8* %35, i64 %36, i8* %39)
  %41 = load i64, i64* @HTML_TAG_OPEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i64, i64* %12, align 8
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %109

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %88, %51
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 60
  br label %64

64:                                               ; preds = %57, %53
  %65 = phi i1 [ false, %53 ], [ %63, %57 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %53

69:                                               ; preds = %64
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %91

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds [8 x i8*], [8 x i8*]* @smartypants_cb__ltag.skip_tags, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @sdhtml_is_tag(i8* %77, i64 %80, i8* %83)
  %85 = load i64, i64* @HTML_TAG_CLOSE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %91

88:                                               ; preds = %74
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %52

91:                                               ; preds = %87, %73
  br label %92

92:                                               ; preds = %105, %91
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 62
  br label %103

103:                                              ; preds = %96, %92
  %104 = phi i1 [ false, %92 ], [ %102, %96 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %92

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %48
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @sdhtml_is_tag(i8* %110, i64 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i64, i64* @HTML_TAG_CLOSE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i8*, i8** %9, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 62
  br label %127

127:                                              ; preds = %120, %116
  %128 = phi i1 [ false, %116 ], [ %126, %120 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %116

132:                                              ; preds = %127
  store i64 1, i64* %11, align 8
  br label %133

133:                                              ; preds = %132, %109
  %134 = load %struct.buf*, %struct.buf** %6, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  %138 = trunc i64 %137 to i32
  %139 = call i32 @bufput(%struct.buf* %134, i8* %135, i32 %138)
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %144, 1
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %146, i32 5)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.buf*, %struct.buf** %6, align 8
  %151 = call i32 @bufput(%struct.buf* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %152, 5
  store i64 %153, i64* %13, align 8
  br label %154

154:                                              ; preds = %149, %142, %133
  %155 = load i64, i64* %13, align 8
  ret i64 %155
}

declare dso_local i64 @sdhtml_is_tag(i8*, i64, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
