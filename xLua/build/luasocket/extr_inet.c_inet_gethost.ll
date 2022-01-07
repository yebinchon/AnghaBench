; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_gethost.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_gethost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hostent**)* @inet_gethost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_gethost(i8* %0, %struct.hostent** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent**, align 8
  %6 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hostent** %1, %struct.hostent*** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @inet_aton(i8* %7, %struct.in_addr* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = bitcast %struct.in_addr* %6 to i8*
  %12 = load %struct.hostent**, %struct.hostent*** %5, align 8
  %13 = call i32 @socket_gethostbyaddr(i8* %11, i32 4, %struct.hostent** %12)
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.hostent**, %struct.hostent*** %5, align 8
  %17 = call i32 @socket_gethostbyname(i8* %15, %struct.hostent** %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i32 @socket_gethostbyaddr(i8*, i32, %struct.hostent**) #1

declare dso_local i32 @socket_gethostbyname(i8*, %struct.hostent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
