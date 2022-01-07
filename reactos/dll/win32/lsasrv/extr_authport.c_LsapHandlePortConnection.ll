; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_authport.c_LsapHandlePortConnection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_authport.c_LsapHandlePortConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"LsapHandlePortConnection(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Logon Process Name: %s\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"NtAcceptConnectPort failed (Status 0x%lx)\0A\00", align 1
@LsapLogonContextList = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"NtCompleteConnectPort failed (Status 0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @LsapHandlePortConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsapHandlePortConnection(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = call i32 @LsapCheckLogonProcess(%struct.TYPE_12__* %24, %struct.TYPE_13__** %4)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 1126270821, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %1
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %6, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 4, i32* %42, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = bitcast %struct.TYPE_13__* %43 to i32*
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @NtAcceptConnectPort(i32** %5, i32* %44, i32* %46, i64 %47, i32* null, %struct.TYPE_11__* %7)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %83

56:                                               ; preds = %41
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @FALSE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = call i32 @InsertHeadList(i32* @LsapLogonContextList, i32* %68)
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @NtCompleteConnectPort(i32* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @NT_SUCCESS(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %76, %52
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @LsapCheckLogonProcess(%struct.TYPE_12__*, %struct.TYPE_13__**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtAcceptConnectPort(i32**, i32*, i32*, i64, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @NtCompleteConnectPort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
