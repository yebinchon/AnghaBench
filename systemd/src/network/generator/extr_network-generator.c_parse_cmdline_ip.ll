; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_ip.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse_cmdline_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_ip(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @proc_cmdline_value_missing(i8* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @network_set_dhcp_type(i32* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 91
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @AF_INET6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @parse_cmdline_ip_address(i32* %33, i32 %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @parse_cmdline_ip_address(i32* %38, i32 %39, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @parse_cmdline_ip_interface(i32* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44, %32, %22, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @network_set_dhcp_type(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_ip_address(i32*, i32, i8*) #1

declare dso_local i32 @parse_cmdline_ip_interface(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
