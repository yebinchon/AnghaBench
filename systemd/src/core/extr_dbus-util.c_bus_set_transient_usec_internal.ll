; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-util.c_bus_set_transient_usec_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-util.c_bus_set_transient_usec_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"t\00", align 1
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%sSec=%s\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_set_transient_usec_internal(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @sd_bus_message_read(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %70

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %19, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %20, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %16, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @USEC_INFINITY, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = sub nsw i64 %56, 4
  %58 = call i8* @strndupa(i8* %54, i64 %57)
  store i8* %58, i8** %18, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = trunc i64 %35 to i32
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @USEC_PER_MSEC, align 4
  %66 = call i32 @format_timespan(i8* %37, i32 %63, i32 %64, i32 %65)
  %67 = call i32 @unit_write_settingf(i32* %59, i32 %60, i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %66)
  %68 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %69

69:                                               ; preds = %53, %29
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strndupa(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @unit_write_settingf(i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
