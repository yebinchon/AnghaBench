; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_is_hierarchical_scheme.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_is_hierarchical_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URL_SCHEME_HTTP = common dso_local global i64 0, align 8
@URL_SCHEME_FTP = common dso_local global i64 0, align 8
@URL_SCHEME_GOPHER = common dso_local global i64 0, align 8
@URL_SCHEME_NNTP = common dso_local global i64 0, align 8
@URL_SCHEME_TELNET = common dso_local global i64 0, align 8
@URL_SCHEME_WAIS = common dso_local global i64 0, align 8
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@URL_SCHEME_HTTPS = common dso_local global i64 0, align 8
@URL_SCHEME_RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_hierarchical_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hierarchical_scheme(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @URL_SCHEME_HTTP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @URL_SCHEME_FTP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @URL_SCHEME_GOPHER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @URL_SCHEME_NNTP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @URL_SCHEME_TELNET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @URL_SCHEME_WAIS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @URL_SCHEME_FILE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @URL_SCHEME_HTTPS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @URL_SCHEME_RES, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %30, %26, %22, %18, %14, %10, %6, %1
  %39 = phi i1 [ true, %30 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
