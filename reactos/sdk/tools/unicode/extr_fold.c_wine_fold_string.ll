; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_fold.c_wine_fold_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_fold.c_wine_fold_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_EXPAND_LIGATURES = common dso_local global i32 0, align 4
@MAP_COMPOSITE = common dso_local global i32 0, align 4
@MAP_PRECOMPOSED = common dso_local global i32 0, align 4
@MAP_FOLDDIGITS = common dso_local global i32 0, align 4
@MAP_FOLDCZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_fold_string(i32 %0, i64* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64*, i64** %10, align 8
  store i64* %16, i64** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i64*, i64** %8, align 8
  %21 = call i32 @strlenW(i64* %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAP_EXPAND_LIGATURES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @get_ligature_len(i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %8, align 8
  br label %33

47:                                               ; preds = %33
  br label %62

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAP_COMPOSITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAP_PRECOMPOSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %53
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %6, align 4
  br label %175

64:                                               ; preds = %23
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %175

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %164, %69
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %167

77:                                               ; preds = %73
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %15, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MAP_EXPAND_LIGATURES, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %77
  %85 = load i64, i64* %15, align 8
  %86 = call i64* @get_ligature(i64 %85)
  store i64* %86, i64** %13, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %11, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %175

96:                                               ; preds = %91
  %97 = load i64*, i64** %13, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %13, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %96
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %175

111:                                              ; preds = %106
  %112 = load i64*, i64** %13, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %10, align 8
  store i64 %114, i64* %116, align 8
  %117 = load i64*, i64** %13, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %15, align 8
  br label %124

120:                                              ; preds = %96
  %121 = load i64*, i64** %13, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %15, align 8
  br label %124

124:                                              ; preds = %120, %111
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %10, align 8
  br label %127

127:                                              ; preds = %124, %84
  br label %142

128:                                              ; preds = %77
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MAP_COMPOSITE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %141

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @MAP_PRECOMPOSED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %134
  br label %141

141:                                              ; preds = %140, %133
  br label %142

142:                                              ; preds = %141, %127
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @MAP_FOLDDIGITS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i64, i64* %15, align 8
  %149 = call i64 @to_unicode_digit(i64 %148)
  store i64 %149, i64* %15, align 8
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @MAP_FOLDCZONE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i64, i64* %15, align 8
  %157 = call i64 @to_unicode_native(i64 %156)
  store i64 %157, i64* %15, align 8
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i64, i64* %15, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 1
  store i64* %161, i64** %10, align 8
  store i64 %159, i64* %160, align 8
  %162 = load i64*, i64** %8, align 8
  %163 = getelementptr inbounds i64, i64* %162, i32 1
  store i64* %163, i64** %8, align 8
  br label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %73

167:                                              ; preds = %73
  %168 = load i64*, i64** %10, align 8
  %169 = load i64*, i64** %12, align 8
  %170 = ptrtoint i64* %168 to i64
  %171 = ptrtoint i64* %169 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %167, %110, %95, %68, %62
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i64 @get_ligature_len(i64) #1

declare dso_local i64* @get_ligature(i64) #1

declare dso_local i64 @to_unicode_digit(i64) #1

declare dso_local i64 @to_unicode_native(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
