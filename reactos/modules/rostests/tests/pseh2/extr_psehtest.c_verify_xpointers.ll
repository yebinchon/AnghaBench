; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/pseh2/extr_psehtest.c_verify_xpointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/pseh2/extr_psehtest.c_verify_xpointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._EXCEPTION_POINTERS = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._EXCEPTION_POINTERS*, i64, i64, i64, i32*, i32*, i32)* @verify_xpointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_xpointers(%struct._EXCEPTION_POINTERS* %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct._EXCEPTION_POINTERS*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct._EXCEPTION_POINTERS* %0, %struct._EXCEPTION_POINTERS** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %16 = icmp ne %struct._EXCEPTION_POINTERS* %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %7
  %18 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %19 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %17
  %23 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %24 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %29 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %27
  %36 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %37 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %35
  %44 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %45 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54, %51
  %58 = load %struct._EXCEPTION_POINTERS*, %struct._EXCEPTION_POINTERS** %8, align 8
  %59 = getelementptr inbounds %struct._EXCEPTION_POINTERS, %struct._EXCEPTION_POINTERS* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @memcmp(i32 %62, i32* %63, i32 %66)
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %57, %54, %43, %35, %27, %22, %17, %7
  %70 = phi i1 [ false, %54 ], [ false, %43 ], [ false, %35 ], [ false, %27 ], [ false, %22 ], [ false, %17 ], [ false, %7 ], [ %68, %57 ]
  %71 = zext i1 %70 to i32
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = call i32 (...) @return_positive()
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @return_positive(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
