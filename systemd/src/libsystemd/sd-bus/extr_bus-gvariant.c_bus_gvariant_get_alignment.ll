; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_get_alignment.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_get_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Unknown signature type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_gvariant_get_alignment(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 1, i64* %4, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %92, %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %20, 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %96

24:                                               ; preds = %22
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @signature_element_length(i8* %25, i64* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %68 [
    i32 142, label %35
    i32 143, label %35
    i32 134, label %35
    i32 136, label %35
    i32 135, label %35
    i32 139, label %36
    i32 132, label %36
    i32 138, label %37
    i32 131, label %37
    i32 129, label %37
    i32 137, label %38
    i32 130, label %38
    i32 140, label %38
    i32 128, label %38
    i32 144, label %39
    i32 133, label %53
    i32 141, label %53
  ]

35:                                               ; preds = %31, %31, %31, %31, %31
  store i32 1, i32* %8, align 4
  br label %70

36:                                               ; preds = %31, %31
  store i32 2, i32* %8, align 4
  br label %70

37:                                               ; preds = %31, %31, %31
  store i32 4, i32* %8, align 4
  br label %70

38:                                               ; preds = %31, %31, %31, %31
  store i32 8, i32* %8, align 4
  br label %70

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %9, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %10, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, 1
  %47 = call i32 @memcpy(i8* %42, i8* %44, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %42, i64 %49
  store i8 0, i8* %50, align 1
  %51 = call i32 @bus_gvariant_get_alignment(i8* %42)
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %70

53:                                               ; preds = %31, %31
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %54, 1
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %11, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %12, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 2
  %62 = call i32 @memcpy(i8* %57, i8* %59, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 2
  %65 = getelementptr inbounds i8, i8* %57, i64 %64
  store i8 0, i8* %65, align 1
  %66 = call i32 @bus_gvariant_get_alignment(i8* %57)
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %70

68:                                               ; preds = %31
  %69 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %53, %39, %38, %37, %36, %35
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %99

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ false, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %4, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i64, i64* %7, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %5, align 8
  br label %14

96:                                               ; preds = %22
  %97 = load i64, i64* %4, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %73, %29
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @signature_element_length(i8*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
