; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to parse state value, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to parse found value '%s', ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @device_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_deserialize_item(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_3__* @DEVICE(i8* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @streq(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @device_state_from_string(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @log_unit_debug(i8* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %61

39:                                               ; preds = %4
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @streq(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @device_found_from_string_many(i8* %44, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @log_unit_debug_errno(i8* %51, i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %60

56:                                               ; preds = %39
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @log_unit_debug(i8* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %38
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @DEVICE(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @device_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i8*, i8*, i8*) #1

declare dso_local i32 @device_found_from_string_many(i8*, i32*) #1

declare dso_local i32 @log_unit_debug_errno(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
