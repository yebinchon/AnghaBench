; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpEncodeBacklen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpEncodeBacklen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpEncodeBacklen(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 127
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %15, align 1
  br label %16

16:                                               ; preds = %11, %8
  store i64 1, i64* %3, align 8
  br label %132

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 16383
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 7
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 127
  %31 = or i32 %30, 128
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  br label %35

35:                                               ; preds = %23, %20
  store i64 2, i64* %3, align 8
  br label %132

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 2097151
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 14
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 7
  %50 = and i32 %49, 127
  %51 = or i32 %50, 128
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 %52, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 127
  %57 = or i32 %56, 128
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8 %58, i8* %60, align 1
  br label %61

61:                                               ; preds = %42, %39
  store i64 3, i64* %3, align 8
  br label %132

62:                                               ; preds = %36
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 268435455
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %69, 21
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 14
  %76 = and i32 %75, 127
  %77 = or i32 %76, 128
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 7
  %83 = and i32 %82, 127
  %84 = or i32 %83, 128
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8 %85, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 127
  %90 = or i32 %89, 128
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8 %91, i8* %93, align 1
  br label %94

94:                                               ; preds = %68, %65
  store i64 4, i64* %3, align 8
  br label %132

95:                                               ; preds = %62
  %96 = load i8*, i8** %4, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = ashr i32 %99, 28
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 21
  %106 = and i32 %105, 127
  %107 = or i32 %106, 128
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %5, align 4
  %112 = ashr i32 %111, 14
  %113 = and i32 %112, 127
  %114 = or i32 %113, 128
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8 %115, i8* %117, align 1
  %118 = load i32, i32* %5, align 4
  %119 = ashr i32 %118, 7
  %120 = and i32 %119, 127
  %121 = or i32 %120, 128
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 3
  store i8 %122, i8* %124, align 1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 127
  %127 = or i32 %126, 128
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8 %128, i8* %130, align 1
  br label %131

131:                                              ; preds = %98, %95
  store i64 5, i64* %3, align 8
  br label %132

132:                                              ; preds = %131, %94, %61, %35, %16
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
