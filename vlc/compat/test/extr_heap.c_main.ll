; ModuleID = '/home/carl/AnghaBench/vlc/compat/test/extr_heap.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/test/extr_heap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alignc = common dso_local global i64 0, align 8
@alignv = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %67, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @alignc, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %9
  %14 = load i64*, i64** @alignv, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sub i64 %19, 1
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64*, i64** @alignv, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @aligned_alloc(i64 %28, i64 0)
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @free(i8* %30)
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %63, %13
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @alignc, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i64*, i64** @alignv, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %63

45:                                               ; preds = %36
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i8* @aligned_alloc(i64 %46, i64 %47)
  store i8* %48, i8** %2, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i8*, i8** %2, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 %55, 1
  %57 = and i64 %54, %56
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %45, %44
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %32

66:                                               ; preds = %32
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %3, align 8
  br label %9

70:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %72, 21
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = shl i64 1, %75
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @test_posix_memalign(i64 %77, i64 0)
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @test_posix_memalign(i64 %79, i64 1)
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %82, 1
  %84 = call i32 @test_posix_memalign(i64 %81, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @test_posix_memalign(i64 %85, i64 %86)
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = mul i64 %89, 2
  %91 = call i32 @test_posix_memalign(i64 %88, i64 %90)
  br label %92

92:                                               ; preds = %74
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %71

95:                                               ; preds = %71
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @aligned_alloc(i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @test_posix_memalign(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
