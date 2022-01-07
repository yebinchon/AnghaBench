; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_BdExtract.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_BdExtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32)* @BdExtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BdExtract(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %121

22:                                               ; preds = %19, %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 16
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 4
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 %32, %33
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %104, %22
  %36 = load i32, i32* %9, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %120

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i64*, i64** %13, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = mul i32 %46, %47
  %49 = udiv i32 %48, 8
  %50 = call i32 @swab(i64* %42, i64* %43, i32 %49)
  br label %104

51:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %100, %51
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load i64*, i64** %14, align 8
  %58 = load i32, i32* %16, align 4
  %59 = mul i32 %58, 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i32, i32* %16, align 4
  %64 = mul i32 %63, 3
  %65 = add i32 2, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = mul i32 %70, 4
  %72 = add i32 1, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %69, i64 %73
  store i64 %68, i64* %74, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i32, i32* %16, align 4
  %77 = mul i32 %76, 3
  %78 = add i32 1, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %14, align 8
  %83 = load i32, i32* %16, align 4
  %84 = mul i32 %83, 4
  %85 = add i32 2, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = load i32, i32* %16, align 4
  %90 = mul i32 %89, 3
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %14, align 8
  %95 = load i32, i32* %16, align 4
  %96 = mul i32 %95, 4
  %97 = add i32 3, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  store i64 %93, i64* %99, align 8
  br label %100

100:                                              ; preds = %56
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %52

103:                                              ; preds = %52
  br label %104

104:                                              ; preds = %103, %41
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = mul i32 %107, %108
  %110 = udiv i32 %109, 8
  %111 = load i64*, i64** %13, align 8
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64* %113, i64** %13, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i64*, i64** %14, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64* %117, i64** %14, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %9, align 4
  br label %35

120:                                              ; preds = %35
  br label %132

121:                                              ; preds = %19
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @swab(i64* %124, i64* %127, i32 %130)
  br label %132

132:                                              ; preds = %121, %120
  ret void
}

declare dso_local i32 @swab(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
