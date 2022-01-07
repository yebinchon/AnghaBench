; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_bind.c_WarmSocketForBind.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_bind.c_WarmSocketForBind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Called (AF %u)\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Null Device\0A\00", align 1
@STATUS_NO_SUCH_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"No local address\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@AFD_ENDPOINT_CONNECTIONLESS = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@TAG_AFD_DATA_BUFFER = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@PacketSocketRecvComplete = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Returning %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WarmSocketForBind(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @MID_TRACE, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @AFD_DbgPrint(i32 %7, i8* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* @MIN_TRACE, align 4
  %32 = call i32 @AFD_DbgPrint(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @STATUS_NO_SUCH_DEVICE, align 8
  store i64 %33, i64* %3, align 8
  br label %162

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @MIN_TRACE, align 4
  %41 = call i32 @AFD_DbgPrint(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %42, i64* %3, align 8
  br label %162

43:                                               ; preds = %34
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = call i64 @TdiOpenAddressFile(%struct.TYPE_15__* %45, %struct.TYPE_16__* %48, i32 %49, i32* %52, i32* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @NT_SUCCESS(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %43
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %162

62:                                               ; preds = %43
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AFD_ENDPOINT_CONNECTIONLESS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %156

69:                                               ; preds = %62
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = call i64 @TdiQueryMaxDatagramLength(i32 %79, i64* %82)
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %75, %69
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @NT_SUCCESS(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @PagedPool, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @TAG_AFD_DATA_BUFFER, align 4
  %101 = call i32 @ExAllocatePoolWithTag(i32 %95, i64 %99, i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %94
  %111 = load i64, i64* @STATUS_NO_MEMORY, align 8
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %110, %94
  br label %113

113:                                              ; preds = %112, %88, %84
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @NT_SUCCESS(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %113
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %117
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PacketSocketRecvComplete, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = call i64 @TdiReceiveDatagram(i32* %130, i32 %134, i32 0, i32 %138, i64 %142, i32 %145, i32 %146, %struct.TYPE_14__* %147)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @STATUS_PENDING, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %127
  %153 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %152, %127
  br label %155

155:                                              ; preds = %154, %117, %113
  br label %156

156:                                              ; preds = %155, %62
  %157 = load i32, i32* @MID_TRACE, align 4
  %158 = load i64, i64* %6, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @AFD_DbgPrint(i32 %157, i8* %159)
  %161 = load i64, i64* %6, align 8
  store i64 %161, i64* %3, align 8
  br label %162

162:                                              ; preds = %156, %60, %39, %30
  %163 = load i64, i64* %3, align 8
  ret i64 %163
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i64 @TdiOpenAddressFile(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @TdiQueryMaxDatagramLength(i32, i64*) #1

declare dso_local i32 @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i64 @TdiReceiveDatagram(i32*, i32, i32, i32, i64, i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
