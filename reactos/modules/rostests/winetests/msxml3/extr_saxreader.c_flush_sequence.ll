; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_flush_sequence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_flush_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call_sequence = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call_sequence**, i32)* @flush_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_sequence(%struct.call_sequence** %0, i32 %1) #0 {
  %3 = alloca %struct.call_sequence**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.call_sequence*, align 8
  %7 = alloca i32, align 4
  store %struct.call_sequence** %0, %struct.call_sequence*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.call_sequence**, %struct.call_sequence*** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.call_sequence*, %struct.call_sequence** %8, i64 %10
  %12 = load %struct.call_sequence*, %struct.call_sequence** %11, align 8
  store %struct.call_sequence* %12, %struct.call_sequence** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %135, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %16 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %138

19:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %88, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %23 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %21, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %20
  %32 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %33 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SysFreeString(i32 %44)
  %46 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %47 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SysFreeString(i32 %58)
  %60 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %61 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SysFreeString(i32 %72)
  %74 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %75 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @SysFreeString(i32 %86)
  br label %88

88:                                               ; preds = %31
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %93 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @heap_free(%struct.TYPE_2__* %99)
  %101 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %102 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %109 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SysFreeString(i32 %115)
  %117 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %118 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @SysFreeString(i32 %124)
  %126 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %127 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @SysFreeString(i32 %133)
  br label %135

135:                                              ; preds = %91
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %13

138:                                              ; preds = %13
  %139 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %140 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = call i32 @heap_free(%struct.TYPE_2__* %141)
  %143 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %144 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %143, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %144, align 8
  %145 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %146 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.call_sequence*, %struct.call_sequence** %6, align 8
  %148 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  ret void
}

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
