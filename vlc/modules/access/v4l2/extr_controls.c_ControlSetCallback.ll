; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_controls.c_ControlSetCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/v4l2/extr_controls.c_ControlSetCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot set control %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32, i64, i32, i8*)* @ControlSetCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ControlSetCallback(i32* %0, i8* %1, i64 %2, i32 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  store i64 %2, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  store i32 %3, i32* %19, align 4
  %20 = bitcast %struct.TYPE_8__* %9 to i8*
  %21 = bitcast { i64, i32 }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  store i64 %4, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  store i32 %5, i32* %23, align 4
  %24 = bitcast %struct.TYPE_8__* %11 to i8*
  %25 = bitcast { i64, i32 }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %16, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %54 [
    i32 132, label %31
    i32 129, label %31
    i32 135, label %31
    i32 130, label %31
    i32 134, label %36
    i32 133, label %41
    i32 131, label %44
    i32 128, label %49
  ]

31:                                               ; preds = %7, %7, %7, %7
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ControlSet(%struct.TYPE_9__* %32, i32 %34)
  store i32 %35, i32* %17, align 4
  br label %56

36:                                               ; preds = %7
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ControlSet(%struct.TYPE_9__* %37, i32 %39)
  store i32 %40, i32* %17, align 4
  br label %56

41:                                               ; preds = %7
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %43 = call i32 @ControlSet(%struct.TYPE_9__* %42, i32 0)
  store i32 %43, i32* %17, align 4
  br label %56

44:                                               ; preds = %7
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ControlSet64(%struct.TYPE_9__* %45, i32 %47)
  store i32 %48, i32* %17, align 4
  br label %56

49:                                               ; preds = %7
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ControlSetStr(%struct.TYPE_9__* %50, i32 %52)
  store i32 %53, i32* %17, align 4
  br label %56

54:                                               ; preds = %7
  %55 = call i32 (...) @vlc_assert_unreachable()
  br label %56

56:                                               ; preds = %54, %49, %44, %41, %36, %31
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** %13, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @vlc_strerror_c(i32 %62)
  %64 = call i32 @msg_Err(i32* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %63)
  %65 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %65, i32* %8, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ControlSet(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @ControlSet64(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @ControlSetStr(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @vlc_assert_unreachable(...) #2

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i32) #2

declare dso_local i32 @vlc_strerror_c(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
