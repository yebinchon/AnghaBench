; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_inplacemerge.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_inplacemerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32)* @ss_inplacemerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_inplacemerge(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  br label %21

21:                                               ; preds = %146, %6
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 -1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  store i32 1, i32* %20, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32* %33, i32** %13, align 8
  br label %41

34:                                               ; preds = %21
  store i32 0, i32* %20, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %13, align 8
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  br label %52

52:                                               ; preds = %92, %41
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 0, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %15, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 0, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  br label %72

68:                                               ; preds = %55
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %61, i64 %74
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ss_compare(i8* %60, i32* %75, i32* %76, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32* %83, i32** %14, align 8
  %84 = load i32, i32* %16, align 4
  %85 = and i32 %84, 1
  %86 = xor i32 %85, 1
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %17, align 4
  br label %91

89:                                               ; preds = %72
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %89, %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %52

96:                                               ; preds = %52
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = icmp ult i32* %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @ss_rotate(i32* %109, i32* %110, i32* %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = load i32*, i32** %11, align 8
  %120 = sub i64 0, %118
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %11, align 8
  %122 = load i32*, i32** %14, align 8
  store i32* %122, i32** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = icmp eq i32* %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %147

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 -1
  store i32* %130, i32** %11, align 8
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %139, %133
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 -1
  store i32* %136, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %134

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %128
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = icmp eq i32* %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %147

146:                                              ; preds = %141
  br label %21

147:                                              ; preds = %145, %126
  ret void
}

declare dso_local i32 @ss_compare(i8*, i32*, i32*, i32) #1

declare dso_local i32 @ss_rotate(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
