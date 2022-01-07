; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_inter_maxtoabs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_inter_maxtoabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval**, %struct.timeval*, i64, i32, i64, i32)* @inter_maxtoabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inter_maxtoabs(%struct.timeval** %0, %struct.timeval* %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval**, align 8
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = bitcast %struct.timeval* %7 to { i64, i32 }*
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %3, i32* %15, align 8
  %16 = bitcast %struct.timeval* %8 to { i64, i32 }*
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  store i64 %4, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  store i32 %5, i32* %18, align 8
  store %struct.timeval** %0, %struct.timeval*** %9, align 8
  store %struct.timeval* %1, %struct.timeval** %10, align 8
  %19 = load %struct.timeval**, %struct.timeval*** %9, align 8
  %20 = icmp ne %struct.timeval** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %67

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 2
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 2000000
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, %31
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ldiv(i32 %36, i32 1000000)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.TYPE_3__* %11 to i8*
  %40 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %43
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1000000
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %22
  %57 = call i32 @timerclear(%struct.timeval* %8)
  br label %58

58:                                               ; preds = %56, %22
  %59 = load %struct.timeval**, %struct.timeval*** %9, align 8
  %60 = load %struct.timeval*, %struct.timeval** %10, align 8
  %61 = bitcast %struct.timeval* %8 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @inter_maxto(%struct.timeval** %59, %struct.timeval* %60, i64 %63, i32 %65)
  br label %67

67:                                               ; preds = %58, %21
  ret void
}

declare dso_local i32 @ldiv(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @inter_maxto(%struct.timeval**, %struct.timeval*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
