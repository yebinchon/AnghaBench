; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_ports.c_InitializePortList.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_ports.c_InitializePortList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 (i32, i32*, i32, i32*, i64, i64*, i64*)* }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32*, i32, i32*, i64, i64*, i64*)* }

@.str = private unnamed_addr constant [22 x i8] c"InitializePortList()\0A\00", align 1
@_PortList = common dso_local global i32 0, align 4
@PrintMonitorList = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@LOCAL_PRINT_MONITOR = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Print Monitor \22%S\22 failed with error %lu on EnumPorts!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"DllAllocSplMem failed!\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitializePortList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @InitializeListHead(i32* @_PortList)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @PrintMonitorList, i32 0, i32 0), align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  br label %15

15:                                               ; preds = %164, %0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, @PrintMonitorList
  br i1 %17, label %18, label %168

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %23 = call i32 @DllFreeSplMem(%struct.TYPE_13__* %22)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = load i32, i32* @LOCAL_PRINT_MONITOR, align 4
  %27 = load i32, i32* @Entry, align 4
  %28 = call %struct.TYPE_15__* @CONTAINING_RECORD(%struct.TYPE_17__* %25, i32 %26, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_14__*
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32*, i32, i32*, i64, i64*, i64*)*, i32 (i32, i32*, i32, i32*, i64, i64*, i64*)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42, i32* null, i32 1, i32* null, i64 0, i64* %2, i64* %5)
  store i32 %43, i32* %1, align 4
  br label %53

44:                                               ; preds = %24
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_18__*
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32 (i32*, i32, i32*, i64, i64*, i64*)*, i32 (i32*, i32, i32*, i64, i64*, i64*)** %50, align 8
  %52 = call i32 %51(i32* null, i32 1, i32* null, i64 0, i64* %2, i64* %5)
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %44, %33
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %61)
  br label %164

63:                                               ; preds = %53
  %64 = load i64, i64* %2, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i8* @DllAllocSplMem(i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %11, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %71, i64* %4, align 8
  %72 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %170

73:                                               ; preds = %63
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_14__*
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32 (i32, i32*, i32, i32*, i64, i64*, i64*)*, i32 (i32, i32*, i32, i32*, i64, i64*, i64*)** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = bitcast %struct.TYPE_13__* %88 to i32*
  %90 = load i64, i64* %2, align 8
  %91 = call i32 %84(i32 %87, i32* null, i32 1, i32* %89, i64 %90, i64* %2, i64* %5)
  store i32 %91, i32* %1, align 4
  br label %104

92:                                               ; preds = %73
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_18__*
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32 (i32*, i32, i32*, i64, i64*, i64*)*, i32 (i32*, i32, i32*, i64, i64*, i64*)** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = bitcast %struct.TYPE_13__* %100 to i32*
  %102 = load i64, i64* %2, align 8
  %103 = call i32 %99(i32* null, i32 1, i32* %101, i64 %102, i64* %2, i64* %5)
  store i32 %103, i32* %1, align 4
  br label %104

104:                                              ; preds = %92, %78
  %105 = load i32, i32* %1, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 (...) @GetLastError()
  %112 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %110, i64 %111)
  br label %164

113:                                              ; preds = %104
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %114, %struct.TYPE_13__** %10, align 8
  store i64 0, i64* %6, align 8
  br label %115

115:                                              ; preds = %160, %113
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %115
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @wcslen(i32 %122)
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = load i64, i64* %3, align 8
  %128 = add i64 4, %127
  %129 = trunc i64 %128 to i32
  %130 = call i8* @DllAllocSplMem(i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %7, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = icmp ne %struct.TYPE_16__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %119
  %135 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %135, i64* %4, align 8
  %136 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %170

137:                                              ; preds = %119
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = bitcast %struct.TYPE_16__* %141 to i32*
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = ptrtoint i32* %143 to i64
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %3, align 8
  %154 = call i32 @CopyMemory(i64 %149, i32 %152, i64 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = call i32 @InsertTailList(i32* @_PortList, i32* %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 1
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %10, align 8
  br label %160

160:                                              ; preds = %137
  %161 = load i64, i64* %6, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %6, align 8
  br label %115

163:                                              ; preds = %115
  br label %164

164:                                              ; preds = %163, %107, %57
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  store %struct.TYPE_17__* %167, %struct.TYPE_17__** %9, align 8
  br label %15

168:                                              ; preds = %15
  %169 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %169, i64* %4, align 8
  br label %170

170:                                              ; preds = %168, %134, %70
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %172 = icmp ne %struct.TYPE_13__* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %175 = call i32 @DllFreeSplMem(%struct.TYPE_13__* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @SetLastError(i64 %177)
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  ret i32 %182
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @DllFreeSplMem(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @CONTAINING_RECORD(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @DllAllocSplMem(i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @CopyMemory(i64, i32, i64) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
