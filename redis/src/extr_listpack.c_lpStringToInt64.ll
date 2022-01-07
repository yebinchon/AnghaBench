; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpStringToInt64.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpStringToInt64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpStringToInt64(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
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
  br label %169

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
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  store i32 1, i32* %4, align 4
  br label %169

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
  br label %169

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 49
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  store i32 %65, i32* %11, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %82

70:                                               ; preds = %54, %48
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 48
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  store i32 0, i32* %80, align 4
  store i32 1, i32* %4, align 4
  br label %169

81:                                               ; preds = %76, %70
  store i32 0, i32* %4, align 4
  br label %169

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %120, %82
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sge i32 %91, 48
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sle i32 %97, 57
  br label %99

99:                                               ; preds = %93, %87, %83
  %100 = phi i1 [ false, %87 ], [ false, %83 ], [ %98, %93 ]
  br i1 %100, label %101, label %132

101:                                              ; preds = %99
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @UINT64_MAX, align 4
  %104 = sdiv i32 %103, 10
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %169

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 %108, 10
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @UINT64_MAX, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  %117 = sub nsw i32 %111, %116
  %118 = icmp sgt i32 %110, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %169

120:                                              ; preds = %107
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %9, align 8
  br label %83

132:                                              ; preds = %99
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %169

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @INT64_MIN, align 4
  %143 = add nsw i32 %142, 1
  %144 = sub nsw i32 0, %143
  %145 = add nsw i32 %144, 1
  %146 = icmp sgt i32 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %169

148:                                              ; preds = %140
  %149 = load i32*, i32** %7, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 0, %152
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %148
  br label %168

156:                                              ; preds = %137
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @INT64_MAX, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %169

161:                                              ; preds = %156
  %162 = load i32*, i32** %7, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %155
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %160, %147, %136, %119, %106, %81, %79, %46, %31, %16
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
