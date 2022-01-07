; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__parse_domain_more.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__parse_domain_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@adns_s_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@adns_s_nomemory = common dso_local global i64 0, align 8
@pdf_quoteok = common dso_local global i32 0, align 4
@adns_s_answerdomaininvalid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adns__parse_domain_more(i32* %0, i32 %1, i32 %2, %struct.TYPE_5__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %18, align 4
  br label %20

20:                                               ; preds = %124, %6
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @adns__findlabel_next(i32* %21, i32* %14, i32* %15)
  store i64 %22, i64* %19, align 8
  %23 = load i64, i64* %19, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %19, align 8
  store i64 %26, i64* %7, align 8
  br label %133

27:                                               ; preds = %20
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* @adns_s_ok, align 8
  store i64 %33, i64* %7, align 8
  br label %133

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %125

38:                                               ; preds = %34
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  br label %49

42:                                               ; preds = %38
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = call i32 @adns__vbuf_append(%struct.TYPE_5__* %43, i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @adns_s_nomemory, align 8
  store i64 %47, i64* %7, align 8
  br label %133

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @pdf_quoteok, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @vbuf__append_quoted1035(%struct.TYPE_5__* %55, i32* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = load i64, i64* @adns_s_nomemory, align 8
  store i64 %64, i64* %7, align 8
  br label %133

65:                                               ; preds = %54
  br label %124

66:                                               ; preds = %49
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @ctype_alpha(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @ctype_digit(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* @adns_s_answerdomaininvalid, align 8
  store i64 %80, i64* %7, align 8
  br label %133

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %109, %81
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %84
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 45
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @ctype_alpha(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @ctype_digit(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* @adns_s_answerdomaininvalid, align 8
  store i64 %107, i64* %7, align 8
  br label %133

108:                                              ; preds = %102, %98, %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %84

112:                                              ; preds = %84
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @adns__vbuf_append(%struct.TYPE_5__* %113, i32* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = load i64, i64* @adns_s_nomemory, align 8
  store i64 %122, i64* %7, align 8
  br label %133

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %65
  br label %20

125:                                              ; preds = %37
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %127 = call i32 @adns__vbuf_append(%struct.TYPE_5__* %126, i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* @adns_s_nomemory, align 8
  store i64 %130, i64* %7, align 8
  br label %133

131:                                              ; preds = %125
  %132 = load i64, i64* @adns_s_ok, align 8
  store i64 %132, i64* %7, align 8
  br label %133

133:                                              ; preds = %131, %129, %121, %106, %79, %63, %46, %30, %25
  %134 = load i64, i64* %7, align 8
  ret i64 %134
}

declare dso_local i64 @adns__findlabel_next(i32*, i32*, i32*) #1

declare dso_local i32 @adns__vbuf_append(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @vbuf__append_quoted1035(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ctype_alpha(i32) #1

declare dso_local i32 @ctype_digit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
