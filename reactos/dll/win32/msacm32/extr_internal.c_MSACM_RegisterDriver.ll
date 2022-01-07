; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i64, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"(%s, %s, %p)\0A\00", align 1
@MSACM_hHeap = common dso_local global i32 0, align 4
@WINE_ACMOBJ_DRIVERID = common dso_local global i32 0, align 4
@MSACM_pFirstACMDriverID = common dso_local global %struct.TYPE_12__* null, align 8
@MSACM_pLastACMDriverID = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't load cache for ACM driver (%s)\0A\00", align 1
@ACMDRIVERDETAILS_SUPPORTF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @MSACM_RegisterDriver(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @debugstr_w(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i64 %13)
  %15 = load i32, i32* @MSACM_hHeap, align 4
  %16 = call i8* @HeapAlloc(i32 %15, i32 0, i32 4)
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %172

21:                                               ; preds = %3
  %22 = load i32, i32* @WINE_ACMOBJ_DRIVERID, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %21
  %35 = load i32, i32* @MSACM_hHeap, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @lstrlenW(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i8* @HeapAlloc(i32 %35, i32 0, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_12__*
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @MSACM_hHeap, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, %struct.TYPE_12__* %52)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %172

54:                                               ; preds = %34
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @lstrcpyW(%struct.TYPE_12__* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %21
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %60
  %66 = load i32, i32* @MSACM_hHeap, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @lstrlenW(i32 %67)
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i8* @HeapAlloc(i32 %66, i32 0, i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_12__*
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* @MSACM_hHeap, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = call i32 @HeapFree(i32 %82, i32 0, %struct.TYPE_12__* %85)
  %87 = load i32, i32* @MSACM_hHeap, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = call i32 @HeapFree(i32 %87, i32 0, %struct.TYPE_12__* %88)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %172

90:                                               ; preds = %65
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @lstrcpyW(%struct.TYPE_12__* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %60
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %115, align 8
  br label %116

116:                                              ; preds = %112, %104
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  br label %122

122:                                              ; preds = %120, %116
  br label %142

123:                                              ; preds = %96
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  %130 = icmp ne %struct.TYPE_12__* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %134, align 8
  br label %135

135:                                              ; preds = %131, %123
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %136, %struct.TYPE_12__** @MSACM_pLastACMDriverID, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  %138 = icmp ne %struct.TYPE_12__* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** @MSACM_pFirstACMDriverID, align 8
  br label %141

141:                                              ; preds = %139, %135
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = icmp ne %struct.TYPE_12__* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %149 = call i32 @MSACM_ReadCache(%struct.TYPE_12__* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = call i32 @MSACM_FillCache(%struct.TYPE_12__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @debugstr_w(i32 %156)
  %158 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = call i32 @MSACM_UnregisterDriver(%struct.TYPE_12__* %159)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %172

161:                                              ; preds = %151, %147
  %162 = load i64, i64* %7, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_LOCAL, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %161
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %171, %struct.TYPE_12__** %4, align 8
  br label %172

172:                                              ; preds = %170, %155, %81, %50, %20
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %173
}

declare dso_local i32 @TRACE(i8*, i32, i32, i64) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @lstrcpyW(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MSACM_ReadCache(%struct.TYPE_12__*) #1

declare dso_local i32 @MSACM_FillCache(%struct.TYPE_12__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @MSACM_UnregisterDriver(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
