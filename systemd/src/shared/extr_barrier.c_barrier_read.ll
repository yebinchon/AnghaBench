; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_barrier.c_barrier_read.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_barrier.c_barrier_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@BARRIER_ABORTION = common dso_local global i64 0, align 8
@BARRIER_WE_ABORTED = common dso_local global i8* null, align 8
@BARRIER_THEY_ABORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @barrier_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @barrier_read(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i64 @barrier_they_aborted(%struct.TYPE_6__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %140, %109, %89, %65, %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %141

21:                                               ; preds = %15
  %22 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 0
  %24 = load i32, i32* @POLLHUP, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  br label %45

39:                                               ; preds = %21
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ %38, %33 ], [ %44, %39 ]
  store i32 %46, i32* %26, align 4
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %22, i64 1
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i32 0, i32 0
  %49 = load i32, i32* @POLLIN, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %51, align 4
  %55 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %56 = call i32 @poll(%struct.pollfd* %55, i32 2, i32 -1)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %45
  %60 = load i32, i32* @errno, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = load i32, i32* @EINTR, align 4
  %63 = call i64 @IN_SET(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %15

66:                                               ; preds = %59, %45
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %147

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @read(i32 %79, i64* %7, i32 8)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32, i32* @errno, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = load i32, i32* @EINTR, align 4
  %87 = call i64 @IN_SET(i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %15

90:                                               ; preds = %83, %76
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 8
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %147

95:                                               ; preds = %90
  br label %111

96:                                               ; preds = %71
  %97 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %98 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @POLLHUP, align 4
  %101 = load i32, i32* @POLLERR, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @POLLNVAL, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i64, i64* @BARRIER_ABORTION, align 8
  store i64 %108, i64* %7, align 8
  br label %110

109:                                              ; preds = %96
  br label %15

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @BARRIER_ABORTION, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = call i64 @barrier_i_aborted(%struct.TYPE_6__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8*, i8** @BARRIER_WE_ABORTED, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %128

124:                                              ; preds = %115
  %125 = load i64, i64* @BARRIER_THEY_ABORTED, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %119
  br label %140

129:                                              ; preds = %111
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = call i32 @barrier_is_aborted(%struct.TYPE_6__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %128
  br label %15

141:                                              ; preds = %15
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = call i64 @barrier_they_aborted(%struct.TYPE_6__* %142)
  %144 = icmp ne i64 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %3, align 4
  br label %156

147:                                              ; preds = %94, %69
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @safe_close_pair(i32* %150)
  %152 = load i8*, i8** @BARRIER_WE_ABORTED, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %147, %141, %13
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @barrier_they_aborted(%struct.TYPE_6__*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i64 @barrier_i_aborted(%struct.TYPE_6__*) #1

declare dso_local i32 @barrier_is_aborted(%struct.TYPE_6__*) #1

declare dso_local i32 @safe_close_pair(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
