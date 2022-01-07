; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_signature.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64, i8**)* @message_peek_field_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_peek_field_signature(i64* %0, i64* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @assert(i64* %13)
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 @assert(i64* %15)
  %17 = load i64*, i64** %6, align 8
  %18 = call i64 @BUS_MESSAGE_IS_GVARIANT(i64* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EBADMSG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %82

26:                                               ; preds = %20
  %27 = load i64*, i64** %6, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @message_peek_fields(i64* %27, i64* %28, i32 1, i64 %29, i8** %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %67

38:                                               ; preds = %4
  %39 = load i64*, i64** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = call i32 @message_peek_fields(i64* %39, i64* %40, i32 1, i64 1, i8** %12)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %82

46:                                               ; preds = %38
  %47 = load i8*, i8** %12, align 8
  %48 = bitcast i8* %47 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @UINT8_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EBADMSG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %82

56:                                               ; preds = %46
  %57 = load i64*, i64** %6, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  %61 = call i32 @message_peek_fields(i64* %57, i64* %58, i32 1, i64 %60, i8** %12)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %82

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @validate_signature(i8* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EBADMSG, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %82

75:                                               ; preds = %67
  %76 = load i8**, i8*** %9, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %12, align 8
  %80 = load i8**, i8*** %9, align 8
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %72, %64, %53, %44, %33, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i64*) #1

declare dso_local i32 @message_peek_fields(i64*, i64*, i32, i64, i8**) #1

declare dso_local i32 @validate_signature(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
