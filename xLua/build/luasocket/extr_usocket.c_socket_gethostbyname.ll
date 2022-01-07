; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@IO_DONE = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_gethostbyname(i8* %0, %struct.hostent** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hostent** %1, %struct.hostent*** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.hostent* @gethostbyname(i8* %6)
  %8 = load %struct.hostent**, %struct.hostent*** %5, align 8
  store %struct.hostent* %7, %struct.hostent** %8, align 8
  %9 = load %struct.hostent**, %struct.hostent*** %5, align 8
  %10 = load %struct.hostent*, %struct.hostent** %9, align 8
  %11 = icmp ne %struct.hostent* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IO_DONE, align 4
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @h_errno, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @h_errno, align 4
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @IO_UNKNOWN, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22, %17, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
