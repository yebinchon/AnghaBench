; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_gethostbyaddr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_gethostbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_gethostbyaddr(i8* %0, i32 %1, %struct.hostent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostent**, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hostent** %2, %struct.hostent*** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AF_INET, align 4
  %11 = call %struct.hostent* @gethostbyaddr(i8* %8, i32 %9, i32 %10)
  %12 = load %struct.hostent**, %struct.hostent*** %7, align 8
  store %struct.hostent* %11, %struct.hostent** %12, align 8
  %13 = load %struct.hostent**, %struct.hostent*** %7, align 8
  %14 = load %struct.hostent*, %struct.hostent** %13, align 8
  %15 = icmp ne %struct.hostent* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @IO_DONE, align 4
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @h_errno, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @h_errno, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @errno, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @IO_UNKNOWN, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26, %21, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
