; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_lldp_capabilities_legend.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_lldp_capabilities_legend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lldp_capabilities_legend.table = internal constant [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"o - Other\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"p - Repeater\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"b - Bridge\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"w - WLAN Access Point\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"r - Router\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"t - Telephone\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"d - DOCSIS cable device\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"a - Station\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"c - Customer VLAN\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"s - Service VLAN\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"m - Two-port MAC Relay (TPMR)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\0ACapability Flags:\0A\00", align 1
@arg_all = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lldp_capabilities_legend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lldp_capabilities_legend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @columns()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %69

11:                                               ; preds = %1
  %12 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %64, %11
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ELEMENTSOF(i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @lldp_capabilities_legend.table, i64 0, i64 0))
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @arg_all, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [11 x i8*], [11 x i8*]* @lldp_capabilities_legend.table, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add i32 %27, %32
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = add i32 %33, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp ugt i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [11 x i8*], [11 x i8*]* @lldp_capabilities_legend.table, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %49, i8* %53, i8* %57)
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %45, %23
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %13

67:                                               ; preds = %13
  %68 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %10
  ret void
}

declare dso_local i32 @columns(...) #1

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i32 @ELEMENTSOF(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
