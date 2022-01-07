; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_add_call.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_add_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call_sequence = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.call_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call_sequence**, i32, %struct.call_entry*)* @add_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_call(%struct.call_sequence** %0, i32 %1, %struct.call_entry* %2) #0 {
  %4 = alloca %struct.call_sequence**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.call_entry*, align 8
  %7 = alloca %struct.call_sequence*, align 8
  store %struct.call_sequence** %0, %struct.call_sequence*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.call_entry* %2, %struct.call_entry** %6, align 8
  %8 = load %struct.call_sequence**, %struct.call_sequence*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.call_sequence*, %struct.call_sequence** %8, i64 %10
  %12 = load %struct.call_sequence*, %struct.call_sequence** %11, align 8
  store %struct.call_sequence* %12, %struct.call_sequence** %7, align 8
  %13 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %14 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %19 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %18, i32 0, i32 0
  store i32 10, i32* %19, align 8
  %20 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %21 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 36
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_5__* @heap_alloc(i32 %25)
  %27 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %28 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %27, i32 0, i32 2
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  br label %29

29:                                               ; preds = %17, %3
  %30 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %31 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %34 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %40 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  %43 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %44 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %47 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 36
  %51 = trunc i64 %50 to i32
  %52 = call %struct.TYPE_5__* @heap_realloc(%struct.TYPE_5__* %45, i32 %51)
  %53 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %54 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %53, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  br label %55

55:                                               ; preds = %38, %29
  %56 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %57 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @assert(%struct.TYPE_5__* %58)
  %60 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %61 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %64 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %67 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 8
  store i32 %62, i32* %70, align 4
  %71 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %72 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %75 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %78 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 7
  store i32 %73, i32* %81, align 4
  %82 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %83 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %86 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %89 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  store i32 %84, i32* %92, align 4
  %93 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %94 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %97 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %100 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store i32 %95, i32* %103, align 4
  %104 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %105 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %108 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %111 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %106, i32* %114, align 4
  %115 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %116 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %119 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %122 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 %117, i32* %125, align 4
  %126 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %127 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %130 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %129, i32 0, i32 2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %133 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i32 %128, i32* %136, align 4
  %137 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %138 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %141 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %144 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i32 %139, i32* %147, align 4
  %148 = load %struct.call_entry*, %struct.call_entry** %6, align 8
  %149 = getelementptr inbounds %struct.call_entry, %struct.call_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %152 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %155 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %150, i32* %158, align 4
  %159 = load %struct.call_sequence*, %struct.call_sequence** %7, align 8
  %160 = getelementptr inbounds %struct.call_sequence, %struct.call_sequence* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  ret void
}

declare dso_local %struct.TYPE_5__* @heap_alloc(i32) #1

declare dso_local %struct.TYPE_5__* @heap_realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
