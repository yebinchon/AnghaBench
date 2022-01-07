; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlIsNameStartChar.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlIsNameStartChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@XML_PARSE_OLD10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @xmlIsNameStartChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlIsNameStartChar(%struct.TYPE_3__* %0, i32 %1) #0 {
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
  br i1 %11, label %12, label %113

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %112

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 62
  br i1 %17, label %18, label %112

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %112

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 122
  br i1 %26, label %111, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 65
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %111, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 95
  br i1 %35, label %111, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %111, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 192
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 %43, 214
  br i1 %44, label %111, label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 216
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %49, 246
  br i1 %50, label %111, label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 248
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %55, 767
  br i1 %56, label %111, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 880
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp sle i32 %61, 893
  br i1 %62, label %111, label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 895
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp sle i32 %67, 8191
  br i1 %68, label %111, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 8204
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 8205
  br i1 %74, label %111, label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %5, align 4
  %77 = icmp sge i32 %76, 8304
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp sle i32 %79, 8591
  br i1 %80, label %111, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %5, align 4
  %83 = icmp sge i32 %82, 11264
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sle i32 %85, 12271
  br i1 %86, label %111, label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp sge i32 %88, 12289
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = icmp sle i32 %91, 55295
  br i1 %92, label %111, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 63744
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %97, 64975
  br i1 %98, label %111, label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %5, align 4
  %101 = icmp sge i32 %100, 65008
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp sle i32 %103, 65533
  br i1 %104, label %111, label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %5, align 4
  %107 = icmp sge i32 %106, 65536
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = icmp sle i32 %109, 983039
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %102, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %36, %33, %30, %24
  store i32 1, i32* %3, align 4
  br label %126

112:                                              ; preds = %108, %105, %18, %15, %12
  br label %125

113:                                              ; preds = %2
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @IS_LETTER(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 95
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 58
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %117, %113
  store i32 1, i32* %3, align 4
  br label %126

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %112
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %111
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @IS_LETTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
