; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_is_fixed_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_is_fixed_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Unknown signature type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_gvariant_is_fixed_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %55, %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @signature_element_length(i8* %19, i64* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %53 [
    i32 134, label %29
    i32 136, label %29
    i32 135, label %29
    i32 144, label %29
    i32 128, label %29
    i32 142, label %30
    i32 143, label %30
    i32 139, label %30
    i32 132, label %30
    i32 138, label %30
    i32 131, label %30
    i32 129, label %30
    i32 137, label %30
    i32 130, label %30
    i32 140, label %30
    i32 133, label %31
    i32 141, label %31
  ]

29:                                               ; preds = %25, %25, %25, %25, %25
  store i32 0, i32* %2, align 4
  br label %60

30:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  br label %55

31:                                               ; preds = %25, %25
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %7, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %8, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 2
  %40 = call i32 @memcpy(i8* %35, i8* %37, i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 2
  %43 = getelementptr inbounds i8, i8* %35, i64 %42
  store i8 0, i8* %43, align 1
  %44 = call i32 @bus_gvariant_is_fixed_size(i8* %35)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

49:                                               ; preds = %31
  store i32 4, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %62 [
    i32 1, label %60
    i32 4, label %55
  ]

53:                                               ; preds = %25
  %54 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50, %30
  %56 = load i64, i64* %6, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %4, align 8
  br label %13

59:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %29, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61

62:                                               ; preds = %50
  unreachable
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @signature_element_length(i8*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
