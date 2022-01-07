; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_get_scope.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_get_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_match_component = type { i64, i32 }

@BUS_MATCH_GENERIC = common dso_local global i32 0, align 4
@BUS_MATCH_SENDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"org.freedesktop.DBus.Local\00", align 1
@BUS_MATCH_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"org.freedesktop.DBus\00", align 1
@BUS_MATCH_INTERFACE = common dso_local global i64 0, align 8
@BUS_MATCH_PATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"/org/freedesktop/DBus/Local\00", align 1
@BUS_MATCH_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_match_get_scope(%struct.bus_match_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bus_match_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bus_match_component*, align 8
  store %struct.bus_match_component* %0, %struct.bus_match_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ule i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @BUS_MATCH_GENERIC, align 4
  store i32 %12, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.bus_match_component*, %struct.bus_match_component** %4, align 8
  %15 = call i32 @assert(%struct.bus_match_component* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %75, %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = load %struct.bus_match_component*, %struct.bus_match_component** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %21, i64 %23
  store %struct.bus_match_component* %24, %struct.bus_match_component** %8, align 8
  %25 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %26 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BUS_MATCH_SENDER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %32 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @streq_ptr(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BUS_MATCH_LOCAL, align 4
  store i32 %37, i32* %3, align 4
  br label %87

38:                                               ; preds = %30
  %39 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %40 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @streq_ptr(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %48 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BUS_MATCH_INTERFACE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %54 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @streq_ptr(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @BUS_MATCH_LOCAL, align 4
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %52, %46
  %61 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %62 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BUS_MATCH_PATH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.bus_match_component*, %struct.bus_match_component** %8, align 8
  %68 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @streq_ptr(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @BUS_MATCH_LOCAL, align 4
  store i32 %73, i32* %3, align 4
  br label %87

74:                                               ; preds = %66, %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %16

78:                                               ; preds = %16
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @BUS_MATCH_DRIVER, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @BUS_MATCH_GENERIC, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %72, %58, %36, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @assert(%struct.bus_match_component*) #1

declare dso_local i64 @streq_ptr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
