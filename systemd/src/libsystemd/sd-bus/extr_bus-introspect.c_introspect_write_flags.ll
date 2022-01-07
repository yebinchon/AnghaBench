; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_write_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-introspect.c_introspect_write_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.introspect = type { i32, i32 }

@SD_BUS_VTABLE_DEPRECATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"   <annotation name=\22org.freedesktop.DBus.Deprecated\22 value=\22true\22/>\0A\00", align 1
@_SD_BUS_VTABLE_METHOD = common dso_local global i32 0, align 4
@SD_BUS_VTABLE_METHOD_NO_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"   <annotation name=\22org.freedesktop.DBus.Method.NoReply\22 value=\22true\22/>\0A\00", align 1
@_SD_BUS_VTABLE_PROPERTY = common dso_local global i32 0, align 4
@_SD_BUS_VTABLE_WRITABLE_PROPERTY = common dso_local global i32 0, align 4
@SD_BUS_VTABLE_PROPERTY_EXPLICIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"   <annotation name=\22org.freedesktop.systemd1.Explicit\22 value=\22true\22/>\0A\00", align 1
@SD_BUS_VTABLE_PROPERTY_CONST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"   <annotation name=\22org.freedesktop.DBus.Property.EmitsChangedSignal\22 value=\22const\22/>\0A\00", align 1
@SD_BUS_VTABLE_PROPERTY_EMITS_INVALIDATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [94 x i8] c"   <annotation name=\22org.freedesktop.DBus.Property.EmitsChangedSignal\22 value=\22invalidates\22/>\0A\00", align 1
@SD_BUS_VTABLE_PROPERTY_EMITS_CHANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [88 x i8] c"   <annotation name=\22org.freedesktop.DBus.Property.EmitsChangedSignal\22 value=\22false\22/>\0A\00", align 1
@SD_BUS_VTABLE_UNPRIVILEGED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"   <annotation name=\22org.freedesktop.systemd1.Privileged\22 value=\22true\22/>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.introspect*, i32, i32)* @introspect_write_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @introspect_write_flags(%struct.introspect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.introspect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.introspect* %0, %struct.introspect** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SD_BUS_VTABLE_DEPRECATED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.introspect*, %struct.introspect** %4, align 8
  %13 = getelementptr inbounds %struct.introspect, %struct.introspect* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @_SD_BUS_VTABLE_METHOD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SD_BUS_VTABLE_METHOD_NO_REPLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.introspect*, %struct.introspect** %4, align 8
  %27 = getelementptr inbounds %struct.introspect, %struct.introspect* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fputs(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %20, %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @_SD_BUS_VTABLE_PROPERTY, align 4
  %33 = load i32, i32* @_SD_BUS_VTABLE_WRITABLE_PROPERTY, align 4
  %34 = call i64 @IN_SET(i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SD_BUS_VTABLE_PROPERTY_EXPLICIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.introspect*, %struct.introspect** %4, align 8
  %43 = getelementptr inbounds %struct.introspect, %struct.introspect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fputs(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SD_BUS_VTABLE_PROPERTY_CONST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.introspect*, %struct.introspect** %4, align 8
  %53 = getelementptr inbounds %struct.introspect, %struct.introspect* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fputs(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %78

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SD_BUS_VTABLE_PROPERTY_EMITS_INVALIDATION, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.introspect*, %struct.introspect** %4, align 8
  %63 = getelementptr inbounds %struct.introspect, %struct.introspect* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fputs(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %77

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SD_BUS_VTABLE_PROPERTY_EMITS_CHANGE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.introspect*, %struct.introspect** %4, align 8
  %73 = getelementptr inbounds %struct.introspect, %struct.introspect* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fputs(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %51
  br label %79

79:                                               ; preds = %78, %30
  %80 = load %struct.introspect*, %struct.introspect** %4, align 8
  %81 = getelementptr inbounds %struct.introspect, %struct.introspect* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @_SD_BUS_VTABLE_METHOD, align 4
  %87 = load i32, i32* @_SD_BUS_VTABLE_WRITABLE_PROPERTY, align 4
  %88 = call i64 @IN_SET(i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SD_BUS_VTABLE_UNPRIVILEGED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.introspect*, %struct.introspect** %4, align 8
  %97 = getelementptr inbounds %struct.introspect, %struct.introspect* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fputs(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %90, %84, %79
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
