; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_each.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_array.c_array_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32 }

@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @array_each(%struct.array* %0, i64 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.array*, align 8
  %6 = alloca i64 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.array* %0, %struct.array** %5, align 8
  store i64 (i8*, i8*)* %1, i64 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.array*, %struct.array** %5, align 8
  %13 = call i64 @array_n(%struct.array* %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %18 = icmp ne i64 (i8*, i8*)* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  store i64 0, i64* %8, align 8
  %21 = load %struct.array*, %struct.array** %5, align 8
  %22 = call i64 @array_n(%struct.array* %21)
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %41, %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.array*, %struct.array** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i8* @array_get(%struct.array* %28, i64 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 %31(i8* %32, i8* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @NC_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %4, align 8
  br label %46

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %23

44:                                               ; preds = %23
  %45 = load i64, i64* @NC_OK, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @array_n(%struct.array*) #1

declare dso_local i8* @array_get(%struct.array*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
