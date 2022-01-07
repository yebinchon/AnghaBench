; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_link_get_type_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_link_get_type_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i16, i32*)* @link_get_type_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @link_get_type_string(i16 zeroext %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i16 %0, i16* %4, align 2
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @sd_device_get_devtype(i32* %12, i8** %7)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @isempty(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** %3, align 8
  br label %38

22:                                               ; preds = %15, %11, %2
  %23 = load i16, i16* %4, align 2
  %24 = call i8* @arphrd_to_name(i16 zeroext %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i8* null, i8** %3, align 8
  br label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @ascii_strlower(i8* %35)
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %34, %33, %27, %19
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i64 @sd_device_get_devtype(i32*, i8**) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @arphrd_to_name(i16 zeroext) #1

declare dso_local i32 @ascii_strlower(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
