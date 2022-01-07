; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_MultiByteToWideChar.c_GetRealOSVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_MultiByteToWideChar.c_GetRealOSVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GetRealOSVersion.osvi = internal global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 110, i32 116, i32 100, i32 108, i32 108, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"RtlGetVersion\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @GetRealOSVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @GetRealOSVersion() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (%struct.TYPE_4__*)*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  %4 = call i64 @LoadLibraryW(i8* bitcast ([10 x i32]* @.str to i8*))
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @GetProcAddress(i64 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i64 (%struct.TYPE_4__*)*
  store i64 (%struct.TYPE_4__*)* %10, i64 (%struct.TYPE_4__*)** %3, align 8
  %11 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %3, align 8
  %12 = icmp ne i64 (%struct.TYPE_4__*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @GetRealOSVersion.osvi, i32 0, i32 0), align 4
  %14 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** %3, align 8
  %15 = call i64 %14(%struct.TYPE_4__* @GetRealOSVersion.osvi)
  %16 = load i64, i64* @STATUS_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store %struct.TYPE_4__* @GetRealOSVersion.osvi, %struct.TYPE_4__** %1, align 8
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @FreeLibrary(i64 %21)
  br label %23

23:                                               ; preds = %20, %0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %24
}

declare dso_local i64 @LoadLibraryW(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
