; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_findPropID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_findPropID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CertPropIDHeader = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CertPropIDHeader* (i32*, i32, i32)* @findPropID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CertPropIDHeader* @findPropID(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CertPropIDHeader*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.CertPropIDHeader*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.CertPropIDHeader* null, %struct.CertPropIDHeader** %7, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %67, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %7, align 8
  %16 = icmp ne %struct.CertPropIDHeader* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14, %11
  %22 = phi i1 [ false, %14 ], [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %68

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %8, align 8
  br label %67

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = bitcast i32* %30 to %struct.CertPropIDHeader*
  store %struct.CertPropIDHeader* %31, %struct.CertPropIDHeader** %9, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %9, align 8
  %40 = getelementptr inbounds %struct.CertPropIDHeader, %struct.CertPropIDHeader* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %8, align 8
  br label %66

45:                                               ; preds = %29
  %46 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %9, align 8
  %47 = getelementptr inbounds %struct.CertPropIDHeader, %struct.CertPropIDHeader* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %9, align 8
  store %struct.CertPropIDHeader* %52, %struct.CertPropIDHeader** %7, align 8
  br label %65

53:                                               ; preds = %45
  %54 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %9, align 8
  %55 = getelementptr inbounds %struct.CertPropIDHeader, %struct.CertPropIDHeader* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %4, align 8
  %60 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %9, align 8
  %61 = getelementptr inbounds %struct.CertPropIDHeader, %struct.CertPropIDHeader* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %53, %51
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %27
  br label %11

68:                                               ; preds = %21
  %69 = load %struct.CertPropIDHeader*, %struct.CertPropIDHeader** %7, align 8
  ret %struct.CertPropIDHeader* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
