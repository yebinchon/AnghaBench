; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_pop.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @array_pop(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca i8*, align 8
  store %struct.array* %0, %struct.array** %2, align 8
  %4 = load %struct.array*, %struct.array** %2, align 8
  %5 = getelementptr inbounds %struct.array, %struct.array* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.array*, %struct.array** %2, align 8
  %11 = getelementptr inbounds %struct.array, %struct.array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.array*, %struct.array** %2, align 8
  %15 = getelementptr inbounds %struct.array, %struct.array* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.array*, %struct.array** %2, align 8
  %19 = getelementptr inbounds %struct.array, %struct.array* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.array*, %struct.array** %2, align 8
  %22 = getelementptr inbounds %struct.array, %struct.array* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %17, i64 %25
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
