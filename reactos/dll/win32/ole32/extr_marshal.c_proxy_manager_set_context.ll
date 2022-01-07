; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_set_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_set_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_manager = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proxy_manager*, i32, i8*)* @proxy_manager_set_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proxy_manager_set_context(%struct.proxy_manager* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.proxy_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.proxy_manager* %0, %struct.proxy_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  br label %9

9:                                                ; preds = %48, %3
  %10 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %11 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 132, label %17
    i32 129, label %23
    i32 128, label %29
  ]

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %8, align 4
  br label %36

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %20 [
    i32 130, label %19
  ]

19:                                               ; preds = %17
  br label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %19
  br label %36

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %26 [
    i32 130, label %25
    i32 132, label %25
  ]

25:                                               ; preds = %23, %23
  br label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %25
  br label %36

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %33 [
    i32 131, label %31
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %8, align 4
  br label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %31
  br label %36

35:                                               ; preds = %9
  br label %36

36:                                               ; preds = %35, %34, %28, %22, %15
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %52

41:                                               ; preds = %36
  %42 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %43 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %42, i32 0, i32 0
  %44 = ptrtoint i32* %43 to i32
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @InterlockedCompareExchange(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %9, label %52

52:                                               ; preds = %48, %40
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.proxy_manager*, %struct.proxy_manager** %4, align 8
  %57 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %56, i32 0, i32 1
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @InterlockedExchangePointer(i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @InterlockedCompareExchange(i32, i32, i32) #1

declare dso_local i32 @InterlockedExchangePointer(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
