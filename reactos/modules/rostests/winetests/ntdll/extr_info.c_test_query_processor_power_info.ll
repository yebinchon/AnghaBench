; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_processor_power_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_processor_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ProcessorInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Expected all but the last record to be overwritten.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected untouched buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Expected untouched buffer.\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Expected STATUS_BUFFER_TOO_SMALL, got %08x\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"Got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Test needs more than one processor.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_processor_power_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_processor_power_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @GetSystemInfo(%struct.TYPE_7__* %4)
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_8__* @HeapAlloc(i32 %12, i32 0, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %171

18:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 -559038737, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* @ProcessorInformation, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @pNtPowerInformation(i32 %34, i32 0, i32 0, %struct.TYPE_8__* %35, i32 %39)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @STATUS_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %126

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -559038737
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -559038737
  br label %64

64:                                               ; preds = %54, %44
  %65 = phi i1 [ false, %44 ], [ %63, %54 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ProcessorInformation, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @pNtPowerInformation(i32 %68, i32 0, i32 0, %struct.TYPE_8__* null, i32 %69)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @STATUS_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %1, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %88, %64
  %78 = load i32, i32* %5, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 -559038737, i32* %87, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load i32, i32* @ProcessorInformation, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = call i64 @pNtPowerInformation(i32 %92, i32 0, i32 0, %struct.TYPE_8__* %93, i32 3)
  store i64 %94, i64* %1, align 8
  %95 = load i64, i64* %1, align 8
  %96 = load i64, i64* @STATUS_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %1, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %116, %91
  %102 = load i32, i32* %5, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, -559038737
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %119

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %101

119:                                              ; preds = %114, %101
  %120 = load i32, i32* %5, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %120, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %170

126:                                              ; preds = %33
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, -559038737
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i64, i64* %1, align 8
  %135 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %1, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* @ProcessorInformation, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @pNtPowerInformation(i32 %140, i32 0, i32 0, %struct.TYPE_8__* null, i32 %141)
  store i64 %142, i64* %1, align 8
  %143 = load i64, i64* %1, align 8
  %144 = load i64, i64* @STATUS_SUCCESS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %126
  %147 = load i64, i64* %1, align 8
  %148 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %149 = icmp eq i64 %147, %148
  br label %150

150:                                              ; preds = %146, %126
  %151 = phi i1 [ true, %126 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %1, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @ProcessorInformation, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %157 = call i64 @pNtPowerInformation(i32 %155, i32 0, i32 0, %struct.TYPE_8__* %156, i32 0)
  store i64 %157, i64* %1, align 8
  %158 = load i64, i64* %1, align 8
  %159 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %150
  %162 = load i64, i64* %1, align 8
  %163 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %161, %150
  %166 = phi i1 [ true, %150 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %1, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %165, %119
  br label %173

171:                                              ; preds = %0
  %172 = call i32 @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %170
  %174 = load i32, i32* @ProcessorInformation, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i64 @pNtPowerInformation(i32 %174, i32 0, i32 0, %struct.TYPE_8__* %175, i32 %176)
  store i64 %177, i64* %1, align 8
  %178 = load i64, i64* %1, align 8
  %179 = load i64, i64* @STATUS_SUCCESS, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %1, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = call i32 (...) @GetProcessHeap()
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %186 = call i32 @HeapFree(i32 %184, i32 0, %struct.TYPE_8__* %185)
  ret void
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @pNtPowerInformation(i32, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
