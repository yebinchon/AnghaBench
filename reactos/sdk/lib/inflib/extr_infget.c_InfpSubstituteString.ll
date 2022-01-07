; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpSubstituteString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpSubstituteString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64*, i64)* @InfpSubstituteString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @InfpSubstituteString(i32 %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %128, %21
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %131

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 37
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %128

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, 1
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %50, %40
  %54 = load i64*, i64** %7, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul i64 %61, 1
  %63 = call i32 @memcpy(i64* %59, i8* %60, i64 %62)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i8*, i8** %11, align 8
  store i8* %71, i8** %9, align 8
  br label %127

72:                                               ; preds = %33
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sub nsw i64 %77, 1
  store i64 %78, i64* %12, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 92
  %87 = zext i1 %86 to i32
  %88 = call i8* @InfpGetSubstitutionString(i32 %79, i8* %81, i64* %12, i32 %87)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %72
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %91, %72
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, 1
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i64*, i64** %7, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = mul i64 %115, 1
  %117 = call i32 @memcpy(i64* %113, i8* %114, i64 %116)
  br label %118

118:                                              ; preds = %110, %107
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %8, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %8, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %118, %64
  br label %128

128:                                              ; preds = %127, %32
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  br label %23

131:                                              ; preds = %23
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = icmp ne i8* %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %12, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %8, align 8
  %145 = sub i64 %144, 1
  %146 = icmp ugt i64 %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load i64, i64* %8, align 8
  %149 = sub i64 %148, 1
  store i64 %149, i64* %12, align 8
  br label %150

150:                                              ; preds = %147, %135
  %151 = load i64*, i64** %7, align 8
  %152 = icmp ne i64* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i64*, i64** %7, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i8*, i8** %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = mul i64 %158, 1
  %160 = call i32 @memcpy(i64* %156, i8* %157, i64 %159)
  br label %161

161:                                              ; preds = %153, %150
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %13, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %13, align 8
  br label %165

165:                                              ; preds = %161, %131
  %166 = load i64*, i64** %7, align 8
  %167 = icmp ne i64* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i64, i64* %8, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i64*, i64** %7, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %168, %165
  %176 = load i64, i64* %13, align 8
  ret i64 %176
}

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i8* @InfpGetSubstitutionString(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
