; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_buffer_refill.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_ds3d.c_buffer_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i32, i32 }

@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"expected %08x got %08x\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"IDirectSoundBuffer_Lock() failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"IDDirectSoundBuffer_Unlock(): expected %08x got %08x, %p %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"IDirectSoundBuffer_Unlock() failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @buffer_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_refill(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = icmp sgt i64 %11, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @IDirectSoundBuffer_Lock(i32 %31, i32 %34, i64 %35, i32** %6, i64* null, i32** %7, i64* %9, i32 0)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %42 = load i64, i64* %10, align 8
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @IDirectSoundBuffer_Lock(i32 %46, i32 %49, i64 %50, i32** %6, i64* %8, i32** %7, i64* %9, i32 0)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @DS_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @DS_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %145

62:                                               ; preds = %28
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @memcpy(i32* %63, i64 %70, i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %62
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @memcpy(i32* %81, i64 %88, i64 %89)
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %80, %62
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = srem i64 %99, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = bitcast i32** %6 to i32*
  %112 = load i64, i64* %8, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @IDirectSoundBuffer_Unlock(i32 %110, i32* %111, i64 %112, i32* %113, i64 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 (i32, i8*, i64, ...) @ok(i32 %119, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %120, i64 %121, i32** %6, i32* %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @IDirectSoundBuffer_Unlock(i32 %126, i32* %127, i64 %128, i32* %129, i64 %130)
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @DS_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %10, align 8
  %137 = call i32 (i32, i8*, i64, ...) @ok(i32 %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @DS_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %145

142:                                              ; preds = %96
  %143 = load i64, i64* %5, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %141, %61
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @IDirectSoundBuffer_Lock(i32, i32, i64, i32**, i64*, i32**, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i64 @IDirectSoundBuffer_Unlock(i32, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
