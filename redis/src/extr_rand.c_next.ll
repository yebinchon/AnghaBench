; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rand.c_next.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rand.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i32* null, align 8
@x = common dso_local global i32* null, align 8
@c = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next() #0 {
  %1 = alloca [2 x i64], align 16
  %2 = alloca [2 x i64], align 16
  %3 = alloca [2 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32*, i32** @a, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @x, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %13 = call i32 @MUL(i32 %8, i32 %11, i64* %12)
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %15 = load i64, i64* %14, align 16
  %16 = load i64, i64* @c, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ADDEQU(i64 %15, i64 %16, i64 %17)
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ADDEQU(i64 %20, i64 %21, i64 %22)
  %24 = load i32*, i32** @a, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @x, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %31 = call i32 @MUL(i32 %26, i32 %29, i64* %30)
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @ADDEQU(i64 %33, i64 %35, i64 %36)
  %38 = load i32*, i32** @a, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @x, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %45 = call i32 @MUL(i32 %40, i32 %43, i64* %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %46, %47
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = call i64 @CARRY(i64 %50, i64 %52)
  %54 = add nsw i64 %48, %53
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %54, %56
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = load i32*, i32** @a, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @x, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %60, %68
  %70 = load i32*, i32** @a, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @x, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %69, %77
  %79 = load i32*, i32** @a, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @x, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %78, %86
  %88 = call i32 @LOW(i64 %87)
  %89 = load i32*, i32** @x, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %94 = load i64, i64* %93, align 16
  %95 = add nsw i64 %92, %94
  %96 = call i32 @LOW(i64 %95)
  %97 = load i32*, i32** @x, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %100 = load i64, i64* %99, align 16
  %101 = call i32 @LOW(i64 %100)
  %102 = load i32*, i32** @x, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  ret void
}

declare dso_local i32 @MUL(i32, i32, i64*) #1

declare dso_local i32 @ADDEQU(i64, i64, i64) #1

declare dso_local i32 @LOW(i64) #1

declare dso_local i64 @CARRY(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
