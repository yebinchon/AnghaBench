; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_squote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html_smartypants.c_smartypants_squote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.smartypants_data = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"&rsquo;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.smartypants_data*, i8, i8*, i64, i8*, i64)* @smartypants_squote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smartypants_squote(%struct.buf* %0, %struct.smartypants_data* %1, i8 signext %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.smartypants_data*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.buf* %0, %struct.buf** %9, align 8
  store %struct.smartypants_data* %1, %struct.smartypants_data** %10, align 8
  store i8 %2, i8* %11, align 1
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp uge i64 %20, 2
  br i1 %21, label %22, label %162

22:                                               ; preds = %7
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = call signext i8 @tolower(i8 signext %25)
  store i8 %26, i8* %16, align 1
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i64, i64* %13, align 8
  %30 = sub i64 %29, 1
  %31 = call i32 @squote_len(i8* %28, i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %22
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %40
  %50 = phi i32 [ %47, %40 ], [ 0, %48 ]
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %18, align 1
  %52 = load %struct.buf*, %struct.buf** %9, align 8
  %53 = load i8, i8* %11, align 1
  %54 = load i8, i8* %18, align 1
  %55 = load %struct.smartypants_data*, %struct.smartypants_data** %10, align 8
  %56 = getelementptr inbounds %struct.smartypants_data, %struct.smartypants_data* %55, i32 0, i32 1
  %57 = call i64 @smartypants_quotes(%struct.buf* %52, i8 signext %53, i8 signext %54, i8 signext 100, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %8, align 8
  br label %167

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.buf*, %struct.buf** %9, align 8
  %65 = load i8, i8* %11, align 1
  %66 = load i64, i64* %13, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i32 [ %72, %68 ], [ 0, %73 ]
  %76 = trunc i32 %75 to i8
  %77 = load %struct.smartypants_data*, %struct.smartypants_data** %10, align 8
  %78 = getelementptr inbounds %struct.smartypants_data, %struct.smartypants_data* %77, i32 0, i32 0
  %79 = call i64 @smartypants_quotes(%struct.buf* %64, i8 signext %65, i8 signext %76, i8 signext 115, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i64 0, i64* %8, align 8
  br label %167

82:                                               ; preds = %74
  %83 = load i8, i8* %16, align 1
  %84 = call i64 @word_boundary(i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.buf*, %struct.buf** %9, align 8
  %88 = call i32 @BUFPUTSL(%struct.buf* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %167

89:                                               ; preds = %82
  %90 = load i8, i8* %16, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 115
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i8, i8* %16, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 116
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i8, i8* %16, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 109
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i8, i8* %16, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 100
  br i1 %104, label %105, label %117

105:                                              ; preds = %101, %97, %93, %89
  %106 = load i64, i64* %13, align 8
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @word_boundary(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108, %105
  %115 = load %struct.buf*, %struct.buf** %9, align 8
  %116 = call i32 @BUFPUTSL(%struct.buf* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %167

117:                                              ; preds = %108, %101
  %118 = load i64, i64* %13, align 8
  %119 = icmp uge i64 %118, 3
  br i1 %119, label %120, label %161

120:                                              ; preds = %117
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = call signext i8 @tolower(i8 signext %123)
  store i8 %124, i8* %19, align 1
  %125 = load i8, i8* %16, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 114
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i8, i8* %19, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 101
  br i1 %131, label %148, label %132

132:                                              ; preds = %128, %120
  %133 = load i8, i8* %16, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 108
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8, i8* %19, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 108
  br i1 %139, label %148, label %140

140:                                              ; preds = %136, %132
  %141 = load i8, i8* %16, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 118
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i8, i8* %19, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 101
  br i1 %147, label %148, label %160

148:                                              ; preds = %144, %136, %128
  %149 = load i64, i64* %13, align 8
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 3
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @word_boundary(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151, %148
  %158 = load %struct.buf*, %struct.buf** %9, align 8
  %159 = call i32 @BUFPUTSL(%struct.buf* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %167

160:                                              ; preds = %151, %144, %140
  br label %161

161:                                              ; preds = %160, %117
  br label %162

162:                                              ; preds = %161, %7
  %163 = load %struct.buf*, %struct.buf** %9, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @bufput(%struct.buf* %163, i8* %164, i64 %165)
  store i64 0, i64* %8, align 8
  br label %167

167:                                              ; preds = %162, %157, %114, %86, %81, %59
  %168 = load i64, i64* %8, align 8
  ret i64 %168
}

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @squote_len(i8*, i64) #1

declare dso_local i64 @smartypants_quotes(%struct.buf*, i8 signext, i8 signext, i8 signext, i32*) #1

declare dso_local i64 @word_boundary(i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
