; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_net_get_unique_predictable_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_net_get_unique_predictable_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@uint8_t = common dso_local global i32 0, align 4
@v = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No stable identifying information found\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Using \22%s\22 as stable identifying information\00", align 1
@HASH_KEY = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_get_unique_predictable_data(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* @uint8_t, align 4
  %13 = load i32, i32* @v, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @net_get_name_persistent(i32* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sd_device_get_sysname(i32* %25, i8** %10)
  br label %27

27:                                               ; preds = %24, %21, %3
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @ENODATA, align 4
  %33 = call i32 @SYNTHETIC_ERRNO(i32 %32)
  %34 = call i32 @log_device_debug_errno(i32* %31, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %68

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @log_device_debug(i32* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 4, %41
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* @uint8_t, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @newa(i32 %43, i64 %44)
  store i32 %45, i32* @v, align 4
  %46 = load i32, i32* @v, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @sd_id128_get_machine(i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %35
  %55 = load i32, i32* @v, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @memcpy(i32 %58, i8* %59, i64 %60)
  %62 = load i32, i32* @v, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HASH_KEY, i32 0, i32 0), align 4
  %65 = call i32 @siphash24(i32 %62, i64 %63, i32 %64)
  %66 = call i32 @htole64(i32 %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %54, %52, %30
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i8* @net_get_name_persistent(i32*) #1

declare dso_local i32 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i32 @log_device_debug_errno(i32*, i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @log_device_debug(i32*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @newa(i32, i64) #1

declare dso_local i32 @sd_id128_get_machine(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @siphash24(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
