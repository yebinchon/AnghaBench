; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_do_ns_command.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_do_ns_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@IID_nsICommandManager = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not get nsICommandManager: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DoCommand(%s) failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ns_command(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %3
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = bitcast i32** %7 to i8**
  %33 = call i32 @get_nsinterface(i32* %31, i32* @IID_nsICommandManager, i8** %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @NS_FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %61

40:                                               ; preds = %23
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nsICommandManager_DoCommand(i32* %41, i8* %42, i32* %43, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @NS_FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @debugstr_a(i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %40
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @nsICommandManager_Release(i32* %59)
  br label %61

61:                                               ; preds = %58, %37, %22
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @get_nsinterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @nsICommandManager_DoCommand(i32*, i8*, i32*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @nsICommandManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
