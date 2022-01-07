; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }
%struct.pollfd = type { i32, i64, i32 }
%struct.dvb_frontend_event = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@FE_GET_EVENT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"cannot dequeue events fast enough!\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot dequeue frontend event: %s\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot demux data fast enough!\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cannot demux: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_read(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.pollfd], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.dvb_frontend_event, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @en50221_Poll(i32* %21)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = load i32, i32* @POLLIN, align 4
  %30 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 16
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @POLLPRI, align 4
  %43 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 2, i32* %11, align 4
  br label %46

45:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %36
  store i64 0, i64* @errno, align 8
  %47 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @vlc_poll_i11e(%struct.pollfd* %47, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @EAGAIN, align 8
  store i64 %54, i64* @errno, align 8
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %140

59:                                               ; preds = %55
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FE_GET_EVENT, align 4
  %74 = call i64 @ioctl(i32 %72, i32 %73, %struct.dvb_frontend_event* %12)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EOVERFLOW, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @msg_Err(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %140

85:                                               ; preds = %76
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* @errno, align 8
  %90 = call i32 @vlc_strerror_c(i64 %89)
  %91 = call i32 (i32, i8*, ...) @msg_Err(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %5, align 4
  br label %140

92:                                               ; preds = %69
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend_event, %struct.dvb_frontend_event* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dvb_frontend_status(i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %92, %64, %59
  %100 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %101 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @read(i32 %107, i8* %108, i64 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %137

113:                                              ; preds = %104
  %114 = load i64, i64* @errno, align 8
  %115 = load i64, i64* @EAGAIN, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %113
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @EINTR, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @EOVERFLOW, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @msg_Err(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %140

130:                                              ; preds = %121
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* @errno, align 8
  %135 = call i32 @vlc_strerror_c(i64 %134)
  %136 = call i32 (i32, i8*, ...) @msg_Err(i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  store i32 0, i32* %5, align 4
  br label %140

137:                                              ; preds = %117, %113, %104
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %5, align 4
  br label %140

139:                                              ; preds = %99
  store i32 -1, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %137, %130, %125, %85, %80, %58
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @en50221_Poll(i32*) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_event*) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @dvb_frontend_status(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
