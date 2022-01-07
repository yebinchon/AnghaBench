; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_shim.c_shim_validate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_shim.c_shim_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ShimLock = type { i64 (i32*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@BS = common dso_local global %struct.TYPE_2__* null, align 8
@shim_lock_guid = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @shim_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shim_validate(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ShimLock*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %struct.ShimLock** %6 to i32**
  %16 = call i64 @uefi_call_wrapper(i32 %14, i32 3, i32* @shim_lock_guid, i32* null, i32** %15)
  %17 = load i64, i64* @EFI_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %11
  %22 = load %struct.ShimLock*, %struct.ShimLock** %6, align 8
  %23 = icmp ne %struct.ShimLock* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %21
  %27 = load %struct.ShimLock*, %struct.ShimLock** %6, align 8
  %28 = getelementptr inbounds %struct.ShimLock, %struct.ShimLock* %27, i32 0, i32 0
  %29 = load i64 (i32*, i32)*, i64 (i32*, i32)** %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 %29(i32* %30, i32 %31)
  %33 = load i64, i64* @EFI_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %24, %19, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @uefi_call_wrapper(i32, i32, i32*, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
