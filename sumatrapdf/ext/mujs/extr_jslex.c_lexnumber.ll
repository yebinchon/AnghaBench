; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexnumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8, i32 }

@TK_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"number with leading zero\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"missing exponent\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"number with letter suffix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @lexnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexnumber(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -1
  store i8* %8, i8** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i64 @jsY_accept(%struct.TYPE_7__* %9, i8 signext 48)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i64 @jsY_accept(%struct.TYPE_7__* %13, i8 signext 120)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call i64 @jsY_accept(%struct.TYPE_7__* %17, i8 signext 88)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @lexhex(%struct.TYPE_7__* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @TK_NUMBER, align 4
  store i32 %25, i32* %2, align 4
  br label %159

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 8
  %30 = call i64 @jsY_isdec(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @jsY_error(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i64 @jsY_accept(%struct.TYPE_7__* %36, i8 signext 46)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 8
  %44 = call i64 @jsY_isdec(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = call i32 @jsY_next(%struct.TYPE_7__* %47)
  br label %40

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %35
  br label %100

51:                                               ; preds = %1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i64 @jsY_accept(%struct.TYPE_7__* %52, i8 signext 46)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 8
  %59 = call i64 @jsY_isdec(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 46, i32* %2, align 4
  br label %159

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %69, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = call i64 @jsY_isdec(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = call i32 @jsY_next(%struct.TYPE_7__* %70)
  br label %63

72:                                               ; preds = %63
  br label %99

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %80, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = call i64 @jsY_isdec(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = call i32 @jsY_next(%struct.TYPE_7__* %81)
  br label %74

83:                                               ; preds = %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = call i64 @jsY_accept(%struct.TYPE_7__* %84, i8 signext 46)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %94, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8, i8* %90, align 8
  %92 = call i64 @jsY_isdec(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = call i32 @jsY_next(%struct.TYPE_7__* %95)
  br label %88

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %72
  br label %100

100:                                              ; preds = %99, %50
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = call i64 @jsY_accept(%struct.TYPE_7__* %101, i8 signext 101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = call i64 @jsY_accept(%struct.TYPE_7__* %105, i8 signext 69)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %104, %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 8
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 8
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 43
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = call i32 @jsY_next(%struct.TYPE_7__* %121)
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i8, i8* %125, align 8
  %127 = call i64 @jsY_isdec(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %136, %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 8
  %134 = call i64 @jsY_isdec(i8 signext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = call i32 @jsY_next(%struct.TYPE_7__* %137)
  br label %130

139:                                              ; preds = %130
  br label %143

140:                                              ; preds = %123
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = call i32 @jsY_error(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %139
  br label %144

144:                                              ; preds = %143, %104
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i8, i8* %146, align 8
  %148 = call i64 @jsY_isidentifierstart(i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = call i32 @jsY_error(%struct.TYPE_7__* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i8*, i8** %4, align 8
  %155 = call i32 @js_strtod(i8* %154, i32* null)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @TK_NUMBER, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %61, %20
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @jsY_accept(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @lexhex(%struct.TYPE_7__*) #1

declare dso_local i64 @jsY_isdec(i8 signext) #1

declare dso_local i32 @jsY_error(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @jsY_next(%struct.TYPE_7__*) #1

declare dso_local i64 @jsY_isidentifierstart(i8 signext) #1

declare dso_local i32 @js_strtod(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
