; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_count_run.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_count_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @COUNT_RUN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COUNT_RUN(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub i64 %9, %10
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 1, i64* %4, align 8
  br label %118

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 2
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 2
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @SORT_CMP(i32 %24, i32 %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 2
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SORT_SWAP(i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %32, %19
  store i64 2, i64* %4, align 8
  br label %118

45:                                               ; preds = %14
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 2
  store i64 %47, i64* %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @SORT_CMP(i32 %51, i32 %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %79
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, 1
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %82

66:                                               ; preds = %60
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @SORT_CMP(i32 %71, i32 %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %82

79:                                               ; preds = %66
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %60

82:                                               ; preds = %78, %65
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %4, align 8
  br label %118

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %86, %106
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %89, 1
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %109

93:                                               ; preds = %87
  %94 = load i32*, i32** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @SORT_CMP(i32 %98, i32 %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %109

106:                                              ; preds = %93
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %87

109:                                              ; preds = %105, %92
  %110 = load i32*, i32** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, 1
  %114 = call i32 @REVERSE_ELEMENTS(i32* %110, i64 %111, i64 %113)
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %109, %82, %44, %13
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i64 @SORT_CMP(i32, i32) #1

declare dso_local i32 @SORT_SWAP(i32, i32) #1

declare dso_local i32 @REVERSE_ELEMENTS(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
