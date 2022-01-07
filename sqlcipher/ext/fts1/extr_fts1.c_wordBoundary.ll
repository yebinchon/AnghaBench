; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_wordBoundary.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_wordBoundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snippetMatch = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.snippetMatch*, i32, i32)* @wordBoundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wordBoundary(i32 %0, i8* %1, i32 %2, %struct.snippetMatch* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snippetMatch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.snippetMatch* %3, %struct.snippetMatch** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %162

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %20, 10
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %7, align 4
  br label %162

25:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %31, i64 %33
  %35 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %30, %26
  %40 = phi i1 [ false, %26 ], [ %38, %30 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %26

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %51, i64 %53
  %55 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %57, i64 %59
  %61 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %50, %46
  %67 = phi i1 [ false, %46 ], [ %65, %50 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %46

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %122

75:                                               ; preds = %71
  %76 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %76, i64 %78
  %80 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 10
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %86, i64 %88
  %90 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  br label %162

92:                                               ; preds = %75
  %93 = load i32, i32* %14, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %92
  %96 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %96, i64 %99
  %101 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %103, i64 %106
  %108 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %102, %109
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %95
  %114 = load %struct.snippetMatch*, %struct.snippetMatch** %11, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %114, i64 %117
  %119 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %7, align 4
  br label %162

121:                                              ; preds = %95, %92
  br label %122

122:                                              ; preds = %121, %71
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %157, %122
  %124 = load i32, i32* %14, align 4
  %125 = icmp sle i32 %124, 10
  br i1 %125, label %126, label %160

126:                                              ; preds = %123
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @safe_isspace(i8 signext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %162

141:                                              ; preds = %126
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @safe_isspace(i8 signext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %141
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %162

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %123

160:                                              ; preds = %123
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %160, %151, %136, %113, %85, %23, %17
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i64 @safe_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
