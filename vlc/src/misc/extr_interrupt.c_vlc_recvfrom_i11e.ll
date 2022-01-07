; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_recvfrom_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_recvfrom_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_recvfrom_i11e(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca %struct.msghdr, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %21, align 4
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  store %struct.iovec* %13, %struct.iovec** %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 3
  %32 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %32, %struct.sockaddr** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @vlc_recvmsg_i11e(i32 %33, %struct.msghdr* %14, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38, %28
  %46 = load i64, i64* %15, align 8
  ret i64 %46
}

declare dso_local i64 @vlc_recvmsg_i11e(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
