; ModuleID = '/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-bus.c_property_get_current_server_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timesync/extr_timesyncd-bus.c_property_get_current_server_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(iay)\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"iay\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32*)* @property_get_current_server_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_current_server_address(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_10__**
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %16, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %7
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* @AF_UNSPEC, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (i8*, i8*, i64, ...) @sd_bus_message_append(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %32, i32 0)
  store i32 %33, i32* %8, align 4
  br label %99

34:                                               ; preds = %7
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = load i32, i32* @AF_INET6, align 4
  %42 = call i8* @IN_SET(i64 %39, i64 %40, i32 %41)
  %43 = call i32 @assert(i8* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @sd_bus_message_open_container(i8* %44, i8 signext 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %8, align 4
  br label %99

50:                                               ; preds = %34
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i8*, i64, ...) @sd_bus_message_append(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %8, align 4
  br label %99

62:                                               ; preds = %50
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AF_INET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to i8*
  br label %83

77:                                               ; preds = %62
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to i8*
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i8* [ %76, %71 ], [ %82, %77 ]
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @FAMILY_ADDRESS_SIZE(i64 %89)
  %91 = call i32 @sd_bus_message_append_array(i8* %63, i8 signext 121, i8* %84, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %8, align 4
  br label %99

96:                                               ; preds = %83
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @sd_bus_message_close_container(i8* %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %94, %60, %48, %29
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_message_append(i8*, i8*, i64, ...) #1

declare dso_local i8* @IN_SET(i64, i64, i32) #1

declare dso_local i32 @sd_bus_message_open_container(i8*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_append_array(i8*, i8 signext, i8*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i64) #1

declare dso_local i32 @sd_bus_message_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
