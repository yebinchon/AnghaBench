; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s2u_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s2u_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i32)* @convert_32s2u_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_32s2u_C1R(i64* %0, i8** %1, i32 %2) #0 {
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

15:                                               ; preds = %63, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %66

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
  %50 = shl i32 %49, 6
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 4
  %53 = or i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 2
  %56 = or i32 %53, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  store i8* %60, i8** %61, align 8
  br label %63

63:                                               ; preds = %20
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 4
  store i32 %65, i32* %7, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 3
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %66
  %71 = load i64*, i64** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 0
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 3
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %101

82:                                               ; preds = %70
  %83 = load i64*, i64** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i64*, i64** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add i32 %94, 2
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %92, %82
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i32, i32* %12, align 4
  %103 = shl i32 %102, 6
  %104 = load i32, i32* %13, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %103, %105
  %107 = load i32, i32* %14, align 4
  %108 = shl i32 %107, 2
  %109 = or i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i32 1
  store i8** %113, i8*** %5, align 8
  store i8* %111, i8** %112, align 8
  br label %114

114:                                              ; preds = %101, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
