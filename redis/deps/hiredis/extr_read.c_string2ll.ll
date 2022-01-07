; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_string2ll.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_string2ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @string2ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string2ll(i8* %0, i64 %1, i64* %2) #0 {
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
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @REDIS_ERR, align 4
  store i32 %17, i32* %4, align 4
  br label %185

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* @REDIS_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %185

34:                                               ; preds = %21, %18
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @REDIS_ERR, align 4
  store i32 %49, i32* %4, align 4
  br label %185

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 49
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 57
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 48
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %11, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %88

74:                                               ; preds = %57, %51
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 48
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64*, i64** %7, align 8
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @REDIS_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %185

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @REDIS_ERR, align 4
  store i32 %87, i32* %4, align 4
  br label %185

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %130, %88
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sle i32 %103, 57
  br label %105

105:                                              ; preds = %99, %93, %89
  %106 = phi i1 [ false, %93 ], [ false, %89 ], [ %104, %99 ]
  br i1 %106, label %107, label %143

107:                                              ; preds = %105
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* @ULLONG_MAX, align 4
  %110 = sdiv i32 %109, 10
  %111 = sext i32 %110 to i64
  %112 = icmp ugt i64 %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @REDIS_ERR, align 4
  store i32 %114, i32* %4, align 4
  br label %185

115:                                              ; preds = %107
  %116 = load i64, i64* %11, align 8
  %117 = mul i64 %116, 10
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i32, i32* @ULLONG_MAX, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 48
  %125 = sub nsw i32 %119, %124
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %118, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32, i32* @REDIS_ERR, align 4
  store i32 %129, i32* %4, align 4
  br label %185

130:                                              ; preds = %115
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = sub nsw i32 %134, 48
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %11, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %89

143:                                              ; preds = %105
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @REDIS_ERR, align 4
  store i32 %148, i32* %4, align 4
  br label %185

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i64, i64* %11, align 8
  %154 = load i32, i32* @LLONG_MIN, align 4
  %155 = add nsw i32 %154, 1
  %156 = sub nsw i32 0, %155
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 1
  %159 = icmp ugt i64 %153, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @REDIS_ERR, align 4
  store i32 %161, i32* %4, align 4
  br label %185

162:                                              ; preds = %152
  %163 = load i64*, i64** %7, align 8
  %164 = icmp ne i64* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i64, i64* %11, align 8
  %167 = sub i64 0, %166
  %168 = load i64*, i64** %7, align 8
  store i64 %167, i64* %168, align 8
  br label %169

169:                                              ; preds = %165, %162
  br label %183

170:                                              ; preds = %149
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @LLONG_MAX, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @REDIS_ERR, align 4
  store i32 %175, i32* %4, align 4
  br label %185

176:                                              ; preds = %170
  %177 = load i64*, i64** %7, align 8
  %178 = icmp ne i64* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i64, i64* %11, align 8
  %181 = load i64*, i64** %7, align 8
  store i64 %180, i64* %181, align 8
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %169
  %184 = load i32, i32* @REDIS_OK, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %183, %174, %160, %147, %128, %113, %86, %83, %48, %32, %16
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
