; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_buffer_silence8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d8.c_buffer_silence8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"IDirectSoundBuffer_Lock() failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"IDirectSoundBuffer_Unlock() failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @buffer_silence8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_silence8(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @IDirectSoundBuffer_Lock(i32 %14, i32 %17, i32 %18, i32** %6, i32* %8, i32** %7, i32* %9, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @DS_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @DS_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %82

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 8
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 128, i32 0
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @memset(i32* %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memset(i32* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %30
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %55, %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @IDirectSoundBuffer_Unlock(i32 %64, i32* %65, i32 %66, i32* %67, i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @DS_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @DS_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %82

80:                                               ; preds = %50
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %79, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @IDirectSoundBuffer_Lock(i32, i32, i32, i32**, i32*, i32**, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IDirectSoundBuffer_Unlock(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
