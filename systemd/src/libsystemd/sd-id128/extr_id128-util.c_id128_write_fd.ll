; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-id128/extr_id128-util.c_id128_write_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-id128/extr_id128-util.c_id128_write_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ID128_FORMAT_MAX = common dso_local global i64 0, align 8
@ID128_UUID = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @id128_write_fd(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [38 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @_ID128_FORMAT_MAX, align 8
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @ID128_UUID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [38 x i8], [38 x i8]* %10, i64 0, i64 0
  %28 = call i32 @sd_id128_to_string(i32 %26, i8* %27)
  %29 = getelementptr inbounds [38 x i8], [38 x i8]* %10, i64 0, i64 32
  store i8 10, i8* %29, align 16
  store i64 33, i64* %11, align 8
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds [38 x i8], [38 x i8]* %10, i64 0, i64 0
  %33 = call i32 @id128_to_uuid_string(i32 %31, i8* %32)
  %34 = getelementptr inbounds [38 x i8], [38 x i8]* %10, i64 0, i64 36
  store i8 10, i8* %34, align 4
  store i64 37, i64* %11, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [38 x i8], [38 x i8]* %10, i64 0, i64 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @loop_write(i32 %36, i8* %37, i64 %38, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @fsync(i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @errno, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @fsync_directory_of_file(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %44
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %51, %42
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_id128_to_string(i32, i8*) #1

declare dso_local i32 @id128_to_uuid_string(i32, i8*) #1

declare dso_local i32 @loop_write(i32, i8*, i64, i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @fsync_directory_of_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
