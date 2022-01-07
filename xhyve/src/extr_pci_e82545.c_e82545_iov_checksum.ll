; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_iov_checksum.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_iov_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec*, i32, i32, i32)* @e82545_iov_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_iov_checksum(%struct.iovec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.iovec*, %struct.iovec** %5, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ule i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %16, %13
  %27 = phi i1 [ false, %16 ], [ false, %13 ], [ %25, %23 ]
  br i1 %27, label %28, label %40

28:                                               ; preds = %26
  %29 = load %struct.iovec*, %struct.iovec** %5, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.iovec*, %struct.iovec** %5, align 8
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 1
  store %struct.iovec* %37, %struct.iovec** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %90

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.iovec*, %struct.iovec** %5, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %53, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @MIN(i32 %50, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.iovec*, %struct.iovec** %5, align 8
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @e82545_buf_checksum(i32* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 8
  br label %75

73:                                               ; preds = %49
  %74 = load i32, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %72, %70 ], [ %74, %73 ]
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %86 = load %struct.iovec*, %struct.iovec** %5, align 8
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 1
  store %struct.iovec* %87, %struct.iovec** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %6, align 4
  br label %41

90:                                               ; preds = %47
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @e82545_carry(i32 %91)
  ret i32 %92
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @e82545_buf_checksum(i32*, i32) #1

declare dso_local i32 @e82545_carry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
