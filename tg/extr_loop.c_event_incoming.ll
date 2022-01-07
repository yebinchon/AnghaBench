; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_event_incoming.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_event_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.in_ev = type { i64, i32, i64 }

@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Closing incoming connection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_incoming(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in_ev*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.in_ev*
  store %struct.in_ev* %9, %struct.in_ev** %7, align 8
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @BEV_EVENT_EOF, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %15 = sext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = call i32 @vlogprintf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %23 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %29 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @close(i64 %30)
  %32 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %33 = call i32 @bufferevent_free(%struct.bufferevent* %32)
  %34 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %35 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %37 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %43 = call i32 @free(%struct.in_ev* %42)
  br label %44

44:                                               ; preds = %41, %19
  br label %45

45:                                               ; preds = %44, %3
  ret void
}

declare dso_local i32 @vlogprintf(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @free(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
