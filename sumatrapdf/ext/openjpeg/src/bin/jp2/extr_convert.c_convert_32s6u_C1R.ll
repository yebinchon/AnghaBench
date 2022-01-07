; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s6u_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s6u_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i32)* @convert_32s6u_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_32s6u_C1R(i64* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %77, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %15
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 0
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i64*, i64** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i64*, i64** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 4
  %53 = or i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 2
  %63 = or i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %5, align 8
  store i8* %65, i8** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 3
  %70 = shl i32 %69, 6
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %5, align 8
  store i8* %74, i8** %75, align 8
  br label %77

77:                                               ; preds = %20
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 4
  store i32 %79, i32* %7, align 4
  br label %15

80:                                               ; preds = %15
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %150

84:                                               ; preds = %80
  %85 = load i64*, i64** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 0
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 3
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %115

96:                                               ; preds = %84
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ugt i32 %104, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %96
  %107 = load i64*, i64** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 2
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %106, %96
  br label %115

115:                                              ; preds = %114, %84
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 %116, 2
  %118 = load i32, i32* %13, align 4
  %119 = ashr i32 %118, 4
  %120 = or i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %5, align 8
  store i8* %122, i8** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %127, label %149

127:                                              ; preds = %115
  %128 = load i32, i32* %13, align 4
  %129 = and i32 %128, 15
  %130 = shl i32 %129, 4
  %131 = load i32, i32* %14, align 4
  %132 = ashr i32 %131, 2
  %133 = or i32 %130, %132
  %134 = zext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %5, align 8
  store i8* %135, i8** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = icmp ugt i32 %138, 2
  br i1 %139, label %140, label %148

140:                                              ; preds = %127
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, 3
  %143 = shl i32 %142, 6
  %144 = zext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %5, align 8
  store i8* %145, i8** %146, align 8
  br label %148

148:                                              ; preds = %140, %127
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
