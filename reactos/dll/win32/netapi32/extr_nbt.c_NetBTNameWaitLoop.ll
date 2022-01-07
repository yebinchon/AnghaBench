; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTNameWaitLoop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTNameWaitLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }

@NRC_BADDR = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@NRC_GOODRET = common dso_local global i32 0, align 4
@NBNS_TYPE_NB = common dso_local global i32 0, align 4
@NetBTFindNameAnswerCallback = common dso_local global i32 0, align 4
@NRC_SYSTEM = common dso_local global i32 0, align 4
@NRC_CMDCAN = common dso_local global i32 0, align 4
@NCBNAMSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, %struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_14__**)* @NetBTNameWaitLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTNameWaitLoop(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_13__* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_14__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__**, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_14__** %7, %struct.TYPE_14__*** %17, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @NRC_BADDR, align 4
  store i32 %24, i32* %9, align 4
  br label %122

25:                                               ; preds = %8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @INVALID_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @NRC_BADDR, align 4
  store i32 %30, i32* %9, align 4
  br label %122

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @NRC_BADDR, align 4
  store i32 %35, i32* %9, align 4
  br label %122

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %38 = icmp ne %struct.TYPE_14__** %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @NRC_BADDR, align 4
  store i32 %40, i32* %9, align 4
  br label %122

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %42, align 8
  %43 = load i32, i32* @NRC_GOODRET, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %90, %41
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ult i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %93

55:                                               ; preds = %53
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = call i32 @NCB_CANCELLED(%struct.TYPE_13__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NBNS_TYPE_NB, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @NetBTSendNameQuery(i64 %60, i32 %63, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 (...) @GetTickCount()
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* @NetBTFindNameAnswerCallback, align 4
  %80 = call i32 @NetBTWaitForNameResponse(%struct.TYPE_12__* %74, i64 %75, i32 %78, i32 %79, %struct.TYPE_11__* %19)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  br label %85

82:                                               ; preds = %59
  %83 = load i32, i32* @NRC_SYSTEM, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %73
  br label %89

86:                                               ; preds = %55
  %87 = load i32, i32* @NRC_CMDCAN, align 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %18, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %45

93:                                               ; preds = %53
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = icmp ne %struct.TYPE_14__* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NCBNAMSZ, align 4
  %106 = call i32 @memcpy(i32 %101, i32 %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NCBNAMSZ, align 4
  %115 = call i32 @memcpy(i32 %110, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %97, %93
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %116, %39, %34, %29, %23
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @NCB_CANCELLED(%struct.TYPE_13__*) #1

declare dso_local i32 @NetBTSendNameQuery(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NetBTWaitForNameResponse(%struct.TYPE_12__*, i64, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
