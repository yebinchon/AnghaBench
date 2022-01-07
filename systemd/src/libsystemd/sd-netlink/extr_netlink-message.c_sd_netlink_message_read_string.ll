; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NETLINK_TYPE_STRING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_netlink_message_read_string(i32* %0, i16 zeroext %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8** %2, i8*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @assert_return(i32* %10, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i16, i16* %6, align 2
  %16 = load i32, i32* @NETLINK_TYPE_STRING, align 4
  %17 = call i32 @message_attribute_has_type(i32* %14, i32* null, i16 zeroext %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i16, i16* %6, align 2
  %25 = call i32 @netlink_message_read_internal(i32* %23, i16 zeroext %24, i8** %9, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @strnlen(i8* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %37, %28, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert_return(i32*, i32) #1

declare dso_local i32 @message_attribute_has_type(i32*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @netlink_message_read_internal(i32*, i16 zeroext, i8**, i32*) #1

declare dso_local i64 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
