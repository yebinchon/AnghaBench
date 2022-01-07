; ModuleID = '/home/carl/AnghaBench/sway/common/extr_loop.c_loop_add_fd.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_loop.c_loop_add_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, i32, %struct.pollfd*, i32 }
%struct.pollfd = type { i32, i16, i32 }
%struct.loop_fd_event = type { void (i32, i16, i8*)*, i8* }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to allocate memory for event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loop_add_fd(%struct.loop* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.loop_fd_event*, align 8
  %12 = alloca %struct.pollfd, align 4
  store %struct.loop* %0, %struct.loop** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = call %struct.loop_fd_event* @calloc(i32 1, i32 16)
  store %struct.loop_fd_event* %13, %struct.loop_fd_event** %11, align 8
  %14 = load %struct.loop_fd_event*, %struct.loop_fd_event** %11, align 8
  %15 = icmp ne %struct.loop_fd_event* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @SWAY_ERROR, align 4
  %18 = call i32 @sway_log(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %72

19:                                               ; preds = %5
  %20 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %21 = load %struct.loop_fd_event*, %struct.loop_fd_event** %11, align 8
  %22 = getelementptr inbounds %struct.loop_fd_event, %struct.loop_fd_event* %21, i32 0, i32 0
  store void (i32, i16, i8*)* %20, void (i32, i16, i8*)** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.loop_fd_event*, %struct.loop_fd_event** %11, align 8
  %25 = getelementptr inbounds %struct.loop_fd_event, %struct.loop_fd_event* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.loop*, %struct.loop** %6, align 8
  %27 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.loop_fd_event*, %struct.loop_fd_event** %11, align 8
  %30 = call i32 @list_add(i32 %28, %struct.loop_fd_event* %29)
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  %34 = load i16, i16* %8, align 2
  store i16 %34, i16* %33, align 4
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = load %struct.loop*, %struct.loop** %6, align 8
  %37 = getelementptr inbounds %struct.loop, %struct.loop* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.loop*, %struct.loop** %6, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %19
  %44 = load %struct.loop*, %struct.loop** %6, align 8
  %45 = getelementptr inbounds %struct.loop, %struct.loop* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 10
  store i32 %47, i32* %45, align 4
  %48 = load %struct.loop*, %struct.loop** %6, align 8
  %49 = getelementptr inbounds %struct.loop, %struct.loop* %48, i32 0, i32 2
  %50 = load %struct.pollfd*, %struct.pollfd** %49, align 8
  %51 = load %struct.loop*, %struct.loop** %6, align 8
  %52 = getelementptr inbounds %struct.loop, %struct.loop* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 12, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.pollfd* @realloc(%struct.pollfd* %50, i32 %56)
  %58 = load %struct.loop*, %struct.loop** %6, align 8
  %59 = getelementptr inbounds %struct.loop, %struct.loop* %58, i32 0, i32 2
  store %struct.pollfd* %57, %struct.pollfd** %59, align 8
  br label %60

60:                                               ; preds = %43, %19
  %61 = load %struct.loop*, %struct.loop** %6, align 8
  %62 = getelementptr inbounds %struct.loop, %struct.loop* %61, i32 0, i32 2
  %63 = load %struct.pollfd*, %struct.pollfd** %62, align 8
  %64 = load %struct.loop*, %struct.loop** %6, align 8
  %65 = getelementptr inbounds %struct.loop, %struct.loop* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i64 %68
  %70 = bitcast %struct.pollfd* %69 to i8*
  %71 = bitcast %struct.pollfd* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  br label %72

72:                                               ; preds = %60, %16
  ret void
}

declare dso_local %struct.loop_fd_event* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @list_add(i32, %struct.loop_fd_event*) #1

declare dso_local %struct.pollfd* @realloc(%struct.pollfd*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
