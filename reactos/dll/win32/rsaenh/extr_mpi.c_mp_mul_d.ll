; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_mul_d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_mul_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8**, i32 }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@DIGIT_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, %struct.TYPE_6__*)* @mp_mul_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_mul_d(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @mp_grow(%struct.TYPE_6__* %24, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @MP_OKAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %106

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  store i8** %46, i8*** %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %10, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %81, %35
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load i8**, i8*** %9, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %9, align 8
  %61 = load i8*, i8** %59, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load i8*, i8** %6, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = mul nsw i32 %62, %64
  %66 = add nsw i32 %58, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* @MP_MASK, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8**, i8*** %10, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %10, align 8
  store i8* %72, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i64, i64* @DIGIT_BIT, align 8
  %77 = trunc i64 %76 to i32
  %78 = ashr i32 %75, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %8, align 8
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load i8*, i8** %8, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %10, align 8
  store i8* %85, i8** %86, align 8
  br label %88

88:                                               ; preds = %93, %84
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8**, i8*** %10, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %10, align 8
  store i8* null, i8** %94, align 8
  br label %88

96:                                               ; preds = %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = call i32 @mp_clamp(%struct.TYPE_6__* %103)
  %105 = load i32, i32* @MP_OKAY, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %96, %32
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @mp_grow(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
