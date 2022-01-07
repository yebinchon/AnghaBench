; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiSetInformationEx.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiSetInformationEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@AT_ENTITY = common dso_local global i32 0, align 4
@CL_NL_ENTITY = common dso_local global i32 0, align 4
@CO_NL_ENTITY = common dso_local global i32 0, align 4
@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"TCPIP: IOCTL_TCP_SET_INFORMATION_EX - Unrecognized information type for INFO_CLASS_PROTOCOL: %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"TCPIP: IOCTL_TCP_SET_INFORMATION_EX - Unrecognized information class %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiSetInformationEx(i32 %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %123 [
    i32 132, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %117 [
    i32 131, label %19
    i32 130, label %34
    i32 129, label %53
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @GetContext(i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @SetAddressFileInfo(%struct.TYPE_7__* %27, i8* %28, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %129

32:                                               ; preds = %19
  %33 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %33, i32* %5, align 4
  br label %129

34:                                               ; preds = %15
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @GetContext(i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %44, i32* %5, align 4
  br label %129

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @SetConnectionInfo(%struct.TYPE_7__* %46, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %129

53:                                               ; preds = %15
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %115 [
    i32 128, label %57
  ]

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 129
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %63, i32* %5, align 4
  br label %129

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AT_ENTITY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @GetContext(i32 %75)
  store i8* %76, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @InfoTdiSetArptableMIB(i8* %79, i8* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %129

83:                                               ; preds = %71
  %84 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %84, i32* %5, align 4
  br label %129

85:                                               ; preds = %64
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CL_NL_ENTITY, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CO_NL_ENTITY, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %92, %85
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @GetContext(i32 %103)
  store i8* %104, i8** %10, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @InfoTdiSetRoute(i8* %107, i8* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %129

111:                                              ; preds = %99
  %112 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %112, i32* %5, align 4
  br label %129

113:                                              ; preds = %92
  %114 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %114, i32* %5, align 4
  br label %129

115:                                              ; preds = %53
  %116 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %116, i32* %5, align 4
  br label %129

117:                                              ; preds = %15
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DbgPrint(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %122, i32* %5, align 4
  br label %129

123:                                              ; preds = %4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DbgPrint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %123, %117, %115, %113, %111, %106, %83, %78, %62, %45, %43, %32, %26
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i8* @GetContext(i32) #1

declare dso_local i32 @SetAddressFileInfo(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @SetConnectionInfo(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @InfoTdiSetArptableMIB(i8*, i8*, i32) #1

declare dso_local i32 @InfoTdiSetRoute(i8*, i8*, i32) #1

declare dso_local i32 @DbgPrint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
