; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbSStat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_netbios.c_nbSStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i8*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c": adapter %p, NCB %p\0A\00", align 1
@NRC_BADDR = common dso_local global i64 0, align 8
@NRC_ENVNOTDEF = common dso_local global i64 0, align 8
@NRC_INVADDRESS = common dso_local global i64 0, align 8
@NRC_BUFLEN = common dso_local global i64 0, align 8
@NRC_GOODRET = common dso_local global i64 0, align 8
@NCBNAMSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @nbSStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nbSStat(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %11, %struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @NRC_BADDR, align 8
  store i64 %17, i64* %3, align 8
  br label %179

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @NRC_ENVNOTDEF, align 8
  store i64 %24, i64* %3, align 8
  br label %179

25:                                               ; preds = %18
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @NRC_INVADDRESS, align 8
  store i64 %29, i64* %3, align 8
  br label %179

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @NRC_BADDR, align 8
  store i64 %36, i64* %3, align 8
  br label %179

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @NRC_BUFLEN, align 8
  store i64 %44, i64* %3, align 8
  br label %179

45:                                               ; preds = %37
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %9, align 8
  %50 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = call i32 @memset(%struct.TYPE_10__* %51, i32 0, i32 4)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  %58 = udiv i64 %57, 4
  store i64 %58, i64* %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = call i32 @EnterCriticalSection(i32* %60)
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %169, %45
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @NRC_GOODRET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i1 [ false, %62 ], [ %71, %66 ]
  br i1 %73, label %74, label %172

74:                                               ; preds = %72
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %168

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 42
  br i1 %90, label %105, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NCBNAMSZ, align 4
  %103 = call i32 @memcmp(i8* %94, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %168, label %105

105:                                              ; preds = %91, %83
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %165

111:                                              ; preds = %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = ptrtoint %struct.TYPE_10__* %112 to i64
  %114 = add i64 %113, 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 %117, 4
  %119 = add i64 %114, %118
  %120 = inttoptr i64 %119 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %10, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NCBNAMSZ, align 4
  %144 = call i32 @memcpy(i32 %135, i32 %142, i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NCBNAMSZ, align 4
  %156 = call i32 @memcpy(i32 %147, i32 %154, i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %167

165:                                              ; preds = %105
  %166 = load i64, i64* @NRC_BUFLEN, align 8
  store i64 %166, i64* %6, align 8
  br label %167

167:                                              ; preds = %165, %111
  br label %168

168:                                              ; preds = %167, %91, %74
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %7, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %7, align 8
  br label %62

172:                                              ; preds = %72
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = call i32 @LeaveCriticalSection(i32* %174)
  %176 = load i64, i64* %6, align 8
  %177 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* %6, align 8
  store i64 %178, i64* %3, align 8
  br label %179

179:                                              ; preds = %172, %43, %35, %28, %23, %16
  %180 = load i64, i64* %3, align 8
  ret i64 %180
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
