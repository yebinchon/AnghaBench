; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_poll_i11e_inner.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_poll_i11e_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@vlc_poll_i11e_wake = common dso_local global i32 0, align 4
@vlc_poll_i11e_cleanup = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EFD_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, i32, i32, i32*, %struct.pollfd*)* @vlc_poll_i11e_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_poll_i11e_inner(%struct.pollfd* noalias %0, i32 %1, i32 %2, i32* %3, %struct.pollfd* noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pollfd*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.pollfd* %4, %struct.pollfd** %11, align 8
  store i32 -1, i32* %13, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %19 = call i64 @vlc_pipe(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = call i32 (...) @vlc_testcancel()
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %142

24:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %31 = load i32, i32* %15, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i64 %32
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i64 %38
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 8
  %41 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %41, i64 %43
  %45 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i64 %49
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 8
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %15, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %25

55:                                               ; preds = %25
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %58, i64 %60
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load i32, i32* @POLLIN, align 4
  %64 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %64, i64 %66
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i32 0, i32 2
  store i32 %63, i32* %68, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* @vlc_poll_i11e_wake, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %72 = call i32 @vlc_interrupt_prepare(i32* %69, i32 %70, i32* %71)
  %73 = load i32, i32* @vlc_poll_i11e_cleanup, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @vlc_cleanup_push(i32 %73, i32* %74)
  %76 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @poll(%struct.pollfd* %76, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %97, %55
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %86, i64 %88
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i64 %94
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %104, i64 %106
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @read(i32 %113, i32* %17, i32 4)
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %111, %103, %100
  %118 = call i32 (...) @vlc_cleanup_pop()
  %119 = load i32*, i32** %10, align 8
  %120 = call i64 @vlc_interrupt_finish(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @EINTR, align 4
  store i32 %123, i32* @errno, align 4
  store i32 -1, i32* %13, align 4
  br label %124

124:                                              ; preds = %122, %117
  %125 = call i32 (...) @vlc_savecancel()
  store i32 %125, i32* %14, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vlc_close(i32 %133)
  br label %135

135:                                              ; preds = %131, %124
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @vlc_close(i32 %137)
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @vlc_restorecancel(i32 %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %135, %21
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i64 @vlc_pipe(i32*) #1

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i32 @vlc_interrupt_prepare(i32*, i32, i32*) #1

declare dso_local i32 @vlc_cleanup_push(i32, i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i64 @vlc_interrupt_finish(i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
