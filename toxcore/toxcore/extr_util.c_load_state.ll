; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_util.c_load_state.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_util.c_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_state(i32 (i8*, i32*, i64, i64)* %0, i8* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (i8*, i32*, i64, i64)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 (i8*, i32*, i64, i64)* %0, i32 (i8*, i32*, i64, i64)** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32 (i8*, i32*, i64, i64)*, i32 (i8*, i32*, i64, i64)** %7, align 8
  %18 = icmp ne i32 (i8*, i32*, i64, i64)* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %5
  store i32 -1, i32* %6, align 4
  br label %80

23:                                               ; preds = %19
  store i64 16, i64* %15, align 8
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @lendian_to_host32(i64* %13, i32* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = call i32 @lendian_to_host32(i64* %14, i32* %32)
  %34 = load i64, i64* %15, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 %34
  store i32* %36, i32** %9, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %80

44:                                               ; preds = %28
  %45 = load i64, i64* %14, align 8
  %46 = ashr i64 %45, 16
  %47 = call i64 @lendian_to_host16(i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %80

51:                                               ; preds = %44
  %52 = load i64, i64* %14, align 8
  %53 = and i64 %52, 65535
  %54 = call i64 @lendian_to_host16(i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i32 (i8*, i32*, i64, i64)*, i32 (i8*, i32*, i64, i64)** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 %55(i8* %56, i32* %57, i64 %58, i64 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %80

64:                                               ; preds = %51
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, -2
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %80

68:                                               ; preds = %64
  %69 = load i64, i64* %13, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %69
  store i32* %71, i32** %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %10, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %10, align 8
  br label %24

75:                                               ; preds = %24
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 -1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %67, %63, %50, %43, %22
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @lendian_to_host32(i64*, i32*) #1

declare dso_local i64 @lendian_to_host16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
