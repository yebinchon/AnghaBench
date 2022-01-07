; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_ShiftRow128Enc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_ShiftRow128Enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShiftRow128Enc(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %5 = load i32, i32* @MAXBC, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* @MAXBC, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = mul nsw i64 1, %6
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %15, i64* %16, align 16
  %17 = load i64*, i64** %2, align 8
  %18 = mul nsw i64 1, %6
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %2, align 8
  %24 = mul nsw i64 1, %6
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %10, i64 2
  store i64 %27, i64* %28, align 16
  %29 = load i64*, i64** %2, align 8
  %30 = mul nsw i64 1, %6
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %10, i64 3
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds i64, i64* %10, i64 0
  %36 = bitcast i64* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = load i64*, i64** %2, align 8
  %40 = mul nsw i64 1, %6
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = bitcast i64* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %38, i32* %44, align 4
  %45 = load i64*, i64** %2, align 8
  %46 = mul nsw i64 2, %6
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %49, i64* %50, align 16
  %51 = load i64*, i64** %2, align 8
  %52 = mul nsw i64 2, %6
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %55, i64* %56, align 8
  %57 = load i64*, i64** %2, align 8
  %58 = mul nsw i64 2, %6
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %10, i64 2
  store i64 %61, i64* %62, align 16
  %63 = load i64*, i64** %2, align 8
  %64 = mul nsw i64 2, %6
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %10, i64 3
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds i64, i64* %10, i64 0
  %70 = bitcast i64* %69 to i32*
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = load i64*, i64** %2, align 8
  %74 = mul nsw i64 2, %6
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = bitcast i64* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %72, i32* %78, align 4
  %79 = load i64*, i64** %2, align 8
  %80 = mul nsw i64 3, %6
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = getelementptr inbounds i64, i64* %81, i64 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %83, i64* %84, align 16
  %85 = load i64*, i64** %2, align 8
  %86 = mul nsw i64 3, %6
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %2, align 8
  %92 = mul nsw i64 3, %6
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %10, i64 2
  store i64 %95, i64* %96, align 16
  %97 = load i64*, i64** %2, align 8
  %98 = mul nsw i64 3, %6
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %10, i64 3
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds i64, i64* %10, i64 0
  %104 = bitcast i64* %103 to i32*
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = load i64*, i64** %2, align 8
  %108 = mul nsw i64 3, %6
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = bitcast i64* %110 to i32*
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %106, i32* %112, align 4
  %113 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
