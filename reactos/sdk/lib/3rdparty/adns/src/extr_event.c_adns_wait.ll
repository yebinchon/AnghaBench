; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_wait.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.timeval = type { i32 }

@cc_entex = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@adns_if_eintr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"select failed in wait: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_wait(%struct.TYPE_9__* %0, i32* %1, i32** %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca %struct.timeval*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @cc_entex, align 4
  %21 = call i32 @adns__consistency(%struct.TYPE_9__* %17, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %78, %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32**, i32*** %7, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = call i32 @adns__internal_check(%struct.TYPE_9__* %23, i32* %24, i32** %25, i8** %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %79

32:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  store %struct.timeval* null, %struct.timeval** %16, align 8
  %33 = call i32 @FD_ZERO(i32* %12)
  %34 = call i32 @FD_ZERO(i32* %13)
  %35 = call i32 @FD_ZERO(i32* %14)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i32 @adns_beforeselect(%struct.TYPE_9__* %36, i32* %10, i32* %12, i32* %13, i32* %14, %struct.timeval** %16, %struct.timeval* %15, i32 0)
  %38 = load %struct.timeval*, %struct.timeval** %16, align 8
  %39 = ptrtoint %struct.timeval* %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.timeval*, %struct.timeval** %16, align 8
  %44 = call i32 @select(i32 %42, i32* %12, i32* %13, i32* %14, %struct.timeval* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %70

48:                                               ; preds = %32
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EINTR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @adns_if_eintr, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @EINTR, align 4
  store i32 %60, i32* %9, align 4
  br label %79

61:                                               ; preds = %52
  br label %69

62:                                               ; preds = %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @strerror(i32 %64)
  %66 = call i32 @adns__diag(%struct.TYPE_9__* %63, i32 -1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = call i32 @adns_globalsystemfailure(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %62, %61
  br label %78

70:                                               ; preds = %32
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @adns_afterselect(%struct.TYPE_9__* %75, i32 %76, i32* %12, i32* %13, i32* %14, i32 0)
  br label %78

78:                                               ; preds = %70, %69
  br label %22

79:                                               ; preds = %59, %31
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = load i32, i32* @cc_entex, align 4
  %82 = call i32 @adns__consistency(%struct.TYPE_9__* %80, i32 0, i32 %81)
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @adns__consistency(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @adns__internal_check(%struct.TYPE_9__*, i32*, i32**, i8**) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @adns_beforeselect(%struct.TYPE_9__*, i32*, i32*, i32*, i32*, %struct.timeval**, %struct.timeval*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @adns__diag(%struct.TYPE_9__*, i32, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @adns_globalsystemfailure(%struct.TYPE_9__*) #1

declare dso_local i32 @adns_afterselect(%struct.TYPE_9__*, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
