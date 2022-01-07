; ModuleID = '/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-bus.c_property_get_ntp_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-bus.c_property_get_ntp_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"uuuuittayttttbtt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"uuuuitt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ttttbtt\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, %struct.TYPE_11__*, i8*, i32*)* @property_get_ntp_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_ntp_message(i32* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_11__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %16, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %21 = call i32 @assert(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %23 = call i32 @assert(%struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = call i32 @sd_bus_message_open_container(%struct.TYPE_11__* %24, i8 signext 114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %114

30:                                               ; preds = %7
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NTP_FIELD_LEAP(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NTP_FIELD_VERSION(i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NTP_FIELD_MODE(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = call i32 @ntp_ts_short_to_usec(i32* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = call i32 @ntp_ts_short_to_usec(i32* %61)
  %63 = call i32 @sd_bus_message_append(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %30
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %8, align 4
  br label %114

68:                                               ; preds = %30
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sd_bus_message_append_array(%struct.TYPE_11__* %69, i8 signext 121, i32 %73, i32 4)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %8, align 4
  br label %114

79:                                               ; preds = %68
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = call i32 @timespec_load(i32* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = call i32 @ntp_ts_to_usec(i32* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @ntp_ts_to_usec(i32* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = call i32 @timespec_load(i32* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @USEC_PER_SEC, align 4
  %105 = mul nsw i32 %103, %104
  %106 = call i32 @sd_bus_message_append(%struct.TYPE_11__* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87, i32 %91, i32 %94, i32 %97, i32 %100, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %79
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %8, align 4
  br label %114

111:                                              ; preds = %79
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %113 = call i32 @sd_bus_message_close_container(%struct.TYPE_11__* %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %111, %109, %77, %66, %28
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @sd_bus_message_open_container(%struct.TYPE_11__*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_append(%struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NTP_FIELD_LEAP(i32) #1

declare dso_local i32 @NTP_FIELD_VERSION(i32) #1

declare dso_local i32 @NTP_FIELD_MODE(i32) #1

declare dso_local i32 @ntp_ts_short_to_usec(i32*) #1

declare dso_local i32 @sd_bus_message_append_array(%struct.TYPE_11__*, i8 signext, i32, i32) #1

declare dso_local i32 @timespec_load(i32*) #1

declare dso_local i32 @ntp_ts_to_usec(i32*) #1

declare dso_local i32 @sd_bus_message_close_container(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
