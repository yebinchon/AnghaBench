; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32 (i8*)*, i64*, i64, i8**)* @message_peek_field_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_peek_field_string(i64* %0, i32 (i8*)* %1, i64* %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8
  store i32 (i8*)* %1, i32 (i8*)** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 @assert(i64* %15)
  %17 = load i64*, i64** %9, align 8
  %18 = call i32 @assert(i64* %17)
  %19 = load i64*, i64** %7, align 8
  %20 = call i64 @BUS_MESSAGE_IS_GVARIANT(i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp ule i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EBADMSG, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %104

28:                                               ; preds = %22
  %29 = load i64*, i64** %7, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @message_peek_fields(i64* %29, i64* %30, i32 1, i32 %32, i8** %14)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %104

38:                                               ; preds = %28
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  br label %68

42:                                               ; preds = %5
  %43 = load i64*, i64** %7, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @message_peek_field_uint32(i64* %43, i64* %44, i32 4, i32* %12)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %104

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @UINT32_MAX, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EBADMSG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %104

57:                                               ; preds = %50
  %58 = load i64*, i64** %7, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @message_peek_fields(i64* %58, i64* %59, i32 1, i32 %61, i8** %14)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %104

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %70 = icmp ne i32 (i8*)* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @validate_nul(i8* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @EBADMSG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %104

79:                                               ; preds = %71
  %80 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 %80(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @EBADMSG, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %104

87:                                               ; preds = %79
  br label %97

88:                                               ; preds = %68
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @validate_string(i8* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EBADMSG, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %104

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i8**, i8*** %11, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i8*, i8** %14, align 8
  %102 = load i8**, i8*** %11, align 8
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %93, %84, %76, %65, %54, %48, %36, %25
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i64*) #1

declare dso_local i32 @message_peek_fields(i64*, i64*, i32, i32, i8**) #1

declare dso_local i32 @message_peek_field_uint32(i64*, i64*, i32, i32*) #1

declare dso_local i32 @validate_nul(i8*, i32) #1

declare dso_local i32 @validate_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
