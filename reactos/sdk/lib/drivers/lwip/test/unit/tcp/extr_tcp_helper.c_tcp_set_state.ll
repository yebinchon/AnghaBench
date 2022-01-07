; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_set_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.tcp_pcb = type { i32, i8*, %struct.TYPE_8__, i8*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ESTABLISHED = common dso_local global i32 0, align 4
@tcp_active_pcbs = common dso_local global i32 0, align 4
@LISTEN = common dso_local global i32 0, align 4
@tcp_listen_pcbs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TIME_WAIT = common dso_local global i32 0, align 4
@tcp_tw_pcbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_state(%struct.tcp_pcb* %0, i32 %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.tcp_pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ESTABLISHED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %6
  %20 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %21 = call i32 @TCP_REG(i32* @tcp_active_pcbs, %struct.tcp_pcb* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %85

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LISTEN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %46 = call i32 @TCP_REG(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tcp_listen_pcbs, i32 0, i32 0), %struct.tcp_pcb* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %84

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @TIME_WAIT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %62 = call i32 @TCP_REG(i32* @tcp_tw_pcbs, %struct.tcp_pcb* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %76 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %83

81:                                               ; preds = %56
  %82 = call i32 (...) @fail()
  br label %83

83:                                               ; preds = %81, %60
  br label %84

84:                                               ; preds = %83, %44
  br label %85

85:                                               ; preds = %84, %19
  ret void
}

declare dso_local i32 @TCP_REG(i32*, %struct.tcp_pcb*) #1

declare dso_local i32 @fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
