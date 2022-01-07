; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlIsNameChar.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlIsNameChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@XML_PARSE_OLD10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @xmlIsNameChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlIsNameChar(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XML_PARSE_OLD10, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %140

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %139

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 62
  br i1 %17, label %18, label %139

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %139

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 122
  br i1 %26, label %138, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 65
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %138, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 57
  br i1 %38, label %138, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 95
  br i1 %41, label %138, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %138, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %138, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %138, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 183
  br i1 %53, label %138, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 192
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 214
  br i1 %59, label %138, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 216
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp sle i32 %64, 246
  br i1 %65, label %138, label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp sge i32 %67, 248
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp sle i32 %70, 767
  br i1 %71, label %138, label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 768
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp sle i32 %76, 879
  br i1 %77, label %138, label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 880
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp sle i32 %82, 893
  br i1 %83, label %138, label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %5, align 4
  %86 = icmp sge i32 %85, 895
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 8191
  br i1 %89, label %138, label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp sge i32 %91, 8204
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = icmp sle i32 %94, 8205
  br i1 %95, label %138, label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %97, 8255
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp sle i32 %100, 8256
  br i1 %101, label %138, label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %5, align 4
  %104 = icmp sge i32 %103, 8304
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = icmp sle i32 %106, 8591
  br i1 %107, label %138, label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %5, align 4
  %110 = icmp sge i32 %109, 11264
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = icmp sle i32 %112, 12271
  br i1 %113, label %138, label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %115, 12289
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %119 = icmp sle i32 %118, 55295
  br i1 %119, label %138, label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %5, align 4
  %122 = icmp sge i32 %121, 63744
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 %124, 64975
  br i1 %125, label %138, label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %5, align 4
  %128 = icmp sge i32 %127, 65008
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = icmp sle i32 %130, 65533
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %5, align 4
  %134 = icmp sge i32 %133, 65536
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = icmp sle i32 %136, 983039
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %48, %45, %42, %39, %36, %30, %24
  store i32 1, i32* %3, align 4
  br label %171

139:                                              ; preds = %135, %132, %18, %15, %12
  br label %170

140:                                              ; preds = %2
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @IS_LETTER(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %168, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = call i64 @IS_DIGIT(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = icmp eq i32 %149, 46
  br i1 %150, label %168, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, 45
  br i1 %153, label %168, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 95
  br i1 %156, label %168, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 58
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = call i64 @IS_COMBINING(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @IS_EXTENDER(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %160, %157, %154, %151, %148, %144, %140
  store i32 1, i32* %3, align 4
  br label %171

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %139
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %168, %138
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @IS_LETTER(i32) #1

declare dso_local i64 @IS_DIGIT(i32) #1

declare dso_local i64 @IS_COMBINING(i32) #1

declare dso_local i64 @IS_EXTENDER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
