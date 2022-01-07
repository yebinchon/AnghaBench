; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadRaw.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, i8*, i32)*, i32* (%struct.TYPE_7__*, i32*)* }
%struct.TYPE_8__ = type { i32* }

@SSIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64)* @vlc_stream_ReadRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_stream_ReadRaw(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = bitcast %struct.TYPE_7__* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SSIZE_MAX, align 8
  %17 = icmp ule i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i64 (...) @vlc_killed()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %111

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64 (%struct.TYPE_7__*, i8*, i32)*, i64 (%struct.TYPE_7__*, i8*, i32)** %25, align 8
  %27 = icmp ne i64 (%struct.TYPE_7__*, i8*, i32)* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i64 0, i64* %4, align 8
  br label %111

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = icmp ule i64 %45, 256
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 256, %49 ]
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %10, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64 (%struct.TYPE_7__*, i8*, i32)*, i64 (%struct.TYPE_7__*, i8*, i32)** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = trunc i64 %51 to i32
  %59 = call i64 %56(%struct.TYPE_7__* %57, i8* %53, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %70

61:                                               ; preds = %28
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64 (%struct.TYPE_7__*, i8*, i32)*, i64 (%struct.TYPE_7__*, i8*, i32)** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i64 %64(%struct.TYPE_7__* %65, i8* %66, i32 %68)
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %61, %50
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %4, align 8
  br label %111

72:                                               ; preds = %23
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @vlc_stream_CopyBlock(i32** %74, i8* %75, i64 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %4, align 8
  br label %111

82:                                               ; preds = %72
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32* (%struct.TYPE_7__*, i32*)*, i32* (%struct.TYPE_7__*, i32*)** %84, align 8
  %86 = icmp ne i32* (%struct.TYPE_7__*, i32*)* %85, null
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32* (%struct.TYPE_7__*, i32*)*, i32* (%struct.TYPE_7__*, i32*)** %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = call i32* %90(%struct.TYPE_7__* %91, i32* %12)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i64 @vlc_stream_CopyBlock(i32** %96, i8* %97, i64 %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %4, align 8
  br label %111

104:                                              ; preds = %87
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 -1
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %4, align 8
  br label %111

110:                                              ; preds = %82
  store i64 0, i64* %4, align 8
  br label %111

111:                                              ; preds = %110, %104, %102, %80, %70, %43, %22
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @vlc_stream_CopyBlock(i32**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
