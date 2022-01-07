; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_vtable_member_compare_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-objects.c_vtable_member_compare_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtable_member = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtable_member*, %struct.vtable_member*)* @vtable_member_compare_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtable_member_compare_func(%struct.vtable_member* %0, %struct.vtable_member* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtable_member*, align 8
  %5 = alloca %struct.vtable_member*, align 8
  %6 = alloca i32, align 4
  store %struct.vtable_member* %0, %struct.vtable_member** %4, align 8
  store %struct.vtable_member* %1, %struct.vtable_member** %5, align 8
  %7 = load %struct.vtable_member*, %struct.vtable_member** %4, align 8
  %8 = call i32 @assert(%struct.vtable_member* %7)
  %9 = load %struct.vtable_member*, %struct.vtable_member** %5, align 8
  %10 = call i32 @assert(%struct.vtable_member* %9)
  %11 = load %struct.vtable_member*, %struct.vtable_member** %4, align 8
  %12 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vtable_member*, %struct.vtable_member** %5, align 8
  %15 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.vtable_member*, %struct.vtable_member** %4, align 8
  %24 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vtable_member*, %struct.vtable_member** %5, align 8
  %27 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.vtable_member*, %struct.vtable_member** %4, align 8
  %36 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vtable_member*, %struct.vtable_member** %5, align 8
  %39 = getelementptr inbounds %struct.vtable_member, %struct.vtable_member* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %32, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @assert(%struct.vtable_member*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
