; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_socket_bind_to_ifindex.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_socket_bind_to_ifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_NAMESIZE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDTODEVICE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SO_BINDTOIFINDEX = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_bind_to_ifindex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @IF_NAMESIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_BINDTODEVICE, align 4
  %24 = call i64 @setsockopt(i32 %21, i32 %22, i32 %23, i32* null, i32 0)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_BINDTOIFINDEX, align 4
  %34 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i32* %5, i32 4)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  %39 = load i32, i32* @ENOPROTOOPT, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @format_ifname(i32 %45, i8* %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @socket_bind_to_ifname(i32 %52, i8* %13)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %48, %41, %36, %29, %26
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @format_ifname(i32, i8*) #2

declare dso_local i32 @socket_bind_to_ifname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
