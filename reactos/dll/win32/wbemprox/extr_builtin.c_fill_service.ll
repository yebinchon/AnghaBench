; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_service.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i64, i64 }
%struct.expr = type { i32 }
%struct.record_service = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SC_ENUM_PROCESS_INFO = common dso_local global i32 0, align 4
@SERVICE_TYPE_ALL = common dso_local global i32 0, align 4
@SERVICE_STATE_ALL = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@FILL_STATUS_UNFILTERED = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@SERVICE_ACCEPT_STOP = common dso_local global i32 0, align 4
@service_pause_service = common dso_local global i32 0, align 4
@service_resume_service = common dso_local global i32 0, align 4
@service_start_service = common dso_local global i32 0, align 4
@service_stop_service = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"created %u rows\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_service(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.record_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__*, align 8
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %24 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  store i32 %29, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 256, i64* %17, align 8
  %30 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %32 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %217

36:                                               ; preds = %2
  %37 = load i64, i64* %17, align 8
  %38 = call %struct.TYPE_10__* @heap_alloc(i64 %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %211

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %44 = load i32, i32* @SERVICE_TYPE_ALL, align 4
  %45 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = bitcast %struct.TYPE_10__* %46 to i32*
  %48 = load i64, i64* %17, align 8
  %49 = call i64 @EnumServicesStatusExW(i32 %42, i32 %43, i32 %44, i32 %45, i32* %47, i64 %48, i64* %18, i64* %19, i32* null, i32* null)
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* %21, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %41
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_MORE_DATA, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %211

57:                                               ; preds = %52
  %58 = load i64, i64* %18, align 8
  store i64 %58, i64* %17, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call %struct.TYPE_10__* @heap_realloc(%struct.TYPE_10__* %59, i64 %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %8, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %211

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %68 = load i32, i32* @SERVICE_TYPE_ALL, align 4
  %69 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = bitcast %struct.TYPE_10__* %70 to i32*
  %72 = load i64, i64* %17, align 8
  %73 = call i64 @EnumServicesStatusExW(i32 %66, i32 %67, i32 %68, i32 %69, i32* %71, i64 %72, i64* %18, i64* %19, i32* null, i32* null)
  store i64 %73, i64* %21, align 8
  %74 = load i64, i64* %21, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %211

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.table*, %struct.table** %4, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @resize_table(%struct.table* %79, i64 %80, i32 64)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %211

84:                                               ; preds = %78
  %85 = call i32 @GetComputerNameW(i32* %28, i32* %13)
  %86 = load i32, i32* @FILL_STATUS_UNFILTERED, align 4
  store i32 %86, i32* %20, align 4
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %202, %84
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %19, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %205

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call %struct.TYPE_10__* @query_service_config(i32 %92, i32* %97)
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %23, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %202

101:                                              ; preds = %91
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %10, align 8
  %106 = load %struct.table*, %struct.table** %4, align 8
  %107 = getelementptr inbounds %struct.table, %struct.table* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = add i64 %108, %109
  %111 = inttoptr i64 %110 to %struct.record_service*
  store %struct.record_service* %111, %struct.record_service** %6, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SERVICE_ACCEPT_PAUSE_CONTINUE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 -1, i32 0
  %120 = load %struct.record_service*, %struct.record_service** %6, align 8
  %121 = getelementptr inbounds %struct.record_service, %struct.record_service* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SERVICE_ACCEPT_STOP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 -1, i32 0
  %130 = load %struct.record_service*, %struct.record_service** %6, align 8
  %131 = getelementptr inbounds %struct.record_service, %struct.record_service* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = load i64, i64* %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i8* @heap_strdupW(i32* %136)
  %138 = load %struct.record_service*, %struct.record_service** %6, align 8
  %139 = getelementptr inbounds %struct.record_service, %struct.record_service* %138, i32 0, i32 12
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i8* @heap_strdupW(i32* %144)
  %146 = load %struct.record_service*, %struct.record_service** %6, align 8
  %147 = getelementptr inbounds %struct.record_service, %struct.record_service* %146, i32 0, i32 11
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.record_service*, %struct.record_service** %6, align 8
  %152 = getelementptr inbounds %struct.record_service, %struct.record_service* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_service_type(i32 %155)
  %157 = load %struct.record_service*, %struct.record_service** %6, align 8
  %158 = getelementptr inbounds %struct.record_service, %struct.record_service* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @get_service_startmode(i32 %161)
  %163 = load %struct.record_service*, %struct.record_service** %6, align 8
  %164 = getelementptr inbounds %struct.record_service, %struct.record_service* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @get_service_state(i32 %167)
  %169 = load %struct.record_service*, %struct.record_service** %6, align 8
  %170 = getelementptr inbounds %struct.record_service, %struct.record_service* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = call i8* @heap_strdupW(i32* %28)
  %172 = load %struct.record_service*, %struct.record_service** %6, align 8
  %173 = getelementptr inbounds %struct.record_service, %struct.record_service* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* @service_pause_service, align 4
  %175 = load %struct.record_service*, %struct.record_service** %6, align 8
  %176 = getelementptr inbounds %struct.record_service, %struct.record_service* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @service_resume_service, align 4
  %178 = load %struct.record_service*, %struct.record_service** %6, align 8
  %179 = getelementptr inbounds %struct.record_service, %struct.record_service* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @service_start_service, align 4
  %181 = load %struct.record_service*, %struct.record_service** %6, align 8
  %182 = getelementptr inbounds %struct.record_service, %struct.record_service* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @service_stop_service, align 4
  %184 = load %struct.record_service*, %struct.record_service** %6, align 8
  %185 = getelementptr inbounds %struct.record_service, %struct.record_service* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %187 = call i32 @heap_free(%struct.TYPE_10__* %186)
  %188 = load %struct.table*, %struct.table** %4, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load %struct.expr*, %struct.expr** %5, align 8
  %191 = call i32 @match_row(%struct.table* %188, i64 %189, %struct.expr* %190, i32* %20)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %101
  %194 = load %struct.table*, %struct.table** %4, align 8
  %195 = load i64, i64* %15, align 8
  %196 = call i32 @free_row_values(%struct.table* %194, i64 %195)
  br label %202

197:                                              ; preds = %101
  %198 = load i64, i64* %16, align 8
  %199 = add i64 %198, 64
  store i64 %199, i64* %16, align 8
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %15, align 8
  br label %202

202:                                              ; preds = %197, %193, %100
  %203 = load i64, i64* %14, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %14, align 8
  br label %87

205:                                              ; preds = %87
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %206)
  %208 = load i64, i64* %15, align 8
  %209 = load %struct.table*, %struct.table** %4, align 8
  %210 = getelementptr inbounds %struct.table, %struct.table* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %205, %83, %76, %63, %56, %40
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @CloseServiceHandle(i32 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %215 = call i32 @heap_free(%struct.TYPE_10__* %214)
  %216 = load i32, i32* %20, align 4
  store i32 %216, i32* %3, align 4
  store i32 1, i32* %22, align 4
  br label %217

217:                                              ; preds = %211, %34
  %218 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_10__* @heap_alloc(i64) #2

declare dso_local i64 @EnumServicesStatusExW(i32, i32, i32, i32, i32*, i64, i64*, i64*, i32*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local %struct.TYPE_10__* @heap_realloc(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @resize_table(%struct.table*, i64, i32) #2

declare dso_local i32 @GetComputerNameW(i32*, i32*) #2

declare dso_local %struct.TYPE_10__* @query_service_config(i32, i32*) #2

declare dso_local i8* @heap_strdupW(i32*) #2

declare dso_local i32 @get_service_type(i32) #2

declare dso_local i32 @get_service_startmode(i32) #2

declare dso_local i32 @get_service_state(i32) #2

declare dso_local i32 @heap_free(%struct.TYPE_10__*) #2

declare dso_local i32 @match_row(%struct.table*, i64, %struct.expr*, i32*) #2

declare dso_local i32 @free_row_values(%struct.table*, i64) #2

declare dso_local i32 @TRACE(i8*, i64) #2

declare dso_local i32 @CloseServiceHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
