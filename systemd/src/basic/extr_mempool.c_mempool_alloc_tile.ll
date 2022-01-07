; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_mempool.c_mempool_alloc_tile.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_mempool.c_mempool_alloc_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempool = type { i32, i64, %struct.pool*, i8* }
%struct.pool = type { i64, i64, %struct.pool* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mempool_alloc_tile(%struct.mempool* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mempool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pool*, align 8
  store %struct.mempool* %0, %struct.mempool** %3, align 8
  %9 = load %struct.mempool*, %struct.mempool** %3, align 8
  %10 = getelementptr inbounds %struct.mempool, %struct.mempool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %12, 8
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.mempool*, %struct.mempool** %3, align 8
  %17 = getelementptr inbounds %struct.mempool, %struct.mempool* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.mempool*, %struct.mempool** %3, align 8
  %23 = getelementptr inbounds %struct.mempool, %struct.mempool* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.mempool*, %struct.mempool** %3, align 8
  %28 = getelementptr inbounds %struct.mempool, %struct.mempool* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load %struct.mempool*, %struct.mempool** %3, align 8
  %31 = getelementptr inbounds %struct.mempool, %struct.mempool* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.mempool*, %struct.mempool** %3, align 8
  %36 = getelementptr inbounds %struct.mempool, %struct.mempool* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %2, align 8
  br label %138

38:                                               ; preds = %1
  %39 = load %struct.mempool*, %struct.mempool** %3, align 8
  %40 = getelementptr inbounds %struct.mempool, %struct.mempool* %39, i32 0, i32 2
  %41 = load %struct.pool*, %struct.pool** %40, align 8
  %42 = icmp ne %struct.pool* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @_unlikely_(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %38
  %48 = load %struct.mempool*, %struct.mempool** %3, align 8
  %49 = getelementptr inbounds %struct.mempool, %struct.mempool* %48, i32 0, i32 2
  %50 = load %struct.pool*, %struct.pool** %49, align 8
  %51 = getelementptr inbounds %struct.pool, %struct.pool* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mempool*, %struct.mempool** %3, align 8
  %54 = getelementptr inbounds %struct.mempool, %struct.mempool* %53, i32 0, i32 2
  %55 = load %struct.pool*, %struct.pool** %54, align 8
  %56 = getelementptr inbounds %struct.pool, %struct.pool* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %52, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @_unlikely_(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %47, %38
  %63 = load %struct.mempool*, %struct.mempool** %3, align 8
  %64 = getelementptr inbounds %struct.mempool, %struct.mempool* %63, i32 0, i32 2
  %65 = load %struct.pool*, %struct.pool** %64, align 8
  %66 = icmp ne %struct.pool* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.mempool*, %struct.mempool** %3, align 8
  %69 = getelementptr inbounds %struct.mempool, %struct.mempool* %68, i32 0, i32 2
  %70 = load %struct.pool*, %struct.pool** %69, align 8
  %71 = getelementptr inbounds %struct.pool, %struct.pool* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i64 [ %72, %67 ], [ 0, %73 ]
  store i64 %75, i64* %7, align 8
  %76 = load %struct.mempool*, %struct.mempool** %3, align 8
  %77 = getelementptr inbounds %struct.mempool, %struct.mempool* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = mul i64 %79, 2
  %81 = call i64 @MAX(i64 %78, i64 %80)
  store i64 %81, i64* %7, align 8
  %82 = call i64 @ALIGN(i32 24)
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.mempool*, %struct.mempool** %3, align 8
  %85 = getelementptr inbounds %struct.mempool, %struct.mempool* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 %83, %87
  %89 = add i64 %82, %88
  %90 = call i64 @PAGE_ALIGN(i64 %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @ALIGN(i32 24)
  %93 = sub i64 %91, %92
  %94 = load %struct.mempool*, %struct.mempool** %3, align 8
  %95 = getelementptr inbounds %struct.mempool, %struct.mempool* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = udiv i64 %93, %97
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call %struct.pool* @malloc(i64 %99)
  store %struct.pool* %100, %struct.pool** %8, align 8
  %101 = load %struct.pool*, %struct.pool** %8, align 8
  %102 = icmp ne %struct.pool* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %74
  store i8* null, i8** %2, align 8
  br label %138

104:                                              ; preds = %74
  %105 = load %struct.mempool*, %struct.mempool** %3, align 8
  %106 = getelementptr inbounds %struct.mempool, %struct.mempool* %105, i32 0, i32 2
  %107 = load %struct.pool*, %struct.pool** %106, align 8
  %108 = load %struct.pool*, %struct.pool** %8, align 8
  %109 = getelementptr inbounds %struct.pool, %struct.pool* %108, i32 0, i32 2
  store %struct.pool* %107, %struct.pool** %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.pool*, %struct.pool** %8, align 8
  %112 = getelementptr inbounds %struct.pool, %struct.pool* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.pool*, %struct.pool** %8, align 8
  %114 = getelementptr inbounds %struct.pool, %struct.pool* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.pool*, %struct.pool** %8, align 8
  %116 = load %struct.mempool*, %struct.mempool** %3, align 8
  %117 = getelementptr inbounds %struct.mempool, %struct.mempool* %116, i32 0, i32 2
  store %struct.pool* %115, %struct.pool** %117, align 8
  br label %118

118:                                              ; preds = %104, %47
  %119 = load %struct.mempool*, %struct.mempool** %3, align 8
  %120 = getelementptr inbounds %struct.mempool, %struct.mempool* %119, i32 0, i32 2
  %121 = load %struct.pool*, %struct.pool** %120, align 8
  %122 = getelementptr inbounds %struct.pool, %struct.pool* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  store i64 %123, i64* %4, align 8
  %125 = load %struct.mempool*, %struct.mempool** %3, align 8
  %126 = getelementptr inbounds %struct.mempool, %struct.mempool* %125, i32 0, i32 2
  %127 = load %struct.pool*, %struct.pool** %126, align 8
  %128 = bitcast %struct.pool* %127 to i8*
  %129 = call i64 @ALIGN(i32 24)
  %130 = getelementptr i8, i8* %128, i64 %129
  %131 = load i64, i64* %4, align 8
  %132 = load %struct.mempool*, %struct.mempool** %3, align 8
  %133 = getelementptr inbounds %struct.mempool, %struct.mempool* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = mul i64 %131, %135
  %137 = getelementptr i8, i8* %130, i64 %136
  store i8* %137, i8** %2, align 8
  br label %138

138:                                              ; preds = %118, %103, %26
  %139 = load i8*, i8** %2, align 8
  ret i8* %139
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_unlikely_(i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @ALIGN(i32) #1

declare dso_local %struct.pool* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
