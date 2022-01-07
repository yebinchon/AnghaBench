; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_device_allow.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_device_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(ss)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*)* @property_read_device_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_read_device_allow(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.security_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.security_info*
  store %struct.security_info* %18, %struct.security_info** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @assert(i8* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @sd_bus_message_enter_container(i8* %25, i8 signext 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %54

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @sd_bus_message_read(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, i8** %16)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %32

46:                                               ; preds = %42
  %47 = load i64, i64* %13, align 8
  %48 = icmp ugt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.security_info*, %struct.security_info** %12, align 8
  %51 = getelementptr inbounds %struct.security_info, %struct.security_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @sd_bus_message_exit_container(i8* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %37, %29
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_message_enter_container(i8*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i8*, i8*, i8**, i8**) #1

declare dso_local i32 @sd_bus_message_exit_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
