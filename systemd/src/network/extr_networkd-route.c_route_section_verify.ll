; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_section_verify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_section_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [136 x i8] c"%s: Route section without Gateway=, Destination=, Source=, or PreferredSource= field configured. Ignoring [Route] section from line %u.\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@RTN_ANYCAST = common dso_local global i32 0, align 4
@RTN_NAT = common dso_local global i32 0, align 4
@RT_TABLE_LOCAL = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"%s: Gateway= without static address configured. Enabling GatewayOnLink= option.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_section_verify(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = call i64 @section_is_invalid(%struct.TYPE_9__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_UNSPEC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = call i32 @assert(%struct.TYPE_9__* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SYNTHETIC_ERRNO(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @log_warning_errno(i32 %26, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %121

38:                                               ; preds = %14
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_INET6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RTN_LOCAL, align 4
  %54 = load i32, i32* @RTN_BROADCAST, align 4
  %55 = load i32, i32* @RTN_ANYCAST, align 4
  %56 = load i32, i32* @RTN_NAT, align 4
  %57 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @RT_TABLE_LOCAL, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %49, %44
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RTN_LOCAL, align 4
  %73 = load i32, i32* @RTN_NAT, align 4
  %74 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @RT_SCOPE_HOST, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  br label %93

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RTN_BROADCAST, align 4
  %85 = load i32, i32* @RTN_ANYCAST, align 4
  %86 = call i64 (i32, i32, i32, ...) @IN_SET(i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @RT_SCOPE_LINK, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %80
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94, %38
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = call i64 @in_addr_is_null(i64 %103, i32* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @log_warning(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %113, %108, %100, %95
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %20, %11
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @section_is_invalid(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i32, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i64 @in_addr_is_null(i64, i32*) #1

declare dso_local i32 @log_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
