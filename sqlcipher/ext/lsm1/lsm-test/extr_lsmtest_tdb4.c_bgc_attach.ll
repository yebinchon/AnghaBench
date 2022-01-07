; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bgc_attach.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bgc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_16__*, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__, i64, i32 }
%struct.TYPE_14__ = type { i32, i8* }

@BT_INFO_FILENAME = common dso_local global i32 0, align 4
@BT_CONTROL_INFO = common dso_local global i32 0, align 4
@SQLITE4_OK = common dso_local global i32 0, align 4
@SQLITE4_MUTEX_STATIC_KV = common dso_local global i32 0, align 4
@gBgc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@bgc_main = common dso_local global i32 0, align 4
@bgc_logsize_cb = common dso_local global i32 0, align 4
@BT_CONTROL_LOGSIZECB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*)* @bgc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgc_attach(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @BT_INFO_FILENAME, align 4
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %15 = call i32 @sqlite4_buffer_init(%struct.TYPE_18__* %14, i32 0)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BT_CONTROL_INFO, align 4
  %20 = bitcast %struct.TYPE_15__* %8 to i8*
  %21 = call i32 @sqlite4BtControl(i32 %18, i32 %19, i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SQLITE4_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %160

27:                                               ; preds = %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SQLITE4_MUTEX_STATIC_KV, align 4
  %32 = call i32 @sqlite4_mutex_alloc(i32 %30, i32 %31)
  %33 = call i32 @sqlite4_mutex_enter(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gBgc, i32 0, i32 0), align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %9, align 8
  br label %38

38:                                               ; preds = %61, %27
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @memcmp(i64 %51, i32 %55, i32 %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %65

60:                                               ; preds = %48, %41
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %9, align 8
  br label %38

65:                                               ; preds = %59, %38
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = icmp eq %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %138

68:                                               ; preds = %65
  %69 = call %struct.TYPE_16__* @testMalloc(i32 56)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %9, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %73 = call i32 @memcpy(%struct.TYPE_19__* %71, %struct.TYPE_18__* %72, i32 4)
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gBgc, i32 0, i32 0), align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 6
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32 1000, i32* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gBgc, i32 0, i32 0), align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  %86 = call i32 @sqlite4_buffer_init(%struct.TYPE_18__* %85, i32 0)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = add nsw i64 %91, 1
  %93 = call i32 @sqlite4_buffer_set(%struct.TYPE_18__* %88, i8* %89, i64 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SQLITE4_OK, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %68
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = call i32 @pthread_cond_init(i32* %103, i32 0)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %68
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = call i32 @pthread_mutex_init(i32* %110, i32 0)
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i32, i32* @bgc_main, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %120 = bitcast %struct.TYPE_16__* %119 to i8*
  %121 = call i32 @pthread_create(i32* %117, i32 0, i32 %118, i8* %120)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %128 = bitcast %struct.TYPE_16__* %127 to i8*
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* @bgc_logsize_cb, align 4
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 %130, i32* %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BT_CONTROL_LOGSIZECB, align 4
  %136 = bitcast %struct.TYPE_14__* %10 to i8*
  %137 = call i32 @sqlite4BtControl(i32 %134, i32 %135, i8* %136)
  br label %143

138:                                              ; preds = %65
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %122
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %145 = icmp ne %struct.TYPE_16__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %149, align 8
  br label %150

150:                                              ; preds = %146, %143
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SQLITE4_MUTEX_STATIC_KV, align 4
  %155 = call i32 @sqlite4_mutex_alloc(i32 %153, i32 %154)
  %156 = call i32 @sqlite4_mutex_leave(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %158 = call i32 @sqlite4_buffer_clear(%struct.TYPE_18__* %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %150, %25
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @sqlite4_buffer_init(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite4BtControl(i32, i32, i8*) #1

declare dso_local i32 @sqlite4_mutex_enter(i32) #1

declare dso_local i32 @sqlite4_mutex_alloc(i32, i32) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

declare dso_local %struct.TYPE_16__* @testMalloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite4_buffer_set(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i32, i8*) #1

declare dso_local i32 @sqlite4_mutex_leave(i32) #1

declare dso_local i32 @sqlite4_buffer_clear(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
