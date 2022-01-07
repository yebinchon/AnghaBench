; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_gzip.c_gzip_compress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_gzip.c_gzip_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QAT_COMPRESS = common dso_local global i32 0, align 4
@CPA_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CPA_STATUS_INCOMPRESSIBLE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gzip_compress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %10, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ule i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @qat_dc_use_accel(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %5
  %24 = load i32, i32* @QAT_COMPRESS, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @qat_compress(i32 %24, i8* %25, i64 %26, i8* %27, i64 %28, i64* %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @CPA_STATUS_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %6, align 8
  br label %75

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @CPA_STATUS_INCOMPRESSIBLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %6, align 8
  br label %75

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @bcopy(i8* %46, i8* %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %6, align 8
  br label %75

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %5
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @compress_func(i8* %54, i64* %13, i8* %55, i64 %56, i32 %57)
  %59 = load i64, i64* @Z_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %6, align 8
  br label %75

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @bcopy(i8* %68, i8* %69, i64 %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %6, align 8
  br label %75

73:                                               ; preds = %53
  %74 = load i64, i64* %13, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %73, %67, %65, %45, %43, %33
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @qat_dc_use_accel(i64) #1

declare dso_local i32 @qat_compress(i32, i8*, i64, i8*, i64, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i64 @compress_func(i8*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
