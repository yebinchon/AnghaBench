; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in_addr_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_addr_from_string(i32 %0, i8* %1, %union.in_addr_union* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %union.in_addr_union*, align 8
  %8 = alloca %union.in_addr_union, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %union.in_addr_union* %2, %union.in_addr_union** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = call i32 @IN_SET(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EAFNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  store i64 0, i64* @errno, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %23 = icmp ne %union.in_addr_union* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi %union.in_addr_union* [ %22, %24 ], [ %8, %25 ]
  %28 = call i64 @inet_pton(i32 %20, i8* %21, %union.in_addr_union* %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @errno_or_else(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i64 @inet_pton(i32, i8*, %union.in_addr_union*) #1

declare dso_local i32 @errno_or_else(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
