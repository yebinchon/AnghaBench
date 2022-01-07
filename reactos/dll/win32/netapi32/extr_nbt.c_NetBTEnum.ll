; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTEnum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MAX_LANA = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@IN_CLASSA_NET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@gTransportID = common dso_local global i32 0, align 4
@NetBTEnumCallback = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i64 0, align 8
@NRC_SYSTEM = common dso_local global i64 0, align 8
@NRC_OSRESNOTAV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @NetBTEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NetBTEnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @FALSE, align 8
  %11 = call i64 @GetIpAddrTable(%struct.TYPE_9__* null, i64* %2, i64 %10)
  %12 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %205

14:                                               ; preds = %0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = sub i64 %15, 4
  %17 = udiv i64 %16, 4
  %18 = add i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_9__* @HeapAlloc(i32 %19, i32 %20, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MAX_LANA, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @min(i64 %29, i64 %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_9__* @HeapAlloc(i32 %27, i32 %28, i32 %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %4, align 8
  br label %39

39:                                               ; preds = %26, %14
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %202

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %202

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = call i64 @GetIpAddrTable(%struct.TYPE_9__* %46, i64* %2, i64 %47)
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %193

51:                                               ; preds = %45
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %150, %51
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %153

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %65, %72
  %74 = load i32, i32* @INADDR_LOOPBACK, align 4
  %75 = load i32, i32* @IN_CLASSA_NET, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @htonl(i32 %76)
  %78 = icmp ne i32 %73, %77
  br i1 %78, label %79, label %149

79:                                               ; preds = %58
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %127, %79
  %82 = load i64, i64* %7, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br label %90

90:                                               ; preds = %84, %81
  %91 = phi i1 [ false, %81 ], [ %89, %84 ]
  br i1 %91, label %92, label %130

92:                                               ; preds = %90
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %99, %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %114, %121
  %123 = icmp eq i32 %107, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %92
  %125 = load i64, i64* @FALSE, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %124, %92
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %8, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %8, align 8
  br label %81

130:                                              ; preds = %90
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %139
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %145
  %147 = call i32 @memcpy(%struct.TYPE_10__* %141, %struct.TYPE_10__* %146, i32 4)
  br label %148

148:                                              ; preds = %133, %130
  br label %149

149:                                              ; preds = %148, %58
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %6, align 8
  br label %52

153:                                              ; preds = %52
  %154 = load i32, i32* @gTransportID, align 4
  %155 = load i32, i32* @NetBTEnumCallback, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = call i32 @NetBIOSEnumAdapters(i32 %154, i32 %155, %struct.TYPE_9__* %156)
  %158 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %158, i64* %1, align 8
  store i64 0, i64* %6, align 8
  br label %159

159:                                              ; preds = %189, %153
  %160 = load i64, i64* %1, align 8
  %161 = load i64, i64* @NRC_GOODRET, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i64, i64* %6, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ult i64 %164, %167
  br label %169

169:                                              ; preds = %163, %159
  %170 = phi i1 [ false, %159 ], [ %168, %163 ]
  br i1 %170, label %171, label %192

171:                                              ; preds = %169
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @INADDR_LOOPBACK, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %171
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %185
  %187 = call i64 @NetBTRegisterAdapter(%struct.TYPE_10__* %186)
  store i64 %187, i64* %1, align 8
  br label %188

188:                                              ; preds = %181, %171
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %6, align 8
  br label %159

192:                                              ; preds = %169
  br label %195

193:                                              ; preds = %45
  %194 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %194, i64* %1, align 8
  br label %195

195:                                              ; preds = %193, %192
  %196 = call i32 (...) @GetProcessHeap()
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = call i32 @HeapFree(i32 %196, i32 0, %struct.TYPE_9__* %197)
  %199 = call i32 (...) @GetProcessHeap()
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %201 = call i32 @HeapFree(i32 %199, i32 0, %struct.TYPE_9__* %200)
  br label %204

202:                                              ; preds = %42, %39
  %203 = load i64, i64* @NRC_OSRESNOTAV, align 8
  store i64 %203, i64* %1, align 8
  br label %204

204:                                              ; preds = %202, %195
  br label %207

205:                                              ; preds = %0
  %206 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %206, i64* %1, align 8
  br label %207

207:                                              ; preds = %205, %204
  %208 = load i64, i64* %1, align 8
  %209 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %208)
  %210 = load i64, i64* %1, align 8
  ret i64 %210
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @GetIpAddrTable(%struct.TYPE_9__*, i64*, i64) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @NetBIOSEnumAdapters(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @NetBTRegisterAdapter(%struct.TYPE_10__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
