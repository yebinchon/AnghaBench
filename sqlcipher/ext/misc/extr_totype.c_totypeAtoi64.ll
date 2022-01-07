; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_totypeAtoi64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_totypeAtoi64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGEST_INT64 = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @totypeAtoi64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @totypeAtoi64(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %14, align 8
  br label %19

19:                                               ; preds = %30, %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @totypeIsspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  br label %19

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  br label %54

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %69, %55
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 48
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i1 [ false, %57 ], [ %66, %61 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  br label %57

72:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %89, 57
  br label %91

91:                                               ; preds = %88, %80, %73
  %92 = phi i1 [ false, %80 ], [ false, %73 ], [ %90, %88 ]
  br i1 %92, label %93, label %102

93:                                               ; preds = %91
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %94, 10
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 48
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %73

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @LARGEST_INT64, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, i64* @SMALLEST_INT64, align 8
  %108 = load i64*, i64** %6, align 8
  store i64 %107, i64* %108, align 8
  br label %122

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 0, %114
  %116 = load i64*, i64** %6, align 8
  store i64 %115, i64* %116, align 8
  br label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64*, i64** %6, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %106
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ult i8* %129, %130
  br i1 %131, label %145, label %132

132:                                              ; preds = %125, %122
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %10, align 4
  %141 = icmp sgt i32 %140, 19
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %139, %135, %125
  store i32 1, i32* %4, align 4
  br label %187

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 19
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @LARGEST_INT64, align 4
  %152 = icmp sle i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  store i32 0, i32* %4, align 4
  br label %187

155:                                              ; preds = %146
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @totypeCompare2pow63(i8* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @LARGEST_INT64, align 4
  %163 = icmp sle i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  store i32 0, i32* %4, align 4
  br label %187

166:                                              ; preds = %155
  %167 = load i32, i32* %11, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 1, i32* %4, align 4
  br label %187

170:                                              ; preds = %166
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* @LARGEST_INT64, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = load i64*, i64** %6, align 8
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SMALLEST_INT64, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 0, i32 2
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %170, %169, %160, %149, %145
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i64 @totypeIsspace(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @totypeCompare2pow63(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
