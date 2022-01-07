; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash.c_deinterleave64.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash.c_deinterleave64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@deinterleave64.B = internal constant [6 x i32] [i32 1431655765, i32 858993459, i32 252645135, i32 16711935, i32 65535, i32 -1], align 16
@deinterleave64.S = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @deinterleave64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterleave64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 0), align 16
  %11 = ashr i32 %9, %10
  %12 = or i32 %8, %11
  %13 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 0), align 16
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 0), align 16
  %18 = ashr i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 0), align 16
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 1), align 4
  %25 = ashr i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 1), align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 1), align 4
  %32 = ashr i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 1), align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 2), align 8
  %39 = ashr i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 2), align 8
  %42 = and i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 2), align 8
  %46 = ashr i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 2), align 8
  %49 = and i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 3), align 4
  %53 = ashr i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 3), align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 3), align 4
  %60 = ashr i32 %58, %59
  %61 = or i32 %57, %60
  %62 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 3), align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 4), align 16
  %67 = ashr i32 %65, %66
  %68 = or i32 %64, %67
  %69 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 4), align 16
  %70 = and i32 %68, %69
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 4), align 16
  %74 = ashr i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 4), align 16
  %77 = and i32 %75, %76
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 5), align 4
  %81 = ashr i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 5), align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 5), align 4
  %88 = ashr i32 %86, %87
  %89 = or i32 %85, %88
  %90 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.B, i64 0, i64 5), align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 32
  %95 = or i32 %92, %94
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
