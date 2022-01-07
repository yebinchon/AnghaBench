; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-format-util.c_test_format_bytes_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-format-util.c_test_format_bytes_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_BYTES_MAX = common dso_local global i32 0, align 4
@FORMAT_BYTES_USE_IEC = common dso_local global i32 0, align 4
@FORMAT_BYTES_BELOW_POINT = common dso_local global i32 0, align 4
@FORMAT_BYTES_TRAILING_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i8*)* @test_format_bytes_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format_bytes_one(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = trunc i64 %16 to i32
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FORMAT_BYTES_USE_IEC, align 4
  %22 = load i32, i32* @FORMAT_BYTES_BELOW_POINT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @FORMAT_BYTES_TRAILING_B, align 4
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %23, %30
  %32 = call i32 @format_bytes_full(i8* %18, i32 %19, i32 %20, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @streq_ptr(i32 %32, i8* %33)
  %35 = call i32 @assert_se(i32 %34)
  %36 = trunc i64 %16 to i32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FORMAT_BYTES_USE_IEC, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @FORMAT_BYTES_TRAILING_B, align 4
  br label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %38, %45
  %47 = call i32 @format_bytes_full(i8* %18, i32 %36, i32 %37, i32 %46)
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @streq_ptr(i32 %47, i8* %48)
  %50 = call i32 @assert_se(i32 %49)
  %51 = trunc i64 %16 to i32
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FORMAT_BYTES_BELOW_POINT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @FORMAT_BYTES_TRAILING_B, align 4
  br label %59

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %53, %60
  %62 = call i32 @format_bytes_full(i8* %18, i32 %51, i32 %52, i32 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @streq_ptr(i32 %62, i8* %63)
  %65 = call i32 @assert_se(i32 %64)
  %66 = trunc i64 %16 to i32
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @FORMAT_BYTES_TRAILING_B, align 4
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = call i32 @format_bytes_full(i8* %18, i32 %66, i32 %67, i32 %74)
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @streq_ptr(i32 %75, i8* %76)
  %78 = call i32 @assert_se(i32 %77)
  %79 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq_ptr(i32, i8*) #2

declare dso_local i32 @format_bytes_full(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
