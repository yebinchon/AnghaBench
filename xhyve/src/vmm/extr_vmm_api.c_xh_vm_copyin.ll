; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_copyin.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xh_vm_copyin(%struct.iovec* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.iovec*, %struct.iovec** %4, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.iovec*, %struct.iovec** %4, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @min(i64 %19, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.iovec*, %struct.iovec** %4, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @bcopy(i8* %27, i8* %28, i64 %29)
  %31 = load %struct.iovec*, %struct.iovec** %4, align 8
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 1
  store %struct.iovec* %32, %struct.iovec** %4, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
