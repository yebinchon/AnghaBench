; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_proxy_active.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_proxy_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @proxy_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_active() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i64 @WinHttpGetDefaultProxyConfiguration(%struct.TYPE_3__* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %0
  %8 = call i32 (...) @GetLastError()
  %9 = load i32, i32* @ERROR_SUCCESS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = call i32 (...) @GetLastError()
  %13 = icmp eq i32 %12, -559038737
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i1 [ true, %7 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @GlobalFree(i32* %30)
  br label %32

32:                                               ; preds = %28, %17
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @GlobalFree(i32* %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %43

41:                                               ; preds = %0
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @WinHttpGetDefaultProxyConfiguration(%struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
