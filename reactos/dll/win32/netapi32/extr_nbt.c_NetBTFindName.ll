; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTFindName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTFindName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [18 x i8] c"adapt %p, NCB %p\0A\00", align 1
@NRC_ENVNOTDEF = common dso_local global i32 0, align 4
@NRC_INVADDRESS = common dso_local global i32 0, align 4
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_BUFLEN = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i32 0, align 4
@NRC_CMDTMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*)* @NetBTFindName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTFindName(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15, %struct.TYPE_14__* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @NRC_ENVNOTDEF, align 4
  store i32 %21, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %26, i32* %3, align 4
  br label %136

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @NRC_BADDR, align 4
  store i32 %33, i32* %3, align 4
  br label %136

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @NRC_BUFLEN, align 4
  store i32 %41, i32* %3, align 4
  br label %136

42:                                               ; preds = %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %9, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = call i32 @memset(%struct.TYPE_15__* %47, i32 0, i32 4)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = call i32 @NetBTInternalFindName(%struct.TYPE_17__* %49, %struct.TYPE_14__* %50, %struct.TYPE_18__** %8)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NRC_GOODRET, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %130

55:                                               ; preds = %42
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %58, label %127

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @min(i32 %65, i64 %68)
  store i64 %69, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %70

70:                                               ; preds = %115, %58
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %70
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = ptrtoint %struct.TYPE_15__* %75 to i64
  %77 = add i64 %76, 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = add i64 %77, %82
  %84 = inttoptr i64 %83 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %12, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = call i32 @memset(%struct.TYPE_15__* %87, i32 0, i32 2)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 2
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = call i32 @memcpy(%struct.TYPE_15__* %92, i32* %95, i32 8)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = call i32 @memset(%struct.TYPE_15__* %99, i32 0, i32 2)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 2
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = call i32 @memcpy(%struct.TYPE_15__* %104, i32* %109, i32 8)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %74
  %116 = load i64, i64* %11, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %70

118:                                              ; preds = %70
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @NRC_BUFLEN, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %124, %118
  br label %129

127:                                              ; preds = %55
  %128 = load i32, i32* @NRC_CMDTMO, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %126
  br label %130

130:                                              ; preds = %129, %42
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %40, %32, %25, %20
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @TRACE(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @NetBTInternalFindName(%struct.TYPE_17__*, %struct.TYPE_14__*, %struct.TYPE_18__**) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
