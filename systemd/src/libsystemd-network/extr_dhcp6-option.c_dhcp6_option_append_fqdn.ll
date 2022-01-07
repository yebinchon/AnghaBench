; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_append_fqdn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_append_fqdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_WIRE_FORMAT_HOSTNAME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DHCP6_FQDN_FLAG_S = common dso_local global i32 0, align 4
@SD_DHCP6_OPTION_FQDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_option_append_fqdn(i32** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @DNS_WIRE_FORMAT_HOSTNAME_MAX, align 4
  %13 = add nsw i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32**, i32*** %5, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64*, i64** %6, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %23, %19, %3
  %30 = phi i1 [ false, %23 ], [ false, %19 ], [ false, %3 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @assert_return(i32 %31, i32 %33)
  %35 = load i32, i32* @DHCP6_FQDN_FLAG_S, align 4
  %36 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i32, i32* %16, i64 1
  %39 = mul nuw i64 4, %14
  %40 = sub i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @dns_name_to_wire_format(i8* %37, i32* %38, i32 %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %62

47:                                               ; preds = %29
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @dns_name_is_single_label(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32**, i32*** %5, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load i32, i32* @SD_DHCP6_OPTION_FQDN, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 1, %58
  %60 = call i32 @dhcp6_option_append(i32** %55, i64* %56, i32 %57, i32 %59, i32* %16)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %54, %45
  %63 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert_return(i32, i32) #2

declare dso_local i32 @dns_name_to_wire_format(i8*, i32*, i32, i32) #2

declare dso_local i64 @dns_name_is_single_label(i8*) #2

declare dso_local i32 @dhcp6_option_append(i32**, i64*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
