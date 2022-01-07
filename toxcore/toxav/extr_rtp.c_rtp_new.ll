; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_rtp_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_rtp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i8*, %struct.RTPMessage*)*, i8*, i32*, i32, i8*, i32 }
%struct.RTPMessage = type opaque
%struct.RTPMessage.0 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Alloc failed! Program might misbehave!\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to start rtp receiving mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @rtp_new(i32 %0, i8* %1, i32 %2, i32* %3, i8* %4, i32 (i8*, %struct.RTPMessage.0*)* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, %struct.RTPMessage.0*)*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, %struct.RTPMessage.0*)* %5, i32 (i8*, %struct.RTPMessage.0*)** %13, align 8
  %15 = load i32 (i8*, %struct.RTPMessage.0*)*, i32 (i8*, %struct.RTPMessage.0*)** %13, align 8
  %16 = bitcast i32 (i8*, %struct.RTPMessage.0*)* %15 to i8*
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = call %struct.TYPE_6__* @calloc(i32 1, i32 56)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %59

27:                                               ; preds = %6
  %28 = call i32 (...) @random_int()
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32 (i8*, %struct.RTPMessage.0*)*, i32 (i8*, %struct.RTPMessage.0*)** %13, align 8
  %47 = bitcast i32 (i8*, %struct.RTPMessage.0*)* %46 to i32 (i8*, %struct.RTPMessage*)*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 (i8*, %struct.RTPMessage*)* %47, i32 (i8*, %struct.RTPMessage*)** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %51 = call i32 @rtp_allow_receiving(%struct.TYPE_6__* %50)
  %52 = icmp eq i32 -1, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %27
  %54 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = call i32 @free(%struct.TYPE_6__* %55)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %59

57:                                               ; preds = %27
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %7, align 8
  br label %59

59:                                               ; preds = %57, %53, %25
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %60
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @random_int(...) #1

declare dso_local i32 @rtp_allow_receiving(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
