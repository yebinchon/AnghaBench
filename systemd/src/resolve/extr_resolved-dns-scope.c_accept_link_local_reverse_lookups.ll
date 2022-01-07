; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_accept_link_local_reverse_lookups.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_accept_link_local_reverse_lookups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"254.169.in-addr.arpa\00", align 1
@DNS_SCOPE_YES_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"8.e.f.ip6.arpa\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"9.e.f.ip6.arpa\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"a.e.f.ip6.arpa\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"b.e.f.ip6.arpa\00", align 1
@_DNS_SCOPE_MATCH_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @accept_link_local_reverse_lookups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @accept_link_local_reverse_lookups(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @assert(i8* %4)
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @dns_name_endswith(i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @DNS_SCOPE_YES_BASE, align 8
  %11 = add nsw i64 %10, 4
  store i64 %11, i64* %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @dns_name_endswith(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @dns_name_endswith(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @dns_name_endswith(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @dns_name_endswith(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20, %16, %12
  %29 = load i64, i64* @DNS_SCOPE_YES_BASE, align 8
  %30 = add nsw i64 %29, 5
  store i64 %30, i64* %2, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @_DNS_SCOPE_MATCH_INVALID, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %9
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @dns_name_endswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
