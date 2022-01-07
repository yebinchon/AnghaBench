; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-gnutls.c_dnstls_stream_on_io.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-gnutls.c_dnstls_stream_on_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }

@GNUTLS_SHUT_RDWR = common dso_local global i32 0, align 4
@GNUTLS_E_AGAIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i8* null, align 8
@EPOLLIN = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to invoke gnutls_bye: %s\00", align 1
@DNSTLS_STREAM_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to invoke gnutls_handshake: %s\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnstls_stream_on_io(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = call i32 @assert(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* @GNUTLS_SHUT_RDWR, align 4
  %29 = call i32 @gnutls_bye(%struct.TYPE_10__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GNUTLS_E_AGAIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = call i32 @gnutls_record_get_direction(%struct.TYPE_10__* %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i8*, i8** @EPOLLOUT, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** @EPOLLIN, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i8* [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %134

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @gnutls_strerror(i32 %54)
  %56 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i8* null, i8** %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = call i32 @dns_stream_unref(%struct.TYPE_10__* %64)
  %66 = load i32, i32* @DNSTLS_STREAM_CLOSED, align 4
  store i32 %66, i32* %3, align 4
  br label %134

67:                                               ; preds = %2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %132

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = call i32 @gnutls_handshake(%struct.TYPE_10__* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GNUTLS_E_AGAIN, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %73
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = call i32 @gnutls_record_get_direction(%struct.TYPE_10__* %92)
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i8*, i8** @EPOLLOUT, align 8
  br label %99

97:                                               ; preds = %88
  %98 = load i8*, i8** @EPOLLIN, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i8* [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %134

105:                                              ; preds = %73
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gnutls_strerror(i32 %115)
  %117 = call i32 @log_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @gnutls_error_is_fatal(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load i32, i32* @ECONNREFUSED, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %134

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i8* null, i8** %131, align 8
  br label %132

132:                                              ; preds = %129, %67
  br label %133

133:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %124, %99, %58, %44
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @gnutls_bye(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gnutls_record_get_direction(%struct.TYPE_10__*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i32 @dns_stream_unref(%struct.TYPE_10__*) #1

declare dso_local i32 @gnutls_handshake(%struct.TYPE_10__*) #1

declare dso_local i64 @gnutls_error_is_fatal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
