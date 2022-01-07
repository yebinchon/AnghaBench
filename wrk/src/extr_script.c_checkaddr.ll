; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_checkaddr.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_checkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"wrk.addr\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"`addr' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i32*)* @checkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @checkaddr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.addrinfo* @luaL_checkudata(i32* %4, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.addrinfo* %5, %struct.addrinfo** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %8 = icmp ne %struct.addrinfo* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @luaL_argcheck(i32* %6, i32 %9, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  ret %struct.addrinfo* %11
}

declare dso_local %struct.addrinfo* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
