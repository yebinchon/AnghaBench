; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_get_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown signature type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_gvariant_get_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %101, %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @signature_element_length(i8* %20, i64* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %116

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8 0, i8* %35, align 1
  %36 = call i32 @bus_gvariant_get_alignment(i8* %30)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %45

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ALIGN_TO(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %118 [
    i32 0, label %48
    i32 1, label %116
  ]

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %99 [
    i32 143, label %53
    i32 142, label %53
    i32 139, label %56
    i32 132, label %56
    i32 138, label %59
    i32 131, label %59
    i32 129, label %59
    i32 137, label %62
    i32 130, label %62
    i32 140, label %62
    i32 133, label %65
    i32 141, label %65
    i32 134, label %96
    i32 136, label %96
    i32 135, label %96
    i32 144, label %96
    i32 128, label %96
  ]

53:                                               ; preds = %49, %49
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %101

56:                                               ; preds = %49, %49
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %5, align 4
  br label %101

59:                                               ; preds = %49, %49, %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %5, align 4
  br label %101

62:                                               ; preds = %49, %49, %49
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 8
  store i32 %64, i32* %5, align 4
  br label %101

65:                                               ; preds = %49, %49
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %92

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %70, 1
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %11, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %12, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, 2
  %78 = call i32 @memcpy(i8* %73, i8* %75, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, 2
  %81 = getelementptr inbounds i8, i8* %73, i64 %80
  store i8 0, i8* %81, align 1
  %82 = call i32 @bus_gvariant_get_size(i8* %73)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %88

87:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %85
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %118 [
    i32 0, label %91
    i32 1, label %116
  ]

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %101

96:                                               ; preds = %49, %49, %49, %49, %49
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %116

99:                                               ; preds = %49
  %100 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92, %62, %59, %56, %53
  %102 = load i64, i64* %7, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %4, align 8
  br label %14

105:                                              ; preds = %14
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @bus_gvariant_get_alignment(i8* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %116

112:                                              ; preds = %105
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ALIGN_TO(i32 %113, i32 %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %110, %96, %88, %45, %24
  %117 = load i32, i32* %2, align 4
  ret i32 %117

118:                                              ; preds = %88, %45
  unreachable
}

declare dso_local i32 @signature_element_length(i8*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bus_gvariant_get_alignment(i8*) #1

declare dso_local i32 @ALIGN_TO(i32, i32) #1

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
