; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mspatcha/extr_lzx.c_LZXinit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mspatcha/extr_lzx.c_LZXinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i32, i32, i32, i32, i32, i64*, i64*, i64, i64, i64, i32, i64, i64, i64, i64, i8* }

@LZX_NUM_CHARS = common dso_local global i64 0, align 8
@LZX_BLOCKTYPE_INVALID = common dso_local global i32 0, align 4
@LZX_MAINTREE_MAXSYMBOLS = common dso_local global i32 0, align 4
@LZX_LENGTH_MAXSYMBOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LZXstate* @LZXinit(i32 %0) #0 {
  %2 = alloca %struct.LZXstate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.LZXstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.LZXstate* null, %struct.LZXstate** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 15
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 21
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  store %struct.LZXstate* null, %struct.LZXstate** %2, align 8
  br label %108

16:                                               ; preds = %12
  %17 = call i32 (...) @GetProcessHeap()
  %18 = call i8* @HeapAlloc(i32 %17, i32 0, i32 112)
  %19 = bitcast i8* %18 to %struct.LZXstate*
  store %struct.LZXstate* %19, %struct.LZXstate** %4, align 8
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @HeapAlloc(i32 %20, i32 0, i32 %21)
  %23 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %24 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %23, i32 0, i32 15
  store i8* %22, i8** %24, align 8
  %25 = icmp ne i8* %22, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %29 = call i32 @HeapFree(i32 %27, i32 0, %struct.LZXstate* %28)
  store %struct.LZXstate* null, %struct.LZXstate** %2, align 8
  br label %108

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %33 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %36 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 20
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 42, i32* %7, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 21
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 50, i32* %7, align 4
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %50 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %52 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  %53 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %54 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load i64, i64* @LZX_NUM_CHARS, align 8
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %61 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %60, i32 0, i32 14
  store i64 %59, i64* %61, align 8
  %62 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %63 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %62, i32 0, i32 13
  store i64 0, i64* %63, align 8
  %64 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %65 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %64, i32 0, i32 12
  store i64 0, i64* %65, align 8
  %66 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %67 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @LZX_BLOCKTYPE_INVALID, align 4
  %69 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %70 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %72 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %74 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %76 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %88, %48
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @LZX_MAINTREE_MAXSYMBOLS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %83 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %82, i32 0, i32 6
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %77

91:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @LZX_LENGTH_MAXSYMBOLS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %98 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  store %struct.LZXstate* %107, %struct.LZXstate** %2, align 8
  br label %108

108:                                              ; preds = %106, %26, %15
  %109 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  ret %struct.LZXstate* %109
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.LZXstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
