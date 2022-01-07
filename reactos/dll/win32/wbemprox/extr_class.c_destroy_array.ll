; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_destroy_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_destroy_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32, %struct.array* }

@CIM_STRING = common dso_local global i64 0, align 8
@CIM_DATETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_array(%struct.array* %0, i64 %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.array* %0, %struct.array** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.array*, %struct.array** %3, align 8
  %8 = icmp ne %struct.array* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @CIM_STRING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @CIM_DATETIME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @get_type_size(i64 %19)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %40, %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.array*, %struct.array** %3, align 8
  %24 = getelementptr inbounds %struct.array, %struct.array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.array*, %struct.array** %3, align 8
  %29 = getelementptr inbounds %struct.array, %struct.array* %28, i32 0, i32 1
  %30 = load %struct.array*, %struct.array** %29, align 8
  %31 = bitcast %struct.array* %30 to i8*
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = bitcast i8* %36 to %struct.array**
  %38 = load %struct.array*, %struct.array** %37, align 8
  %39 = call i32 @heap_free(%struct.array* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %14
  %45 = load %struct.array*, %struct.array** %3, align 8
  %46 = getelementptr inbounds %struct.array, %struct.array* %45, i32 0, i32 1
  %47 = load %struct.array*, %struct.array** %46, align 8
  %48 = call i32 @heap_free(%struct.array* %47)
  %49 = load %struct.array*, %struct.array** %3, align 8
  %50 = call i32 @heap_free(%struct.array* %49)
  br label %51

51:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @get_type_size(i64) #1

declare dso_local i32 @heap_free(%struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
