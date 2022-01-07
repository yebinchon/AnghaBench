; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_local-addresses.c_address_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_local-addresses.c_address_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_address = type { i64, i32, i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_address*, %struct.local_address*)* @address_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @address_compare(%struct.local_address* %0, %struct.local_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_address*, align 8
  %5 = alloca %struct.local_address*, align 8
  %6 = alloca i32, align 4
  store %struct.local_address* %0, %struct.local_address** %4, align 8
  store %struct.local_address* %1, %struct.local_address** %5, align 8
  %7 = load %struct.local_address*, %struct.local_address** %4, align 8
  %8 = getelementptr inbounds %struct.local_address, %struct.local_address* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.local_address*, %struct.local_address** %5, align 8
  %14 = getelementptr inbounds %struct.local_address, %struct.local_address* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %78

19:                                               ; preds = %12, %2
  %20 = load %struct.local_address*, %struct.local_address** %4, align 8
  %21 = getelementptr inbounds %struct.local_address, %struct.local_address* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.local_address*, %struct.local_address** %5, align 8
  %27 = getelementptr inbounds %struct.local_address, %struct.local_address* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %78

32:                                               ; preds = %25, %19
  %33 = load %struct.local_address*, %struct.local_address** %4, align 8
  %34 = getelementptr inbounds %struct.local_address, %struct.local_address* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.local_address*, %struct.local_address** %5, align 8
  %37 = getelementptr inbounds %struct.local_address, %struct.local_address* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CMP(i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %78

44:                                               ; preds = %32
  %45 = load %struct.local_address*, %struct.local_address** %4, align 8
  %46 = getelementptr inbounds %struct.local_address, %struct.local_address* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.local_address*, %struct.local_address** %5, align 8
  %49 = getelementptr inbounds %struct.local_address, %struct.local_address* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CMP(i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %44
  %57 = load %struct.local_address*, %struct.local_address** %4, align 8
  %58 = getelementptr inbounds %struct.local_address, %struct.local_address* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.local_address*, %struct.local_address** %5, align 8
  %61 = getelementptr inbounds %struct.local_address, %struct.local_address* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CMP(i32 %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %78

68:                                               ; preds = %56
  %69 = load %struct.local_address*, %struct.local_address** %4, align 8
  %70 = getelementptr inbounds %struct.local_address, %struct.local_address* %69, i32 0, i32 1
  %71 = load %struct.local_address*, %struct.local_address** %5, align 8
  %72 = getelementptr inbounds %struct.local_address, %struct.local_address* %71, i32 0, i32 1
  %73 = load %struct.local_address*, %struct.local_address** %4, align 8
  %74 = getelementptr inbounds %struct.local_address, %struct.local_address* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @FAMILY_ADDRESS_SIZE(i64 %75)
  %77 = call i32 @memcmp(i32* %70, i32* %72, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %66, %54, %42, %31, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
