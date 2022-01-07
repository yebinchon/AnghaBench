; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, i64, i64, i32* }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_init(%struct.array* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.array* %0, %struct.array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i1 [ false, %3 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %17, %18
  %20 = call i32* @nc_alloc(i64 %19)
  %21 = load %struct.array*, %struct.array** %5, align 8
  %22 = getelementptr inbounds %struct.array, %struct.array* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.array*, %struct.array** %5, align 8
  %24 = getelementptr inbounds %struct.array, %struct.array* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %13
  %30 = load %struct.array*, %struct.array** %5, align 8
  %31 = getelementptr inbounds %struct.array, %struct.array* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.array*, %struct.array** %5, align 8
  %34 = getelementptr inbounds %struct.array, %struct.array* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.array*, %struct.array** %5, align 8
  %37 = getelementptr inbounds %struct.array, %struct.array* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @NC_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %29, %27
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @nc_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
