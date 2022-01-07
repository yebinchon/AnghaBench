; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-bus.c_append_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-bus.c_append_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"iiay\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@DNS_TYPE_A = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@DNS_TYPE_AAAA = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @append_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_address(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_16__* %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_16__* %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = call i32 @sd_bus_message_open_container(%struct.TYPE_16__* %13, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @sd_bus_message_append(%struct.TYPE_16__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %88

27:                                               ; preds = %19
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DNS_TYPE_A, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = load i32, i32* @AF_INET, align 4
  %38 = call i32 @sd_bus_message_append(%struct.TYPE_16__* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %88

43:                                               ; preds = %35
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = call i32 @sd_bus_message_append_array(%struct.TYPE_16__* %44, i8 signext 121, i32* %47, i32 4)
  store i32 %48, i32* %8, align 4
  br label %75

49:                                               ; preds = %27
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DNS_TYPE_AAAA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = call i32 @sd_bus_message_append(%struct.TYPE_16__* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %88

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = call i32 @sd_bus_message_append_array(%struct.TYPE_16__* %66, i8 signext 121, i32* %69, i32 4)
  store i32 %70, i32* %8, align 4
  br label %74

71:                                               ; preds = %49
  %72 = load i32, i32* @EAFNOSUPPORT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %88

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %43
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = call i32 @sd_bus_message_close_container(%struct.TYPE_16__* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %85, %78, %71, %63, %41, %25, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_bus_message_open_container(%struct.TYPE_16__*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_append(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @sd_bus_message_append_array(%struct.TYPE_16__*, i8 signext, i32*, i32) #1

declare dso_local i32 @sd_bus_message_close_container(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
