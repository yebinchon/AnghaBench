; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_consonant_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_consonant_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Nukta = common dso_local global i64 0, align 8
@lex_Halant = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64 (i32)*)* @consonant_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consonant_header(i32* %0, i32 %1, i32 %2, i32 %3, i64 (i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64 (i32)*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 (i32)* %4, i64 (i32)** %11, align 8
  %12 = load i64 (i32)*, i64 (i32)** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 %12(i32 %17)
  %19 = call i64 @is_consonant(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %137

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i64 (i32)*, i64 (i32)** %11, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 %29(i32 %34)
  %36 = load i64, i64* @lex_Nukta, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %28, %22
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = load i64 (i32)*, i64 (i32)** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 %46(i32 %51)
  %53 = load i64, i64* @lex_Halant, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i64 (i32)*, i64 (i32)** %11, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 %62(i32 %67)
  %69 = call i64 @is_joiner(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %61, %55
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i64 (i32)*, i64 (i32)** %11, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 %79(i32 %84)
  %86 = call i64 @is_consonant(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %6, align 4
  br label %137

90:                                               ; preds = %78, %74
  br label %136

91:                                               ; preds = %45, %41
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %91
  %96 = load i64 (i32)*, i64 (i32)** %11, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 %96(i32 %101)
  %103 = call i64 @is_joiner(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %95
  %106 = load i64 (i32)*, i64 (i32)** %11, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 %106(i32 %112)
  %114 = load i64, i64* @lex_Halant, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 2
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load i64 (i32)*, i64 (i32)** %11, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 %123(i32 %128)
  %130 = call i64 @is_consonant(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %6, align 4
  br label %137

134:                                              ; preds = %122, %116
  br label %135

135:                                              ; preds = %134, %105, %95, %91
  br label %136

136:                                              ; preds = %135, %90
  store i32 -1, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %132, %88, %21
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @is_consonant(i64) #1

declare dso_local i64 @is_joiner(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
