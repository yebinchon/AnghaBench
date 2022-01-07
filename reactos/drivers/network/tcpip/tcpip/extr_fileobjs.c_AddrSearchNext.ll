; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrSearchNext.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrSearchNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__*, i32* }

@FALSE = common dso_local global i64 0, align 8
@AddressFileListLock = common dso_local global i32 0, align 4
@AddressFileListHead = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ADDRESS_FILE = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@DEBUG_ADDRFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Comparing: ((%d, %d, %s), (%d, %d, %s)).\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @AddrSearchNext(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  %11 = call i32 @TcpipAcquireSpinLock(i32* @AddressFileListLock, i32* %6)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, @AddressFileListHead
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @TcpipReleaseSpinLock(i32* @AddressFileListLock, i32 %17)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load i32, i32* @ADDRESS_FILE, align 4
  %24 = load i32, i32* @ListEntry, align 4
  %25 = call %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_11__* %22, i32 %23, i32 %24)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %9, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %4, align 8
  br label %29

29:                                               ; preds = %87, %19
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, @AddressFileListHead
  br i1 %31, label %32, label %91

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = load i32, i32* @ADDRESS_FILE, align 4
  %35 = load i32, i32* @ListEntry, align 4
  %36 = call %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_11__* %33, i32 %34, i32 %35)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %7, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* @DEBUG_ADDRFILE, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @WN2H(i64 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @A2S(i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @WN2H(i64 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @A2S(i32* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @TI_DbgPrint(i32 %39, i8* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %32
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @AddrReceiveMatch(i32* %79, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %8, align 8
  br label %91

87:                                               ; preds = %78, %70, %32
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %4, align 8
  br label %29

91:                                               ; preds = %85, %29
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = icmp ne %struct.TYPE_11__* %102, @AddressFileListHead
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* @ADDRESS_FILE, align 4
  %109 = load i32, i32* @ListEntry, align 4
  %110 = call %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_11__* %107, i32 %108, i32 %109)
  %111 = call i32 @ReferenceObject(%struct.TYPE_13__* %110)
  br label %112

112:                                              ; preds = %104, %94
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = call i32 @ReferenceObject(%struct.TYPE_13__* %113)
  br label %116

115:                                              ; preds = %91
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %116

116:                                              ; preds = %115, %112
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = call i32 @DereferenceObject(%struct.TYPE_13__* %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @TcpipReleaseSpinLock(i32* @AddressFileListLock, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %2, align 8
  br label %122

122:                                              ; preds = %116, %16
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %123
}

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @CONTAINING_RECORD(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @WN2H(i64) #1

declare dso_local i32 @A2S(i32*) #1

declare dso_local i64 @AddrReceiveMatch(i32*, i32*) #1

declare dso_local i32 @ReferenceObject(%struct.TYPE_13__*) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
