; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_fuzzer.c_FUZ_decodeSequences.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_fuzzer.c_FUZ_decodeSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i64, i32*, i64)* @FUZ_decodeSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FUZ_decodeSequences(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %139, %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub i64 %15, 1
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %142

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = icmp ult i32* %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = icmp ult i32* %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = call i32 @memcpy(i32* %59, i32* %60, i64 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %6, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %92

92:                                               ; preds = %114, %18
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %92
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %102, %107
  %109 = getelementptr inbounds i32, i32* %101, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %100
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %12, align 8
  br label %92

117:                                              ; preds = %92
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %122
  store i32* %124, i32** %6, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  store i32* %131, i32** %9, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %117
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %13

142:                                              ; preds = %13
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @memcpy(i32* %143, i32* %144, i64 %145)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
