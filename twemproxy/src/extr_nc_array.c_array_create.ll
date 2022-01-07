; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_create.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.array* @array_create(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.array*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i8* @nc_alloc(i64 32)
  %17 = bitcast i8* %16 to %struct.array*
  store %struct.array* %17, %struct.array** %6, align 8
  %18 = load %struct.array*, %struct.array** %6, align 8
  %19 = icmp eq %struct.array* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.array* null, %struct.array** %3, align 8
  br label %46

21:                                               ; preds = %12
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %22, %23
  %25 = call i8* @nc_alloc(i64 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.array*, %struct.array** %6, align 8
  %28 = getelementptr inbounds %struct.array, %struct.array* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.array*, %struct.array** %6, align 8
  %30 = getelementptr inbounds %struct.array, %struct.array* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.array*, %struct.array** %6, align 8
  %35 = call i32 @nc_free(%struct.array* %34)
  store %struct.array* null, %struct.array** %3, align 8
  br label %46

36:                                               ; preds = %21
  %37 = load %struct.array*, %struct.array** %6, align 8
  %38 = getelementptr inbounds %struct.array, %struct.array* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.array*, %struct.array** %6, align 8
  %41 = getelementptr inbounds %struct.array, %struct.array* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.array*, %struct.array** %6, align 8
  %44 = getelementptr inbounds %struct.array, %struct.array* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.array*, %struct.array** %6, align 8
  store %struct.array* %45, %struct.array** %3, align 8
  br label %46

46:                                               ; preds = %36, %33, %20
  %47 = load %struct.array*, %struct.array** %3, align 8
  ret %struct.array* %47
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @nc_alloc(i64) #1

declare dso_local i32 @nc_free(%struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
