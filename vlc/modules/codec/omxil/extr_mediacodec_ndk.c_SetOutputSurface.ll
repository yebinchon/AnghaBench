; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_SetOutputSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_SetOutputSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (i32, i8*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@syms = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@AMEDIA_OK = common dso_local global i64 0, align 8
@MC_API_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*)* @SetOutputSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetOutputSurface(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load i64 (i32, i8*)*, i64 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @syms, i32 0, i32 0, i32 0), align 8
  %17 = icmp ne i64 (i32, i8*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i64 (i32, i8*)*, i64 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @syms, i32 0, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 %19(i32 %22, i8* %23)
  %25 = load i64, i64* @AMEDIA_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %30

28:                                               ; preds = %18, %3
  %29 = load i32, i32* @MC_API_ERROR, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  ret i32 %31
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
