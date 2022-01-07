; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_string2ll.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_string2ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string2ll(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %163

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %7, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26
  store i32 1, i32* %4, align 4
  br label %163

32:                                               ; preds = %20, %17
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %163

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 49
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %72

71:                                               ; preds = %54, %48
  store i32 0, i32* %4, align 4
  br label %163

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %112, %72
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 48
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 57
  br label %89

89:                                               ; preds = %83, %77, %73
  %90 = phi i1 [ false, %77 ], [ false, %73 ], [ %88, %83 ]
  br i1 %90, label %91, label %125

91:                                               ; preds = %89
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* @ULLONG_MAX, align 4
  %94 = sdiv i32 %93, 10
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %163

98:                                               ; preds = %91
  %99 = load i64, i64* %11, align 8
  %100 = mul i64 %99, 10
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @ULLONG_MAX, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = sub nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  %110 = icmp ugt i64 %101, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %163

112:                                              ; preds = %98
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 48
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %11, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %9, align 8
  br label %73

125:                                              ; preds = %89
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %163

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load i64, i64* %11, align 8
  %135 = load i32, i32* @LLONG_MIN, align 4
  %136 = add nsw i32 %135, 1
  %137 = sub nsw i32 0, %136
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 1
  %140 = icmp ugt i64 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %163

142:                                              ; preds = %133
  %143 = load i64*, i64** %7, align 8
  %144 = icmp ne i64* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64, i64* %11, align 8
  %147 = sub i64 0, %146
  %148 = load i64*, i64** %7, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %142
  br label %162

150:                                              ; preds = %130
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @LLONG_MAX, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %163

155:                                              ; preds = %150
  %156 = load i64*, i64** %7, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i64, i64* %11, align 8
  %160 = load i64*, i64** %7, align 8
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %149
  store i32 1, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %154, %141, %129, %111, %97, %71, %46, %31, %16
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
