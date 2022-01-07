; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_efivar_set_raw.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_efivar_set_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@RT = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_set_raw(i32* %0, i32* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %13 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %19 = load i32, i32* %11, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @uefi_call_wrapper(i32 %24, i32 5, i32* %25, i32* %26, i32 %27, i32 %28, i32* %29)
  ret i32 %30
}

declare dso_local i32 @uefi_call_wrapper(i32, i32, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
