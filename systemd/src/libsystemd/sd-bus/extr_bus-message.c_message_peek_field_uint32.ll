; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_uint32.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_peek_field_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64, i32*)* @message_peek_field_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_peek_field_uint32(i64* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = call i32 @assert(i64* %12)
  %14 = load i64*, i64** %7, align 8
  %15 = call i32 @assert(i64* %14)
  %16 = load i64*, i64** %6, align 8
  %17 = call i64 @BUS_MESSAGE_IS_GVARIANT(i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EBADMSG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %19, %4
  %26 = load i64*, i64** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @message_peek_fields(i64* %26, i64* %27, i32 4, i32 4, i8** %11)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %25
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64*, i64** %6, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BUS_MESSAGE_BSWAP32(i64* %37, i32 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %33
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %31, %22
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i64*) #1

declare dso_local i32 @message_peek_fields(i64*, i64*, i32, i32, i8**) #1

declare dso_local i32 @BUS_MESSAGE_BSWAP32(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
