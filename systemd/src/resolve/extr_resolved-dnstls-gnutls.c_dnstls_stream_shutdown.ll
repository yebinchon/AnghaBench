; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-gnutls.c_dnstls_stream_shutdown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-gnutls.c_dnstls_stream_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@GNUTLS_E_SUCCESS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@GNUTLS_SHUT_RDWR = common dso_local global i32 0, align 4
@GNUTLS_E_AGAIN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to invoke gnutls_bye: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnstls_stream_shutdown(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = call i32 @assert(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = call i32 @assert(%struct.TYPE_14__* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GNUTLS_E_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @gnutls_session_get_data2(%struct.TYPE_14__* %42, %struct.TYPE_15__* %47)
  br label %49

49:                                               ; preds = %38, %31, %22, %2
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = call i64 @IN_SET(i32 %50, i32 %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i32, i32* @GNUTLS_SHUT_RDWR, align 4
  %60 = call i32 @gnutls_bye(%struct.TYPE_14__* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @GNUTLS_E_AGAIN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %54
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = call i32 @dns_stream_ref(%struct.TYPE_14__* %74)
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %64
  br label %87

79:                                               ; preds = %54
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @gnutls_strerror(i32 %83)
  %85 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  br label %87

87:                                               ; preds = %86, %78
  br label %88

88:                                               ; preds = %87, %49
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @gnutls_session_get_data2(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @gnutls_bye(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dns_stream_ref(%struct.TYPE_14__*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @gnutls_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
