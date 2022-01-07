; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_create_menu_from_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_create_menu_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%d: AppendMenu(%04x, %04x, %p) error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.menu_data*, i64)* @create_menu_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_menu_from_data(%struct.menu_data* %0, i64 %1) #0 {
  %3 = alloca %struct.menu_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.menu_data* %0, %struct.menu_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i64 (...) @CreateMenu()
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %55, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %20, i64 %21
  %23 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %25, i64 %26
  %28 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %30, i64 %31
  %33 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @AppendMenuA(i64 %19, i32 %24, i32 %29, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %38, i64 %39
  %41 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %43, i64 %44
  %46 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %48, i64 %49
  %51 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %42, i32 %47, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %17
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %13

58:                                               ; preds = %13
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i64 @CreateMenu(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @AppendMenuA(i64, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
