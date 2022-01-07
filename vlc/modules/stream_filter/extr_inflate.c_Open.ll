; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_inflate.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_inflate.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\1F\8B\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Read = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vlc_stream_Peek(i32 %13, i32** %5, i32 2)
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %110

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @U16_AT(i32* %31)
  %33 = srem i32 %32, 31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 15, i32* %6, align 4
  br label %44

36:                                               ; preds = %30, %24, %18
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @memcmp(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 47, i32* %6, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %2, align 4
  br label %110

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %35
  %45 = call %struct.TYPE_7__* @malloc(i32 56)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %7, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %52, i32* %2, align 4
  br label %110

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** @Z_NULL, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** @Z_NULL, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** @Z_NULL, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @inflateInit2(%struct.TYPE_8__* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @Z_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %53
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = call i32 @free(%struct.TYPE_7__* %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @Z_MEM_ERROR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @VLC_ENOMEM, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %2, align 4
  br label %110

96:                                               ; preds = %53
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load i32, i32* @Read, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @Seek, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @Control, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %96, %94, %51, %41, %16
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @U16_AT(i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
