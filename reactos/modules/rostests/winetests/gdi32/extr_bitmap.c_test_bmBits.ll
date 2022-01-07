; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_bmBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_bmBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CreateBitmap failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"GetObject failed or returned a wrong structure size\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"bmBits must be NULL for device-dependent bitmaps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bmBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bmBits() #0 {
  %1 = alloca [4 x %struct.TYPE_6__], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %5 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 16)
  %6 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %7 = call i32* @CreateBitmap(i32 2, i32 2, i32 1, i32 4, %struct.TYPE_6__* %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.TYPE_6__* %3, i32 255, i32 4)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @GetObjectW(i32* %13, i32 4, %struct.TYPE_6__* %3)
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 4
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @DeleteObject(i32* %25)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetObjectW(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
