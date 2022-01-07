; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_ip_address_access.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_ip_address_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"iayu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.in_addr_union*, i32, %union.in_addr_union*, i8)* @bus_append_ip_address_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_ip_address_access(%union.in_addr_union* %0, i32 %1, %union.in_addr_union* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.in_addr_union*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.in_addr_union*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %union.in_addr_union* %0, %union.in_addr_union** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.in_addr_union* %2, %union.in_addr_union** %8, align 8
  store i8 %3, i8* %9, align 1
  %11 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %12 = call i32 @assert(%union.in_addr_union* %11)
  %13 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %14 = call i32 @assert(%union.in_addr_union* %13)
  %15 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %16 = call i32 @sd_bus_message_open_container(%union.in_addr_union* %15, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = call i32 @sd_bus_message_append(%union.in_addr_union* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %21
  %31 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %32 = load %union.in_addr_union*, %union.in_addr_union** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FAMILY_ADDRESS_SIZE(i32 %33)
  %35 = call i32 @sd_bus_message_append_array(%union.in_addr_union* %31, i8 signext 121, %union.in_addr_union* %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %42 = load i8, i8* %9, align 1
  %43 = call i32 @sd_bus_message_append(%union.in_addr_union* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load %union.in_addr_union*, %union.in_addr_union** %6, align 8
  %50 = call i32 @sd_bus_message_close_container(%union.in_addr_union* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %46, %38, %28, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @assert(%union.in_addr_union*) #1

declare dso_local i32 @sd_bus_message_open_container(%union.in_addr_union*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_append(%union.in_addr_union*, i8*, i8 zeroext) #1

declare dso_local i32 @sd_bus_message_append_array(%union.in_addr_union*, i8 signext, %union.in_addr_union*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

declare dso_local i32 @sd_bus_message_close_container(%union.in_addr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
