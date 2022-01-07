; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_emphasis.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_emphasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32 }

@MKDEXT_NO_INTRA_EMPHASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64)* @char_emphasis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_emphasis(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %12, align 1
  %17 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %18 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MKDEXT_NO_INTRA_EMPHASIS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @_isalnum(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %168

33:                                               ; preds = %26, %23
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i64, i64* %11, align 8
  %36 = icmp ugt i64 %35, 2
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %12, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %37
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 126
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @_isspace(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.buf*, %struct.buf** %7, align 8
  %61 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %64, 1
  %66 = load i8, i8* %12, align 1
  %67 = call i64 @parse_emph1(%struct.buf* %60, %struct.sd_markdown* %61, i8* %63, i64 %65, i8 signext %66)
  store i64 %67, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %53, %49, %45
  store i64 0, i64* %6, align 8
  br label %168

70:                                               ; preds = %59
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %168

73:                                               ; preds = %37, %34
  %74 = load i64, i64* %11, align 8
  %75 = icmp ugt i64 %74, 3
  br i1 %75, label %76, label %112

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* %12, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %76
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %84
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @_isspace(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = load %struct.buf*, %struct.buf** %7, align 8
  %100 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %103, 2
  %105 = load i8, i8* %12, align 1
  %106 = call i64 @parse_emph2(%struct.buf* %99, %struct.sd_markdown* %100, i8* %102, i64 %104, i8 signext %105)
  store i64 %106, i64* %13, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98, %92
  store i64 0, i64* %6, align 8
  br label %168

109:                                              ; preds = %98
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %110, 2
  store i64 %111, i64* %6, align 8
  br label %168

112:                                              ; preds = %84, %76, %73
  %113 = load i64, i64* %11, align 8
  %114 = icmp ugt i64 %113, 4
  br i1 %114, label %115, label %167

115:                                              ; preds = %112
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8, i8* %12, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %167

123:                                              ; preds = %115
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* %12, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %167

131:                                              ; preds = %123
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* %12, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %131
  %140 = load i8, i8* %12, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 126
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = load i8, i8* %12, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 61
  br i1 %146, label %163, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  %150 = load i8, i8* %149, align 1
  %151 = call i64 @_isspace(i8 signext %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %147
  %154 = load %struct.buf*, %struct.buf** %7, align 8
  %155 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i64, i64* %11, align 8
  %159 = sub i64 %158, 3
  %160 = load i8, i8* %12, align 1
  %161 = call i64 @parse_emph3(%struct.buf* %154, %struct.sd_markdown* %155, i8* %157, i64 %159, i8 signext %160)
  store i64 %161, i64* %13, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153, %147, %143, %139
  store i64 0, i64* %6, align 8
  br label %168

164:                                              ; preds = %153
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 3
  store i64 %166, i64* %6, align 8
  br label %168

167:                                              ; preds = %131, %123, %115, %112
  store i64 0, i64* %6, align 8
  br label %168

168:                                              ; preds = %167, %164, %163, %109, %108, %70, %69, %32
  %169 = load i64, i64* %6, align 8
  ret i64 %169
}

declare dso_local i64 @_isalnum(i8 signext) #1

declare dso_local i64 @_isspace(i8 signext) #1

declare dso_local i64 @parse_emph1(%struct.buf*, %struct.sd_markdown*, i8*, i64, i8 signext) #1

declare dso_local i64 @parse_emph2(%struct.buf*, %struct.sd_markdown*, i8*, i64, i8 signext) #1

declare dso_local i64 @parse_emph3(%struct.buf*, %struct.sd_markdown*, i8*, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
