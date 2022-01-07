; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_serialize_in6_addrs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_network-internal.c_serialize_in6_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serialize_in6_addrs(i32* %0, %struct.in6_addr* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = call i32 @assert(i64 %11)
  %13 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %14 = ptrtoint %struct.in6_addr* %13 to i64
  %15 = call i32 @assert(i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @assert(i64 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %47, %3
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i64 %31
  %33 = trunc i64 %25 to i32
  %34 = call i32 @inet_ntop(i32 %28, %struct.in6_addr* %32, i8* %27, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fputs(i32 %34, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, 1
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fputc(i8 signext 32, i32* %43)
  br label %45

45:                                               ; preds = %42, %23
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %18

50:                                               ; preds = %18
  ret void
}

declare dso_local i32 @assert(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @inet_ntop(i32, %struct.in6_addr*, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
