; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_append_field_signature.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_append_field_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@SD_BUS_MAXIMUM_SIGNATURE_LENGTH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SD_BUS_TYPE_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8**)* @message_append_field_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_append_field_signature(i32* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @SD_BUS_MAXIMUM_SIGNATURE_LENGTH, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @BUS_MESSAGE_IS_GVARIANT(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = call i32 @message_append_field_string(i32* %33, i32 %34, i8 signext 103, i8* %35, i8** %36)
  store i32 %37, i32* %5, align 4
  br label %80

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 5, %40
  %42 = add i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i32* @message_extend_fields(i32* %39, i32 8, i32 %43, i32 0)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %80

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @SD_BUS_TYPE_SIGNATURE, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 0, i32* %60, align 4
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  %70 = call i32 @memcpy(i32* %66, i8* %67, i64 %69)
  %71 = load i8**, i8*** %9, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %50
  %74 = load i32*, i32** %11, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = load i8**, i8*** %9, align 8
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %50
  br label %79

79:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %47, %32, %25, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i32*) #1

declare dso_local i32 @message_append_field_string(i32*, i32, i8 signext, i8*, i8**) #1

declare dso_local i32* @message_extend_fields(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
