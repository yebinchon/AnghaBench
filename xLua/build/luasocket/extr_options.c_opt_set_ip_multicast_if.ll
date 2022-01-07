; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_set_ip_multicast_if.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_options.c_opt_set_ip_multicast_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ip expected\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_MULTICAST_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_set_ip_multicast_if(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checkstring(i32* %7, i32 3)
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* @INADDR_ANY, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @inet_aton(i8* %16, %struct.in_addr* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_argerror(i32* %20, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IPPROTO_IP, align 4
  %26 = load i32, i32* @IP_MULTICAST_IF, align 4
  %27 = bitcast %struct.in_addr* %6 to i8*
  %28 = call i32 @opt_set(i32* %23, i32 %24, i32 %25, i32 %26, i8* %27, i32 4)
  ret i32 %28
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @opt_set(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
