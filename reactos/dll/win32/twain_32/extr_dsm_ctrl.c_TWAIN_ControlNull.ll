; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_ControlNull.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_ControlNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.pending_message = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"DG_CONTROL/DAT_NULL MSG=%i\0A\00", align 1
@MSG_CLOSEDSREQ = common dso_local global i64 0, align 8
@MSG_DEVICEEVENT = common dso_local global i64 0, align 8
@MSG_XFERREADY = common dso_local global i64 0, align 8
@TWCC_BADPROTOCOL = common dso_local global i32 0, align 4
@DSM_twCC = common dso_local global i32 0, align 4
@TWRC_FAILURE = common dso_local global i64 0, align 8
@TWCC_LOWMEMORY = common dso_local global i32 0, align 4
@DSM_parent = common dso_local global i64 0, align 8
@event_message = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TWAIN_ControlNull(i32 %0, i32 %1, %struct.TYPE_3__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pending_message*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MSG_CLOSEDSREQ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @MSG_DEVICEEVENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @MSG_XFERREADY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @TWCC_BADPROTOCOL, align 4
  store i32 %27, i32* @DSM_twCC, align 4
  %28 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %28, i64* %6, align 8
  br label %98

29:                                               ; preds = %22, %18, %5
  %30 = call i32 (...) @GetProcessHeap()
  %31 = call %struct.pending_message* @HeapAlloc(i32 %30, i32 0, i32 16)
  store %struct.pending_message* %31, %struct.pending_message** %12, align 8
  %32 = load %struct.pending_message*, %struct.pending_message** %12, align 8
  %33 = icmp ne %struct.pending_message* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @TWCC_LOWMEMORY, align 4
  store i32 %35, i32* @DSM_twCC, align 4
  %36 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %36, i64* %6, align 8
  br label %98

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.pending_message*, %struct.pending_message** %12, align 8
  %40 = getelementptr inbounds %struct.pending_message, %struct.pending_message* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load %struct.pending_message*, %struct.pending_message** %12, align 8
  %44 = getelementptr inbounds %struct.pending_message, %struct.pending_message* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load i64, i64* @DSM_parent, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i64, i64* @DSM_parent, align 8
  %50 = load i32, i32* @event_message, align 4
  %51 = call i32 @PostMessageW(i64 %49, i32 %50, i32 0, i32 0)
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DSM_parent, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @event_message, align 4
  %68 = call i32 @PostMessageW(i64 %66, i32 %67, i32 0, i32 0)
  br label %69

69:                                               ; preds = %63, %57, %52
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %74
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DSM_parent, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @event_message, align 4
  %93 = call i32 @PostMessageW(i64 %91, i32 %92, i32 0, i32 0)
  br label %94

94:                                               ; preds = %88, %82, %74, %69
  %95 = load i32, i32* @event_message, align 4
  %96 = call i32 @PostMessageW(i64 0, i32 %95, i32 0, i32 0)
  %97 = load i64, i64* @TWRC_SUCCESS, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %94, %34, %26
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local %struct.pending_message* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @PostMessageW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
