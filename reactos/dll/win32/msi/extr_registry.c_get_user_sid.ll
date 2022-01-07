; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_get_user_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_get_user_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenUser = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_user_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_user_sid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  store i32 256, i32* %3, align 4
  %6 = call i32 (...) @GetCurrentProcess()
  %7 = load i32, i32* @TOKEN_QUERY, align 4
  %8 = call i32 @OpenProcessToken(i32 %6, i32 %7, i32* %2)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %60

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_7__* @msi_alloc(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @CloseHandle(i32 %16)
  store i32* null, i32** %1, align 8
  br label %60

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TokenUser, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @GetTokenInformation(i32 %19, i32 %20, %struct.TYPE_7__* %21, i32 %22, i32* %3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @msi_free(%struct.TYPE_7__* %26)
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.TYPE_7__* @msi_alloc(i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %4, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @CloseHandle(i32 %36)
  store i32* null, i32** %1, align 8
  br label %60

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @TokenUser, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @GetTokenInformation(i32 %39, i32 %40, %struct.TYPE_7__* %41, i32 %42, i32* %3)
  br label %44

44:                                               ; preds = %38, %18
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @CloseHandle(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ConvertSidToStringSidW(i32 %50, i32** %5)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @msi_free(%struct.TYPE_7__* %54)
  store i32* null, i32** %1, align 8
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = call i32 @msi_free(%struct.TYPE_7__* %57)
  %59 = load i32*, i32** %5, align 8
  store i32* %59, i32** %1, align 8
  br label %60

60:                                               ; preds = %56, %53, %35, %15, %10
  %61 = load i32*, i32** %1, align 8
  ret i32* %61
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local %struct.TYPE_7__* @msi_alloc(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @GetTokenInformation(i32, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_7__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ConvertSidToStringSidW(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
