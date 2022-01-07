; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { {}*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_18__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [7 x i8] c"<temp>\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s.xOpen(%s,flags=0x%x)\00", align 1
@vfstraceClose = common dso_local global i32 0, align 4
@vfstraceRead = common dso_local global i32 0, align 4
@vfstraceWrite = common dso_local global i32 0, align 4
@vfstraceTruncate = common dso_local global i32 0, align 4
@vfstraceSync = common dso_local global i32 0, align 4
@vfstraceFileSize = common dso_local global i32 0, align 4
@vfstraceLock = common dso_local global i32 0, align 4
@vfstraceUnlock = common dso_local global i32 0, align 4
@vfstraceCheckReservedLock = common dso_local global i32 0, align 4
@vfstraceFileControl = common dso_local global i32 0, align 4
@vfstraceSectorSize = common dso_local global i32 0, align 4
@vfstraceDeviceCharacteristics = common dso_local global i32 0, align 4
@vfstraceShmMap = common dso_local global i64 0, align 8
@vfstraceShmLock = common dso_local global i64 0, align 8
@vfstraceShmBarrier = common dso_local global i64 0, align 8
@vfstraceShmUnmap = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" -> %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c", outFlags=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_18__*, i32, i32*)* @vfstraceOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfstraceOpen(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_18__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = bitcast %struct.TYPE_18__* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %12, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %13, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %14, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @fileTail(i8* %32)
  br label %35

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i8* [ %33, %31 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %34 ]
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 1
  %41 = bitcast %struct.TYPE_15__* %40 to %struct.TYPE_18__*
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_18__*, i32, i32*)**
  %47 = load i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_18__*, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_18__*, i32, i32*)** %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 %47(%struct.TYPE_16__* %48, i8* %49, %struct.TYPE_18__* %52, i32 %53, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.TYPE_14__*, i8*, ...) @vfstrace_printf(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %71, label %174

71:                                               ; preds = %35
  %72 = call %struct.TYPE_17__* @sqlite3_malloc(i32 88)
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %15, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %16, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %79 = call i32 @memset(%struct.TYPE_17__* %78, i32 0, i32 88)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @vfstraceClose, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 16
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @vfstraceRead, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 15
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @vfstraceWrite, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @vfstraceTruncate, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 13
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @vfstraceSync, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @vfstraceFileSize, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @vfstraceLock, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @vfstraceUnlock, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 9
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @vfstraceCheckReservedLock, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @vfstraceFileControl, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @vfstraceSectorSize, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @vfstraceDeviceCharacteristics, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 2
  br i1 %124, label %125, label %170

125:                                              ; preds = %71
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @vfstraceShmMap, align 8
  br label %133

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i64 [ %131, %130 ], [ 0, %132 ]
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i64, i64* @vfstraceShmLock, align 8
  br label %144

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i64 [ %142, %141 ], [ 0, %143 ]
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i64, i64* @vfstraceShmBarrier, align 8
  br label %155

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i64 [ %153, %152 ], [ 0, %154 ]
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i64, i64* @vfstraceShmUnmap, align 8
  br label %166

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %163
  %167 = phi i64 [ %164, %163 ], [ 0, %165 ]
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %71
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store %struct.TYPE_17__* %171, %struct.TYPE_17__** %173, align 8
  br label %174

174:                                              ; preds = %170, %35
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @vfstrace_print_errcode(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %10, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (%struct.TYPE_14__*, i8*, ...) @vfstrace_printf(%struct.TYPE_14__* %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  br label %188

185:                                              ; preds = %174
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %187 = call i32 (%struct.TYPE_14__*, i8*, ...) @vfstrace_printf(%struct.TYPE_14__* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32, i32* %11, align 4
  ret i32 %189
}

declare dso_local i8* @fileTail(i8*) #1

declare dso_local i32 @vfstrace_printf(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.TYPE_17__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vfstrace_print_errcode(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
