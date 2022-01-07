; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_serialize_in_addrs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_serialize_in_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serialize_in_addrs(%struct.in_addr* %0, %struct.in_addr* %1, i64 %2, i32 %3, i32 (%struct.in_addr*)* %4) #0 {
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.in_addr*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %6, align 8
  store %struct.in_addr* %1, %struct.in_addr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 (%struct.in_addr*)* %4, i32 (%struct.in_addr*)** %10, align 8
  %16 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %17 = call i32 @assert(%struct.in_addr* %16)
  %18 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %19 = call i32 @assert(%struct.in_addr* %18)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %61, %5
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load i32 (%struct.in_addr*)*, i32 (%struct.in_addr*)** %10, align 8
  %30 = icmp ne i32 (%struct.in_addr*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32 (%struct.in_addr*)*, i32 (%struct.in_addr*)** %10, align 8
  %33 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %33, i64 %34
  %36 = call i32 %32(%struct.in_addr* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 4, i32* %15, align 4
  br label %57

39:                                               ; preds = %31, %24
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %44 = call i32 @fputc(i8 signext 32, %struct.in_addr* %43)
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* @AF_INET, align 4
  %48 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %48, i64 %49
  %51 = trunc i64 %26 to i32
  %52 = call i32 @inet_ntop(i32 %47, %struct.in_addr* %50, i8* %28, i32 %51)
  %53 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %54 = call i32 @fputs(i32 %52, %struct.in_addr* %53)
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %46, %38
  %58 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %15, align 4
  switch i32 %59, label %66 [
    i32 0, label %60
    i32 4, label %61
  ]

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %20

64:                                               ; preds = %20
  %65 = load i64, i64* %11, align 8
  ret i64 %65

66:                                               ; preds = %57
  unreachable
}

declare dso_local i32 @assert(%struct.in_addr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fputc(i8 signext, %struct.in_addr*) #1

declare dso_local i32 @fputs(i32, %struct.in_addr*) #1

declare dso_local i32 @inet_ntop(i32, %struct.in_addr*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
