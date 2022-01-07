; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__number.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_cb__number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"&frac12;\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&frac14;\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&frac34;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i8, i8*, i64)* @smartypants_cb__number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_cb__number(%struct.buf* %0, %struct.smartypants_data* %1, i8 signext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.smartypants_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i8, i8* %9, align 1
  %13 = call i64 @fraction_boundary(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %153

15:                                               ; preds = %5
  %16 = load i64, i64* %11, align 8
  %17 = icmp uge i64 %16, 3
  br i1 %17, label %18, label %153

18:                                               ; preds = %15
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 49
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 50
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @fraction_boundary(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %36
  %46 = load %struct.buf*, %struct.buf** %7, align 8
  %47 = call i32 @BUFPUTSL(%struct.buf* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %159

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %30, %24, %18
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 49
  br i1 %54, label %55, label %97

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 52
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = icmp eq i64 %68, 3
  br i1 %69, label %93, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @fraction_boundary(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = icmp uge i64 %77, 5
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = call signext i8 @tolower(i8 signext %82)
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 116
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i8, i8* %88, align 1
  %90 = call signext i8 @tolower(i8 signext %89)
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 104
  br i1 %92, label %93, label %96

93:                                               ; preds = %86, %70, %67
  %94 = load %struct.buf*, %struct.buf** %7, align 8
  %95 = call i32 @BUFPUTSL(%struct.buf* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %159

96:                                               ; preds = %86, %79, %76
  br label %97

97:                                               ; preds = %96, %61, %55, %49
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 51
  br i1 %102, label %103, label %152

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %152

109:                                              ; preds = %103
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 52
  br i1 %114, label %115, label %152

115:                                              ; preds = %109
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %148, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @fraction_boundary(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %148, label %124

124:                                              ; preds = %118
  %125 = load i64, i64* %11, align 8
  %126 = icmp uge i64 %125, 6
  br i1 %126, label %127, label %151

127:                                              ; preds = %124
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  %130 = load i8, i8* %129, align 1
  %131 = call signext i8 @tolower(i8 signext %130)
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 116
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = load i8, i8* %136, align 1
  %138 = call signext i8 @tolower(i8 signext %137)
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 104
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 5
  %144 = load i8, i8* %143, align 1
  %145 = call signext i8 @tolower(i8 signext %144)
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 115
  br i1 %147, label %148, label %151

148:                                              ; preds = %141, %118, %115
  %149 = load %struct.buf*, %struct.buf** %7, align 8
  %150 = call i32 @BUFPUTSL(%struct.buf* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %159

151:                                              ; preds = %141, %134, %127, %124
  br label %152

152:                                              ; preds = %151, %109, %103, %97
  br label %153

153:                                              ; preds = %152, %15, %5
  %154 = load %struct.buf*, %struct.buf** %7, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @bufputc(%struct.buf* %154, i8 signext %157)
  store i64 0, i64* %6, align 8
  br label %159

159:                                              ; preds = %153, %148, %93, %45
  %160 = load i64, i64* %6, align 8
  ret i64 %160
}

declare dso_local i64 @fraction_boundary(i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
