; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_uri.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_css_lex_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexbuf = type { i8 }

@.str = private unnamed_addr constant [28 x i8] c"unexpected character in url\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lexbuf*)* @css_lex_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_lex_uri(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.lexbuf*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %2, align 8
  br label %3

3:                                                ; preds = %134, %1
  %4 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %5 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %11 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 41
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %17 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @iswhite(i8 signext %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %9, %3
  %23 = phi i1 [ false, %9 ], [ false, %3 ], [ %21, %15 ]
  br i1 %23, label %24, label %135

24:                                               ; preds = %22
  %25 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %26 = call i64 @css_lex_accept(%struct.lexbuf* %25, float 9.200000e+01)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %30 = call i64 @css_lex_accept(%struct.lexbuf* %29, float 1.100000e+02)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %34 = call i32 @css_push_char(%struct.lexbuf* %33, float 1.000000e+01)
  br label %60

35:                                               ; preds = %28
  %36 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %37 = call i64 @css_lex_accept(%struct.lexbuf* %36, float 1.140000e+02)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %41 = call i32 @css_push_char(%struct.lexbuf* %40, float 1.300000e+01)
  br label %59

42:                                               ; preds = %35
  %43 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %44 = call i64 @css_lex_accept(%struct.lexbuf* %43, float 1.020000e+02)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %48 = call i32 @css_push_char(%struct.lexbuf* %47, float 1.200000e+01)
  br label %58

49:                                               ; preds = %42
  %50 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %51 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %52 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = sitofp i8 %53 to float
  %55 = call i32 @css_push_char(%struct.lexbuf* %50, float %54)
  %56 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %57 = call i32 @css_lex_next(%struct.lexbuf* %56)
  br label %58

58:                                               ; preds = %49, %46
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %32
  br label %134

61:                                               ; preds = %24
  %62 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %63 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 33
  br i1 %66, label %121, label %67

67:                                               ; preds = %61
  %68 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %69 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 35
  br i1 %72, label %121, label %73

73:                                               ; preds = %67
  %74 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %75 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 36
  br i1 %78, label %121, label %79

79:                                               ; preds = %73
  %80 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %81 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %121, label %85

85:                                               ; preds = %79
  %86 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %87 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 38
  br i1 %90, label %121, label %91

91:                                               ; preds = %85
  %92 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %93 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 42
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %99 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sle i32 %101, 91
  br i1 %102, label %121, label %103

103:                                              ; preds = %97, %91
  %104 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %105 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %104, i32 0, i32 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sge i32 %107, 93
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %111 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sle i32 %113, 126
  br i1 %114, label %121, label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %117 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sgt i32 %119, 159
  br i1 %120, label %121, label %130

121:                                              ; preds = %115, %109, %97, %85, %79, %73, %67, %61
  %122 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %123 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %124 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 1
  %126 = sitofp i8 %125 to float
  %127 = call i32 @css_push_char(%struct.lexbuf* %122, float %126)
  %128 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %129 = call i32 @css_lex_next(%struct.lexbuf* %128)
  br label %133

130:                                              ; preds = %115
  %131 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %132 = call i32 @fz_css_error(%struct.lexbuf* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %121
  br label %134

134:                                              ; preds = %133, %60
  br label %3

135:                                              ; preds = %22
  %136 = load %struct.lexbuf*, %struct.lexbuf** %2, align 8
  %137 = call i32 @css_push_char(%struct.lexbuf* %136, float 0.000000e+00)
  ret void
}

declare dso_local i32 @iswhite(i8 signext) #1

declare dso_local i64 @css_lex_accept(%struct.lexbuf*, float) #1

declare dso_local i32 @css_push_char(%struct.lexbuf*, float) #1

declare dso_local i32 @css_lex_next(%struct.lexbuf*) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
