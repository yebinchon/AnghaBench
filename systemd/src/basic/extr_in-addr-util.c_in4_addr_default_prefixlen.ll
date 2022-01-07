; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in4_addr_default_prefixlen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_in-addr-util.c_in4_addr_default_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type opaque

@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in4_addr_default_prefixlen(%struct.in_addr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %8 = bitcast %struct.in_addr* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %11 = bitcast %struct.in_addr* %10 to i8*
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  store i8 8, i8* %18, align 1
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 192
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  store i8 16, i8* %23, align 1
  br label %33

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 224
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  store i8 24, i8* %28, align 1
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ERANGE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %17
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
