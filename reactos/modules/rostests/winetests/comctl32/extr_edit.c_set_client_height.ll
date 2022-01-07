; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_set_client_height.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_set_client_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"The client height should be %d, but is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_client_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_client_height(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GetWindowRect(i32 %7, %struct.TYPE_4__* %6)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetClientRect(i32 %9, %struct.TYPE_4__* %5)
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %19, %21
  %23 = add i32 %17, %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %25, %27
  %29 = sub i32 %23, %28
  %30 = load i32, i32* @SWP_NOMOVE, align 4
  %31 = load i32, i32* @SWP_NOACTIVATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SWP_NOZORDER, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @SetWindowPos(i32 %11, i32* null, i32 0, i32 0, i64 %16, i32 %29, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @GetWindowRect(i32 %36, %struct.TYPE_4__* %6)
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %40, %42
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %46, %48
  %50 = add i32 %49, 1
  %51 = load i32, i32* @SWP_NOMOVE, align 4
  %52 = load i32, i32* @SWP_NOACTIVATE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @SWP_NOZORDER, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @SetWindowPos(i32 %38, i32* null, i32 0, i32 0, i64 %44, i32 %50, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %64, %66
  %68 = load i32, i32* @SWP_NOMOVE, align 4
  %69 = load i32, i32* @SWP_NOACTIVATE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SWP_NOZORDER, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @SetWindowPos(i32 %57, i32* null, i32 0, i32 0, i64 %62, i32 %67, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @GetClientRect(i32 %74, %struct.TYPE_4__* %5)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %77, %79
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %86, %88
  %90 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %89)
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
