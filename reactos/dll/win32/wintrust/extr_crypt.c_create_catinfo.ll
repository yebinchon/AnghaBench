; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_create_catinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_crypt.c_create_catinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catinfo = type { i32, i32 }

@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global %struct.catinfo* null, align 8
@CATINFO_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.catinfo* (i32*)* @create_catinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.catinfo* @create_catinfo(i32* %0) #0 {
  %2 = alloca %struct.catinfo*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.catinfo*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = call %struct.catinfo* @HeapAlloc(i32 %5, i32 0, i32 8)
  store %struct.catinfo* %6, %struct.catinfo** %4, align 8
  %7 = icmp ne %struct.catinfo* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %10 = call i32 @SetLastError(i32 %9)
  %11 = load %struct.catinfo*, %struct.catinfo** @INVALID_HANDLE_VALUE, align 8
  store %struct.catinfo* %11, %struct.catinfo** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.catinfo*, %struct.catinfo** %4, align 8
  %14 = getelementptr inbounds %struct.catinfo, %struct.catinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @strcpyW(i32 %15, i32* %16)
  %18 = load i32, i32* @CATINFO_MAGIC, align 4
  %19 = load %struct.catinfo*, %struct.catinfo** %4, align 8
  %20 = getelementptr inbounds %struct.catinfo, %struct.catinfo* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.catinfo*, %struct.catinfo** %4, align 8
  store %struct.catinfo* %21, %struct.catinfo** %2, align 8
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.catinfo*, %struct.catinfo** %2, align 8
  ret %struct.catinfo* %23
}

declare dso_local %struct.catinfo* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strcpyW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
