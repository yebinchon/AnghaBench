; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_ConvertInputAnsiToUnicode.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_alias.c_ConvertInputAnsiToUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertInputAnsiToUnicode(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32**, i32*** %10, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %14, %5
  %21 = phi i1 [ false, %14 ], [ false, %5 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @MultiByteToWideChar(i32 %26, i32 0, i64 %27, i32 %28, i32* null, i32 0)
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @ConsoleAllocHeap(i32 0, i32 %35)
  %37 = load i32**, i32*** %10, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32**, i32*** %10, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %60

43:                                               ; preds = %20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32**, i32*** %10, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MultiByteToWideChar(i32 %46, i32 0, i64 %47, i32 %48, i32* %50, i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %43, %41
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32* @ConsoleAllocHeap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
