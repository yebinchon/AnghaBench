; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_append_fqdn_option.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_append_fqdn_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_MAX_FQDN_LENGTH = common dso_local global i32 0, align 4
@DHCP_FQDN_FLAG_S = common dso_local global i32 0, align 4
@DHCP_FQDN_FLAG_E = common dso_local global i32 0, align 4
@SD_DHCP_OPTION_FQDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i8*)* @client_append_fqdn_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_append_fqdn_option(i32* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @DHCP_MAX_FQDN_LENGTH, align 4
  %13 = add nsw i32 3, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @DHCP_FQDN_FLAG_S, align 4
  %18 = load i32, i32* @DHCP_FQDN_FLAG_E, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %19, i32* %20, align 16
  %21 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 0, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i32, i32* %16, i64 3
  %25 = mul nuw i64 4, %14
  %26 = sub i64 %25, 3
  %27 = trunc i64 %26 to i32
  %28 = call i32 @dns_name_to_wire_format(i8* %23, i32* %24, i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i32, i32* @SD_DHCP_OPTION_FQDN, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 3, %36
  %38 = call i32 @dhcp_option_append(i32* %32, i64 %33, i64* %34, i32 0, i32 %35, i32 %37, i32* %16)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %31, %4
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dns_name_to_wire_format(i8*, i32*, i32, i32) #2

declare dso_local i32 @dhcp_option_append(i32*, i64, i64*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
