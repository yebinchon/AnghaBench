; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash.c_interleave64.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash.c_interleave64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interleave64.B = internal constant [5 x i32] [i32 1431655765, i32 858993459, i32 252645135, i32 16711935, i32 65535], align 16
@interleave64.S = internal constant [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @interleave64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interleave64(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 4), align 16
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  %14 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 4), align 16
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 4), align 16
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 4), align 16
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 3), align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 3), align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 3), align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 3), align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 2), align 8
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 2), align 8
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 2), align 8
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 2), align 8
  %50 = and i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 1), align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 1), align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 1), align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 1), align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 0), align 16
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 0), align 16
  %71 = and i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 0), align 16
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.B, i64 0, i64 0), align 16
  %78 = and i32 %76, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %80, 1
  %82 = or i32 %79, %81
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
