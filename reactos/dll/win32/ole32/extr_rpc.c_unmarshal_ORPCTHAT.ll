; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_unmarshal_ORPCTHAT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_unmarshal_ORPCTHAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@WIRE_ORPCTHAT = common dso_local global i32 0, align 4
@extensions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid buffer length\0A\00", align 1
@RPC_E_INVALID_HEADER = common dso_local global i32 0, align 4
@ORPCF_LOCAL = common dso_local global i32 0, align 4
@ORPCF_RESERVED1 = common dso_local global i32 0, align 4
@ORPCF_RESERVED2 = common dso_local global i32 0, align 4
@ORPCF_RESERVED3 = common dso_local global i32 0, align 4
@ORPCF_RESERVED4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid flags 0x%x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32**)* @unmarshal_ORPCTHAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmarshal_ORPCTHAT(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i32**, i32*** %9, align 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* @WIRE_ORPCTHAT, align 4
  %26 = load i32, i32* @extensions, align 4
  %27 = call i32 @FIELD_OFFSET(i32 %25, i32 %26)
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @RPC_E_INVALID_HEADER, align 4
  store i32 %33, i32* %5, align 4
  br label %133

34:                                               ; preds = %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @WIRE_ORPCTHAT, align 4
  %40 = load i32, i32* @extensions, align 4
  %41 = call i32 @FIELD_OFFSET(i32 %39, i32 %40)
  %42 = call i32 @memcpy(%struct.TYPE_8__* %35, i8* %38, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @WIRE_ORPCTHAT, align 4
  %47 = load i32, i32* @extensions, align 4
  %48 = call i32 @FIELD_OFFSET(i32 %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %34
  %60 = load i32, i32* @RPC_E_INVALID_HEADER, align 4
  store i32 %60, i32* %5, align 4
  br label %133

61:                                               ; preds = %34
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  br label %75

72:                                               ; preds = %61
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32**, i32*** %9, align 8
  %91 = call i32 @unmarshal_ORPC_EXTENT_ARRAY(%struct.TYPE_7__* %87, i8* %88, i32* %89, i32** %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %133

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ORPCF_LOCAL, align 4
  %103 = load i32, i32* @ORPCF_RESERVED1, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @ORPCF_RESERVED2, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @ORPCF_RESERVED3, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @ORPCF_RESERVED4, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = and i32 %101, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %98
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ORPCF_LOCAL, align 4
  %119 = load i32, i32* @ORPCF_RESERVED1, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ORPCF_RESERVED2, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ORPCF_RESERVED3, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ORPCF_RESERVED4, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = and i32 %117, %127
  %129 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @RPC_E_INVALID_HEADER, align 4
  store i32 %130, i32* %5, align 4
  br label %133

131:                                              ; preds = %98
  %132 = load i32, i32* @S_OK, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %114, %95, %59, %31
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @unmarshal_ORPC_EXTENT_ARRAY(%struct.TYPE_7__*, i8*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
