; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_get_readystate_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_get_readystate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_readystate_string.uninitializedW = internal constant [14 x i8] c"uninitialized\00", align 1
@get_readystate_string.loadingW = internal constant [8 x i8] c"loading\00", align 1
@get_readystate_string.loadedW = internal constant [7 x i8] c"loaded\00", align 1
@get_readystate_string.interactiveW = internal constant [12 x i8] c"interactive\00", align 1
@get_readystate_string.completeW = internal constant [9 x i8] c"complete\00", align 1
@get_readystate_string.readystate_strs = internal constant [5 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @get_readystate_string.uninitializedW, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_readystate_string.loadingW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @get_readystate_string.loadedW, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_readystate_string.interactiveW, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_readystate_string.completeW, i32 0, i32 0)], align 16
@READYSTATE_COMPLETE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_readystate_string(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %7 = icmp ule i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* @get_readystate_string.readystate_strs, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @SysAllocString(i8* %12)
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @S_OK, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  ret i32 %23
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SysAllocString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
