; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/rpcrt4/context_handles/extr_server.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/rpcrt4/context_handles/extr_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ncacn_np\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\\pipe\\hello\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RpcServerUseProtseqEp %x\0A\00", align 1
@hello_v1_0_s_ifspec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"RpcServerRegisterIf %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"RpcServerListen %x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 20, i32* %3, align 4
  %5 = call i32 @RpcServerUseProtseqEp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i32, i32* @hello_v1_0_s_ifspec, align 4
  %15 = call i32 @RpcServerRegisterIf(i32 %14, i32* null, i32* null)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %13
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @RpcServerListen(i32 1, i32 20, i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable

33:                                               ; preds = %23
  %34 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %4)
  ret void
}

declare dso_local i32 @RpcServerUseProtseqEp(i8*, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @RpcServerRegisterIf(i32, i32*, i32*) #1

declare dso_local i32 @RpcServerListen(i32, i32, i32) #1

declare dso_local i32 @scanf(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
