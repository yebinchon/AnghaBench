; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_vlan.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse_cmdline_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_vlan(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @proc_cmdline_value_missing(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @strndupa(i8* %28, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32* @netdev_get(i32* %36, i8* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %27
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @netdev_new(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %43, i32** %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @network_set_vlan(i32* %51, i8* %53, i8* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %47, %24, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32* @netdev_get(i32*, i8*) #1

declare dso_local i32 @netdev_new(i32*, i8*, i8*, i32**) #1

declare dso_local i32 @network_set_vlan(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
