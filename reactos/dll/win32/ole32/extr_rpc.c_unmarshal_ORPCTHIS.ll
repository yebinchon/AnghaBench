; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_unmarshal_ORPCTHIS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_unmarshal_ORPCTHIS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64, i64 }

@WIRE_ORPCTHIS = common dso_local global i32 0, align 4
@extensions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid buffer length\0A\00", align 1
@RPC_E_INVALID_HEADER = common dso_local global i32 0, align 4
@COM_MAJOR_VERSION = common dso_local global i64 0, align 8
@COM_MINOR_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"COM version {%d, %d} not supported\0A\00", align 1
@RPC_E_VERSION_MISMATCH = common dso_local global i32 0, align 4
@ORPCF_LOCAL = common dso_local global i32 0, align 4
@ORPCF_RESERVED1 = common dso_local global i32 0, align 4
@ORPCF_RESERVED2 = common dso_local global i32 0, align 4
@ORPCF_RESERVED3 = common dso_local global i32 0, align 4
@ORPCF_RESERVED4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid flags 0x%x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32**)* @unmarshal_ORPCTHIS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmarshal_ORPCTHIS(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i32**, i32*** %9, align 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* @WIRE_ORPCTHIS, align 4
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
  br label %158

34:                                               ; preds = %4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @WIRE_ORPCTHIS, align 4
  %40 = load i32, i32* @extensions, align 4
  %41 = call i32 @FIELD_OFFSET(i32 %39, i32 %40)
  %42 = call i32 @memcpy(%struct.TYPE_10__* %35, i8* %38, i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @WIRE_ORPCTHIS, align 4
  %47 = load i32, i32* @extensions, align 4
  %48 = call i32 @FIELD_OFFSET(i32 %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %34
  %60 = load i32, i32* @RPC_E_INVALID_HEADER, align 4
  store i32 %60, i32* %5, align 4
  br label %158

61:                                               ; preds = %34
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  br label %75

72:                                               ; preds = %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32**, i32*** %9, align 8
  %91 = call i32 @unmarshal_ORPC_EXTENT_ARRAY(%struct.TYPE_9__* %87, i8* %88, i32* %89, i32** %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @FAILED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %158

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @COM_MAJOR_VERSION, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COM_MINOR_VERSION, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %105, %98
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %116, i64 %120)
  %122 = load i32, i32* @RPC_E_VERSION_MISMATCH, align 4
  store i32 %122, i32* %5, align 4
  br label %158

123:                                              ; preds = %105
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ORPCF_LOCAL, align 4
  %128 = load i32, i32* @ORPCF_RESERVED1, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @ORPCF_RESERVED2, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @ORPCF_RESERVED3, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @ORPCF_RESERVED4, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = and i32 %126, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %123
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ORPCF_LOCAL, align 4
  %144 = load i32, i32* @ORPCF_RESERVED1, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @ORPCF_RESERVED2, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ORPCF_RESERVED3, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @ORPCF_RESERVED4, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = and i32 %142, %152
  %154 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @RPC_E_INVALID_HEADER, align 4
  store i32 %155, i32* %5, align 4
  br label %158

156:                                              ; preds = %123
  %157 = load i32, i32* @S_OK, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %139, %112, %95, %59, %31
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @unmarshal_ORPC_EXTENT_ARRAY(%struct.TYPE_9__*, i8*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
