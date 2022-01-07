; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_trsort.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_trsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @trsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trsort(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @tr_ilg(i32 %16)
  %18 = mul nsw i32 %17, 2
  %19 = sdiv i32 %18, 3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @trbudget_init(%struct.TYPE_4__* %12, i32 %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %9, align 8
  br label %26

26:                                               ; preds = %134, %4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %143

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %113, %32
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = sext i32 %39 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %14, align 4
  br label %112

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = icmp slt i64 1, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @tr_introsort(i32* %75, i32* %76, i32* %77, i32* %78, i32* %79, %struct.TYPE_4__* %12)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %15, align 4
  br label %99

91:                                               ; preds = %73
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %91, %84
  br label %110

100:                                              ; preds = %56
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 -1, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %100
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32*, i32** %11, align 8
  store i32* %111, i32** %10, align 8
  br label %112

112:                                              ; preds = %110, %38
  br label %113

113:                                              ; preds = %112
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = icmp ult i32* %114, %118
  br i1 %119, label %34, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %143

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 %140
  store i32* %142, i32** %9, align 8
  br label %26

143:                                              ; preds = %132, %26
  ret void
}

declare dso_local i32 @trbudget_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @tr_ilg(i32) #1

declare dso_local i32 @tr_introsort(i32*, i32*, i32*, i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
