; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_ketama.c_ketama_dispatch.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_ketama.c_ketama_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuum = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ketama_dispatch(%struct.continuum* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.continuum*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.continuum*, align 8
  %8 = alloca %struct.continuum*, align 8
  %9 = alloca %struct.continuum*, align 8
  %10 = alloca %struct.continuum*, align 8
  %11 = alloca %struct.continuum*, align 8
  store %struct.continuum* %0, %struct.continuum** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.continuum*, %struct.continuum** %4, align 8
  %13 = icmp ne %struct.continuum* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.continuum*, %struct.continuum** %4, align 8
  store %struct.continuum* %20, %struct.continuum** %9, align 8
  store %struct.continuum* %20, %struct.continuum** %7, align 8
  %21 = load %struct.continuum*, %struct.continuum** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.continuum, %struct.continuum* %21, i64 %22
  store %struct.continuum* %23, %struct.continuum** %10, align 8
  store %struct.continuum* %23, %struct.continuum** %8, align 8
  br label %24

24:                                               ; preds = %48, %3
  %25 = load %struct.continuum*, %struct.continuum** %9, align 8
  %26 = load %struct.continuum*, %struct.continuum** %10, align 8
  %27 = icmp ult %struct.continuum* %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.continuum*, %struct.continuum** %9, align 8
  %30 = load %struct.continuum*, %struct.continuum** %10, align 8
  %31 = load %struct.continuum*, %struct.continuum** %9, align 8
  %32 = ptrtoint %struct.continuum* %30 to i64
  %33 = ptrtoint %struct.continuum* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = sdiv i64 %35, 2
  %37 = getelementptr inbounds %struct.continuum, %struct.continuum* %29, i64 %36
  store %struct.continuum* %37, %struct.continuum** %11, align 8
  %38 = load %struct.continuum*, %struct.continuum** %11, align 8
  %39 = getelementptr inbounds %struct.continuum, %struct.continuum* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.continuum*, %struct.continuum** %11, align 8
  %45 = getelementptr inbounds %struct.continuum, %struct.continuum* %44, i64 1
  store %struct.continuum* %45, %struct.continuum** %9, align 8
  br label %48

46:                                               ; preds = %28
  %47 = load %struct.continuum*, %struct.continuum** %11, align 8
  store %struct.continuum* %47, %struct.continuum** %10, align 8
  br label %48

48:                                               ; preds = %46, %43
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.continuum*, %struct.continuum** %10, align 8
  %51 = load %struct.continuum*, %struct.continuum** %8, align 8
  %52 = icmp eq %struct.continuum* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load %struct.continuum*, %struct.continuum** %7, align 8
  store %struct.continuum* %54, %struct.continuum** %10, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.continuum*, %struct.continuum** %10, align 8
  %57 = getelementptr inbounds %struct.continuum, %struct.continuum* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  ret i64 %58
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
