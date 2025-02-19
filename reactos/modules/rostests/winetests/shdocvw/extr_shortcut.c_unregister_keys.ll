; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shortcut.c_unregister_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shortcut.c_unregister_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_key = type { i32, i32, %struct.registry_key* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.registry_key*, i32)* @unregister_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_keys(i32 %0, %struct.registry_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.registry_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.registry_key* %1, %struct.registry_key** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.registry_key*, %struct.registry_key** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %16, i64 %18
  %20 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DELETE, align 4
  %23 = call i64 @RegOpenKeyExA(i32 %15, i32 %21, i32 0, i32 %22, i32* %7)
  %24 = icmp eq i64 %14, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %13
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.registry_key*, %struct.registry_key** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %27, i64 %29
  %31 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %30, i32 0, i32 2
  %32 = load %struct.registry_key*, %struct.registry_key** %31, align 8
  %33 = load %struct.registry_key*, %struct.registry_key** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %33, i64 %35
  %37 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  call void @unregister_keys(i32 %26, %struct.registry_key* %32, i32 %38)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RegCloseKey(i32 %39)
  br label %41

41:                                               ; preds = %25, %13
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.registry_key*, %struct.registry_key** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %43, i64 %45
  %47 = getelementptr inbounds %struct.registry_key, %struct.registry_key* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RegDeleteKeyA(i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %9

53:                                               ; preds = %9
  ret void
}

declare dso_local i64 @RegOpenKeyExA(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegDeleteKeyA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
