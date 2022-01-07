; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_dns-type.c_dns_type_is_obsolete.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_dns-type.c_dns_type_is_obsolete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_TYPE_MD = common dso_local global i32 0, align 4
@DNS_TYPE_MF = common dso_local global i32 0, align 4
@DNS_TYPE_MAILA = common dso_local global i32 0, align 4
@DNS_TYPE_MB = common dso_local global i32 0, align 4
@DNS_TYPE_MG = common dso_local global i32 0, align 4
@DNS_TYPE_MR = common dso_local global i32 0, align 4
@DNS_TYPE_MINFO = common dso_local global i32 0, align 4
@DNS_TYPE_MAILB = common dso_local global i32 0, align 4
@DNS_TYPE_WKS = common dso_local global i32 0, align 4
@DNS_TYPE_A6 = common dso_local global i32 0, align 4
@DNS_TYPE_NXT = common dso_local global i32 0, align 4
@DNS_TYPE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_type_is_obsolete(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @DNS_TYPE_MD, align 4
  %5 = load i32, i32* @DNS_TYPE_MF, align 4
  %6 = load i32, i32* @DNS_TYPE_MAILA, align 4
  %7 = load i32, i32* @DNS_TYPE_MB, align 4
  %8 = load i32, i32* @DNS_TYPE_MG, align 4
  %9 = load i32, i32* @DNS_TYPE_MR, align 4
  %10 = load i32, i32* @DNS_TYPE_MINFO, align 4
  %11 = load i32, i32* @DNS_TYPE_MAILB, align 4
  %12 = load i32, i32* @DNS_TYPE_WKS, align 4
  %13 = load i32, i32* @DNS_TYPE_A6, align 4
  %14 = load i32, i32* @DNS_TYPE_NXT, align 4
  %15 = load i32, i32* @DNS_TYPE_NULL, align 4
  %16 = call i32 @IN_SET(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
