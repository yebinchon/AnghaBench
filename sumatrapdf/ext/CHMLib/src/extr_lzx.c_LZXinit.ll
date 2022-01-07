; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_lzx.c_LZXinit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_lzx.c_LZXinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i32, i32, i32, i32, i32, i64*, i64*, i64, i64, i64, i32, i64, i64, i64, i64, i32* }

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
  br label %109

16:                                               ; preds = %12
  %17 = call i64 @malloc(i32 112)
  %18 = inttoptr i64 %17 to %struct.LZXstate*
  store %struct.LZXstate* %18, %struct.LZXstate** %4, align 8
  %19 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %20 = icmp ne %struct.LZXstate* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @malloc(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %26 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %25, i32 0, i32 15
  store i32* %24, i32** %26, align 8
  %27 = icmp ne i32* %24, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %30 = call i32 @free(%struct.LZXstate* %29)
  store %struct.LZXstate* null, %struct.LZXstate** %2, align 8
  br label %109

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %34 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %37 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 20
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 42, i32* %7, align 4
  br label %49

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 21
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 50, i32* %7, align 4
  br label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %44
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %51 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %50, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %53 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %55 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load i64, i64* @LZX_NUM_CHARS, align 8
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %62 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %61, i32 0, i32 14
  store i64 %60, i64* %62, align 8
  %63 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %64 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %63, i32 0, i32 13
  store i64 0, i64* %64, align 8
  %65 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %66 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %65, i32 0, i32 12
  store i64 0, i64* %66, align 8
  %67 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %68 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @LZX_BLOCKTYPE_INVALID, align 4
  %70 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %71 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %73 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %72, i32 0, i32 9
  store i64 0, i64* %73, align 8
  %74 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %75 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %74, i32 0, i32 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %77 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %76, i32 0, i32 7
  store i64 0, i64* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %89, %49
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @LZX_MAINTREE_MAXSYMBOLS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %84 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %83, i32 0, i32 6
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %78

92:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @LZX_LENGTH_MAXSYMBOLS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  %99 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %98, i32 0, i32 5
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load %struct.LZXstate*, %struct.LZXstate** %4, align 8
  store %struct.LZXstate* %108, %struct.LZXstate** %2, align 8
  br label %109

109:                                              ; preds = %107, %28, %15
  %110 = load %struct.LZXstate*, %struct.LZXstate** %2, align 8
  ret %struct.LZXstate* %110
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.LZXstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
