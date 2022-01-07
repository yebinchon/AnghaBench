; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-id128/extr_id128-util.c_id128_read_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-id128/extr_id128-util.c_id128_read_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ID128_FORMAT_MAX = common dso_local global i64 0, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@ID128_UUID = common dso_local global i64 0, align 8
@ID128_PLAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @id128_read_fd(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [38 x i8], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @_ID128_FORMAT_MAX, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 0
  %21 = call i32 @loop_read(i32 %19, i8* %20, i32 38, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOMEDIUM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %72 [
    i32 33, label %34
    i32 32, label %44
    i32 37, label %53
    i32 36, label %63
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 32
  %36 = load i8, i8* %35, align 16
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 10
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %34
  %43 = load i32, i32* @_fallthrough_, align 4
  br label %44

44:                                               ; preds = %32, %42
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @ID128_UUID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %79

51:                                               ; preds = %44
  %52 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 32
  store i8 0, i8* %52, align 16
  br label %75

53:                                               ; preds = %32
  %54 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 36
  %55 = load i8, i8* %54, align 4
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load i32, i32* @_fallthrough_, align 4
  br label %63

63:                                               ; preds = %32, %61
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @ID128_PLAIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %63
  %71 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 36
  store i8 0, i8* %71, align 4
  br label %75

72:                                               ; preds = %32
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %70, %51
  %76 = getelementptr inbounds [38 x i8], [38 x i8]* %8, i64 0, i64 0
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @sd_id128_from_string(i8* %76, i32* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %72, %67, %58, %48, %39, %29, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @loop_read(i32, i8*, i32, i32) #1

declare dso_local i32 @sd_id128_from_string(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
