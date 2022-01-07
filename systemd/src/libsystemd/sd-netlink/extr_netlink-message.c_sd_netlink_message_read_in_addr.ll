; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_in_addr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_in_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETLINK_TYPE_IN_ADDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_netlink_message_read_in_addr(i32* %0, i16 zeroext %1, %struct.in_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @assert_return(i32* %10, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i16, i16* %6, align 2
  %16 = load i32, i32* @NETLINK_TYPE_IN_ADDR, align 4
  %17 = call i32 @message_attribute_has_type(i32* %14, i32* null, i16 zeroext %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %46

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
  br label %46

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %40 = icmp ne %struct.in_addr* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @memcpy(%struct.in_addr* %42, i8* %43, i32 4)
  br label %45

45:                                               ; preds = %41, %38
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %34, %28, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert_return(i32*, i32) #1

declare dso_local i32 @message_attribute_has_type(i32*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @netlink_message_read_internal(i32*, i16 zeroext, i8**, i32*) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
