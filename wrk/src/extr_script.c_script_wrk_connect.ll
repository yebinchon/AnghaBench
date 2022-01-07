; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_wrk_connect.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_wrk_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_wrk_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_wrk_connect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.addrinfo* @checkaddr(i32* %6)
  store %struct.addrinfo* %7, %struct.addrinfo** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @socket(i32 %10, i32 %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @connect(i32 %20, i32 %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @close(i32 %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lua_pushboolean(i32* %33, i32 %34)
  ret i32 1
}

declare dso_local %struct.addrinfo* @checkaddr(i32*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
