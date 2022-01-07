; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_js_grisu2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_js_grisu2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_grisu2(double %0, i8* %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca %struct.TYPE_13__, align 8
  store double %0, double* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 64, i32* %15, align 4
  store i32 -59, i32* %16, align 4
  store i32 -56, i32* %17, align 4
  %22 = load double, double* %4, align 8
  %23 = call i32 @normalized_boundaries(double %22, %struct.TYPE_13__* %9, %struct.TYPE_13__* %10)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @k_comp(i64 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call { i32, i64 } @cached_power(i32 %32)
  %34 = bitcast %struct.TYPE_13__* %18 to { i32, i64 }*
  %35 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %34, i32 0, i32 0
  %36 = extractvalue { i32, i64 } %33, 0
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %34, i32 0, i32 1
  %38 = extractvalue { i32, i64 } %33, 1
  store i64 %38, i64* %37, align 8
  %39 = bitcast %struct.TYPE_13__* %11 to i8*
  %40 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = bitcast %struct.TYPE_13__* %10 to { i32, i64 }*
  %42 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = bitcast %struct.TYPE_13__* %11 to { i32, i64 }*
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call { i32, i64 } @multiply(i32 %43, i64 %45, i32 %48, i64 %50)
  %52 = bitcast %struct.TYPE_13__* %19 to { i32, i64 }*
  %53 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %52, i32 0, i32 0
  %54 = extractvalue { i32, i64 } %51, 0
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %52, i32 0, i32 1
  %56 = extractvalue { i32, i64 } %51, 1
  store i64 %56, i64* %55, align 8
  %57 = bitcast %struct.TYPE_13__* %12 to i8*
  %58 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = bitcast %struct.TYPE_13__* %9 to { i32, i64 }*
  %60 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %59, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = bitcast %struct.TYPE_13__* %11 to { i32, i64 }*
  %65 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %64, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call { i32, i64 } @multiply(i32 %61, i64 %63, i32 %66, i64 %68)
  %70 = bitcast %struct.TYPE_13__* %20 to { i32, i64 }*
  %71 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %70, i32 0, i32 0
  %72 = extractvalue { i32, i64 } %69, 0
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %70, i32 0, i32 1
  %74 = extractvalue { i32, i64 } %69, 1
  store i64 %74, i64* %73, align 8
  %75 = bitcast %struct.TYPE_13__* %13 to i8*
  %76 = bitcast %struct.TYPE_13__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 16, i1 false)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  %83 = bitcast %struct.TYPE_13__* %12 to { i32, i64 }*
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = bitcast %struct.TYPE_13__* %13 to { i32, i64 }*
  %89 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %88, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call { i32, i64 } @minus(i32 %85, i64 %87, i32 %90, i64 %92)
  %94 = bitcast %struct.TYPE_13__* %21 to { i32, i64 }*
  %95 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %94, i32 0, i32 0
  %96 = extractvalue { i32, i64 } %93, 0
  store i32 %96, i32* %95, align 8
  %97 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %94, i32 0, i32 1
  %98 = extractvalue { i32, i64 } %93, 1
  store i64 %98, i64* %97, align 8
  %99 = bitcast %struct.TYPE_13__* %14 to i8*
  %100 = bitcast %struct.TYPE_13__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 0, %101
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = bitcast %struct.TYPE_13__* %12 to { i32, i64 }*
  %107 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %struct.TYPE_13__* %14 to { i32, i64 }*
  %112 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %111, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @digit_gen(i32 %108, i64 %110, i32 %113, i64 %115, i8* %104, i32* %7, i32* %105)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @normalized_boundaries(double, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @k_comp(i64, i32, i32) #1

declare dso_local { i32, i64 } @cached_power(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i32, i64 } @multiply(i32, i64, i32, i64) #1

declare dso_local { i32, i64 } @minus(i32, i64, i32, i64) #1

declare dso_local i32 @digit_gen(i32, i64, i32, i64, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
