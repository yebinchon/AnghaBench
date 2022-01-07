; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_digit_gen.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_digit_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*, i32*, i32*)* @digit_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digit_gen(i64 %0, i64 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = bitcast %struct.TYPE_4__* %6 to i64*
  store i64 %0, i64* %17, align 4
  %18 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %1, i64* %18, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 0, %20
  %22 = shl i32 1, %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 0, %30
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %12, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %34, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  store i32 3, i32* %15, align 4
  %40 = load i32, i32* @TEN2, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %87, %5
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 48, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 %57, i8* %63, align 1
  br label %64

64:                                               ; preds = %54, %50
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = srem i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 10
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 0, %74
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %134

87:                                               ; preds = %64
  br label %41

88:                                               ; preds = %41
  br label %89

89:                                               ; preds = %124, %88
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %90, 10
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 0, %94
  %96 = ashr i32 %92, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %89
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99, %89
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 48, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 %106, i8* %112, align 1
  br label %113

113:                                              ; preds = %103, %99
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %15, align 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 10
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %13, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %89, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %82
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
