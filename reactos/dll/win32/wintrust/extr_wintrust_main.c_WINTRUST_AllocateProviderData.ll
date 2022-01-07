; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_AllocateProviderData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_AllocateProviderData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@TRUSTERROR_MAX_STEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @WINTRUST_AllocateProviderData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @WINTRUST_AllocateProviderData() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call i8* @WINTRUST_Alloc(i32 32)
  %4 = bitcast i8* %3 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %60

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 32, i32* %10, align 8
  %11 = load i32, i32* @TRUSTERROR_MAX_STEPS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i8* @WINTRUST_Alloc(i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  br label %60

24:                                               ; preds = %8
  %25 = load i32, i32* @TRUSTERROR_MAX_STEPS, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i8* @WINTRUST_Alloc(i32 4)
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %60

39:                                               ; preds = %24
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = call i8* @WINTRUST_Alloc(i32 4)
  %46 = bitcast i8* %45 to %struct.TYPE_6__*
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %60

54:                                               ; preds = %39
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %1, align 8
  br label %80

60:                                               ; preds = %53, %38, %23, %7
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @WINTRUST_Free(%struct.TYPE_6__* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @WINTRUST_Free(%struct.TYPE_6__* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @WINTRUST_Free(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = call i32 @WINTRUST_Free(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %63, %60
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %81
}

declare dso_local i8* @WINTRUST_Alloc(i32) #1

declare dso_local i32 @WINTRUST_Free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
