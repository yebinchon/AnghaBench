; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_msg.h_add_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_msg.h_add_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_sequence = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.message = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_sequence**, i32, %struct.message*)* @add_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_message(%struct.msg_sequence** %0, i32 %1, %struct.message* %2) #0 {
  %4 = alloca %struct.msg_sequence**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca %struct.msg_sequence*, align 8
  store %struct.msg_sequence** %0, %struct.msg_sequence*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.message* %2, %struct.message** %6, align 8
  %8 = load %struct.msg_sequence**, %struct.msg_sequence*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.msg_sequence*, %struct.msg_sequence** %8, i64 %10
  %12 = load %struct.msg_sequence*, %struct.msg_sequence** %11, align 8
  store %struct.msg_sequence* %12, %struct.msg_sequence** %7, align 8
  %13 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %14 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %19 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %18, i32 0, i32 0
  store i32 10, i32* %19, align 8
  %20 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %21 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 20
  %25 = trunc i64 %24 to i32
  %26 = call %struct.TYPE_5__* @heap_alloc(i32 %25)
  %27 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %28 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %27, i32 0, i32 2
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  br label %29

29:                                               ; preds = %17, %3
  %30 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %31 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %34 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %40 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  %43 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %44 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %47 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 20
  %51 = trunc i64 %50 to i32
  %52 = call %struct.TYPE_5__* @heap_realloc(%struct.TYPE_5__* %45, i32 %51)
  %53 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %54 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %53, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  br label %55

55:                                               ; preds = %38, %29
  %56 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %57 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @assert(%struct.TYPE_5__* %58)
  %60 = load %struct.message*, %struct.message** %6, align 8
  %61 = getelementptr inbounds %struct.message, %struct.message* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %64 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %67 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32 %62, i32* %70, align 4
  %71 = load %struct.message*, %struct.message** %6, align 8
  %72 = getelementptr inbounds %struct.message, %struct.message* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %75 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %78 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i32 %73, i32* %81, align 4
  %82 = load %struct.message*, %struct.message** %6, align 8
  %83 = getelementptr inbounds %struct.message, %struct.message* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %86 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %89 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 %84, i32* %92, align 4
  %93 = load %struct.message*, %struct.message** %6, align 8
  %94 = getelementptr inbounds %struct.message, %struct.message* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %97 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %100 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %95, i32* %103, align 4
  %104 = load %struct.message*, %struct.message** %6, align 8
  %105 = getelementptr inbounds %struct.message, %struct.message* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %108 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %111 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 %106, i32* %114, align 4
  %115 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %116 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
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
