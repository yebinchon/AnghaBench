; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_string_strdup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_read_string_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NETLINK_TYPE_STRING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_netlink_message_read_string_strdup(i32* %0, i16 zeroext %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store i8** %2, i8*** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @assert_return(i32* %11, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i16, i16* %6, align 2
  %17 = load i32, i32* @NETLINK_TYPE_STRING, align 4
  %18 = call i32 @message_attribute_has_type(i32* %15, i32* null, i16 zeroext %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i16, i16* %6, align 2
  %26 = call i32 @netlink_message_read_internal(i32* %24, i16 zeroext %25, i8** %8, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load i8**, i8*** %7, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @strndup(i8* %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %43, %31
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40, %29, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @assert_return(i32*, i32) #1

declare dso_local i32 @message_attribute_has_type(i32*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @netlink_message_read_internal(i32*, i16 zeroext, i8**, i32*) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
