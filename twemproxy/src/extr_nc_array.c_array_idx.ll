; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_idx.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_idx(%struct.array* %0, i8* %1) #0 {
  %3 = alloca %struct.array*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.array* %0, %struct.array** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.array*, %struct.array** %3, align 8
  %11 = getelementptr inbounds %struct.array, %struct.array* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp uge i8* %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.array*, %struct.array** %3, align 8
  %17 = getelementptr inbounds %struct.array, %struct.array* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.array*, %struct.array** %3, align 8
  %28 = getelementptr inbounds %struct.array, %struct.array* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = srem i32 %26, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.array*, %struct.array** %3, align 8
  %37 = getelementptr inbounds %struct.array, %struct.array* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sdiv i32 %35, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
