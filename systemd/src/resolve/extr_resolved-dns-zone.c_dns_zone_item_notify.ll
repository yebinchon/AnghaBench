; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-zone.c_dns_zone_item_notify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-zone.c_dns_zone_item_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@DNS_TRANSACTION_NULL = common dso_local global i32 0, align 4
@DNS_TRANSACTION_PENDING = common dso_local global i32 0, align 4
@DNS_TRANSACTION_VALIDATING = common dso_local global i32 0, align 4
@DNS_TRANSACTION_SUCCESS = common dso_local global i64 0, align 8
@DNS_ZONE_ITEM_ESTABLISHED = common dso_local global i64 0, align 8
@DNS_ZONE_ITEM_VERIFYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Got a successful probe for not yet established RR, we lost.\00", align 1
@DNS_PROTOCOL_LLMNR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [117 x i8] c"Got a successful probe reply for an established RR, and we have a lexicographically larger IP address and thus lost.\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Got a successful probe reply, but peer has lexicographically lower IP address and thus lost.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Record %s successfully probed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_zone_item_notify(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_8__* %4)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = call i32 @assert(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @DNS_TRANSACTION_NULL, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @DNS_TRANSACTION_PENDING, align 4
  %24 = load i32, i32* @DNS_TRANSACTION_VALIDATING, align 4
  %25 = call i64 (i64, i64, i32, ...) @IN_SET(i64 %20, i64 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %112

28:                                               ; preds = %15
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DNS_TRANSACTION_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DNS_ZONE_ITEM_ESTABLISHED, align 8
  %41 = load i32, i32* @DNS_ZONE_ITEM_VERIFYING, align 4
  %42 = call i64 (i64, i64, i32, ...) @IN_SET(i64 %39, i64 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %92

46:                                               ; preds = %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DNS_PROTOCOL_LLMNR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %46
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @assert(%struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 7
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FAMILY_ADDRESS_SIZE(i32 %81)
  %83 = call i64 @memcmp(i32* %68, i32* %74, i32 %82)
  %84 = icmp slt i64 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %56
  %89 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %56
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %44
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = call i32 @dns_zone_item_conflict(%struct.TYPE_8__* %96)
  br label %112

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %28
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dns_resource_record_to_string(i32 %103)
  %105 = call i32 @strna(i32 %104)
  %106 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = call i32 @dns_zone_item_probe_stop(%struct.TYPE_8__* %107)
  %109 = load i64, i64* @DNS_ZONE_ITEM_ESTABLISHED, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %100, %95, %27, %14
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i64 @IN_SET(i64, i64, i32, ...) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

declare dso_local i32 @dns_zone_item_conflict(%struct.TYPE_8__*) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @dns_resource_record_to_string(i32) #1

declare dso_local i32 @dns_zone_item_probe_stop(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
