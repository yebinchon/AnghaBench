; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIfTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIfTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"GetIfTable is not supported\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"GetIfTable(NULL, NULL, FALSE) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"GetIfTable(NULL, &dwSize, FALSE) returned %d, expected ERROR_INSUFFICIENT_BUFFER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"GetIfTable(buf, &dwSize, FALSE) returned %d, expected NO_ERROR\0A\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@MAX_INTERFACE_NAME_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"interface table: %u entries\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%u: '%s' type %u mtu %u speed %u phys\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"        in: bytes %u upkts %u nupkts %u disc %u err %u unk %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"        out: bytes %u upkts %u nupkts %u disc %u err %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetIfTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetIfTable() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  br i1 true, label %9, label %161

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i64 @pGetIfTable(%struct.TYPE_6__* null, i32* null, i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %161

17:                                               ; preds = %9
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i64 @pGetIfTable(%struct.TYPE_6__* null, i32* %2, i32 %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %160

35:                                               ; preds = %17
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %2, align 4
  %38 = call %struct.TYPE_6__* @HeapAlloc(i32 %36, i32 0, i32 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i64 @pGetIfTable(%struct.TYPE_6__* %39, i32* %2, i32 %40)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @NO_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @NO_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %156

51:                                               ; preds = %35
  %52 = load i32, i32* @winetest_debug, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %156

54:                                               ; preds = %51
  %55 = load i32, i32* @MAX_INTERFACE_NAME_LEN, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %6, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %151, %54
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %154

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %8, align 8
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 17
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAX_INTERFACE_NAME_LEN, align 4
  %80 = call i32 @WideCharToMultiByte(i32 %75, i32 0, i32 %78, i32 -1, i8* %58, i32 %79, i32* null, i32* null)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 16
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 15
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %84, i8* %58, i32 %87, i32 %90, i32 %93)
  store i64 0, i64* %5, align 8
  br label %95

95:                                               ; preds = %109, %69
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %101
  %110 = load i64, i64* %5, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %5, align 8
  br label %95

112:                                              ; preds = %95
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i64 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i64 %137, i8* %140, i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %112
  %152 = load i64, i64* %4, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %4, align 8
  br label %63

154:                                              ; preds = %63
  %155 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %155)
  br label %156

156:                                              ; preds = %154, %51, %35
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = call i32 @HeapFree(i32 %157, i32 0, %struct.TYPE_6__* %158)
  br label %160

160:                                              ; preds = %156, %17
  br label %161

161:                                              ; preds = %15, %160, %0
  ret void
}

declare dso_local i64 @pGetIfTable(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
