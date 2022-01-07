; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_blockcode.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_blockcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8* }
%struct.html_renderopt = type { i32 }

@HTML_PRETTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"<pre><code class=\22prettyprint lang-\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"<pre><code class=\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"<pre><code class=\22prettyprint\22>\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"<pre><code>\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"</code></pre>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, %struct.buf*, i8*)* @rndr_blockcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_blockcode(%struct.buf* %0, %struct.buf* %1, %struct.buf* %2, i8* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.html_renderopt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store %struct.buf* %2, %struct.buf** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.html_renderopt*
  store %struct.html_renderopt* %14, %struct.html_renderopt** %9, align 8
  %15 = load %struct.buf*, %struct.buf** %5, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.buf*, %struct.buf** %5, align 8
  %21 = call i32 @bufputc(%struct.buf* %20, i8 signext 10)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.buf*, %struct.buf** %7, align 8
  %24 = icmp ne %struct.buf* %23, null
  br i1 %24, label %25, label %140

25:                                               ; preds = %22
  %26 = load %struct.buf*, %struct.buf** %7, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %140

30:                                               ; preds = %25
  %31 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %32 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HTML_PRETTIFY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.buf*, %struct.buf** %5, align 8
  %39 = call i32 @BUFPUTSL(%struct.buf* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %45

42:                                               ; preds = %30
  %43 = load %struct.buf*, %struct.buf** %5, align 8
  %44 = call i32 @BUFPUTSL(%struct.buf* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %132, %45
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.buf*, %struct.buf** %7, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %137

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.buf*, %struct.buf** %7, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.buf*, %struct.buf** %7, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %59, %53
  %69 = phi i1 [ false, %53 ], [ %67, %59 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %53

73:                                               ; preds = %68
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.buf*, %struct.buf** %7, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %131

79:                                               ; preds = %73
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %99, %79
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.buf*, %struct.buf** %7, align 8
  %84 = getelementptr inbounds %struct.buf, %struct.buf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.buf*, %struct.buf** %7, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isspace(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %87, %81
  %98 = phi i1 [ false, %81 ], [ %96, %87 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %81

102:                                              ; preds = %97
  %103 = load %struct.buf*, %struct.buf** %7, align 8
  %104 = getelementptr inbounds %struct.buf, %struct.buf* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 46
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %111, %102
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.buf*, %struct.buf** %5, align 8
  %119 = call i32 @bufputc(%struct.buf* %118, i8 signext 32)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.buf*, %struct.buf** %5, align 8
  %122 = load %struct.buf*, %struct.buf** %7, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %12, align 8
  %129 = sub i64 %127, %128
  %130 = call i32 @escape_html(%struct.buf* %121, i8* %126, i64 %129)
  br label %131

131:                                              ; preds = %120, %73
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %46

137:                                              ; preds = %46
  %138 = load %struct.buf*, %struct.buf** %5, align 8
  %139 = call i32 @BUFPUTSL(%struct.buf* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %154

140:                                              ; preds = %25, %22
  %141 = load %struct.html_renderopt*, %struct.html_renderopt** %9, align 8
  %142 = getelementptr inbounds %struct.html_renderopt, %struct.html_renderopt* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HTML_PRETTIFY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.buf*, %struct.buf** %5, align 8
  %149 = call i32 @BUFPUTSL(%struct.buf* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %153

150:                                              ; preds = %140
  %151 = load %struct.buf*, %struct.buf** %5, align 8
  %152 = call i32 @BUFPUTSL(%struct.buf* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %137
  %155 = load %struct.buf*, %struct.buf** %6, align 8
  %156 = icmp ne %struct.buf* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.buf*, %struct.buf** %5, align 8
  %159 = load %struct.buf*, %struct.buf** %6, align 8
  %160 = getelementptr inbounds %struct.buf, %struct.buf* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.buf*, %struct.buf** %6, align 8
  %163 = getelementptr inbounds %struct.buf, %struct.buf* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @escape_html(%struct.buf* %158, i8* %161, i64 %164)
  br label %166

166:                                              ; preds = %157, %154
  %167 = load %struct.buf*, %struct.buf** %5, align 8
  %168 = call i32 @BUFPUTSL(%struct.buf* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @escape_html(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
