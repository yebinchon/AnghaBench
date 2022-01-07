; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvInheritConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvInheritConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32, i32*, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32*, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CONSOLE_RUNNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to initialize the handles table\0A\00", align 1
@INIT_SUCCESS = common dso_local global i64 0, align 8
@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"NtDuplicateObject(InitEvents[INIT_SUCCESS]) failed: %lu\0A\00", align 1
@INIT_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"NtDuplicateObject(InitEvents[INIT_FAILURE]) failed: %lu\0A\00", align 1
@DUPLICATE_CLOSE_SOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"NtDuplicateObject(InputWaitHandle) failed: %lu\0A\00", align 1
@CsrProcessIsConsoleApp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConSrvInheritConsole(%struct.TYPE_15__* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %15, align 8
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @CONSOLE_RUNNING, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @ConSrvValidateConsole(%struct.TYPE_16__** %17, i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %25, i32* %8, align 4
  br label %212

26:                                               ; preds = %7
  %27 = load i32*, i32** %10, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @ConSrvInitHandlesTable(%struct.TYPE_15__* %35, %struct.TYPE_16__* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %207

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %26
  %50 = call i32* (...) @NtCurrentProcess()
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @INIT_SUCCESS, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @INIT_SUCCESS, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %68 = call i32 @NtDuplicateObject(i32* %50, i32 %56, i32* %61, i32* %66, i32 %67, i32 0, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @NT_SUCCESS(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %16, align 4
  %74 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_15__* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  br label %207

79:                                               ; preds = %49
  %80 = call i32* (...) @NtCurrentProcess()
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @INIT_FAILURE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @INIT_FAILURE, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %98 = call i32 @NtDuplicateObject(i32* %80, i32 %86, i32* %91, i32* %96, i32 %97, i32 0, i32 0)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @NT_SUCCESS(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %79
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @INIT_SUCCESS, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %117 = call i32 @NtDuplicateObject(i32* %109, i32 %115, i32* null, i32* null, i32 0, i32 0, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_15__* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  store i32* null, i32** %121, align 8
  br label %207

122:                                              ; preds = %79
  %123 = call i32* (...) @NtCurrentProcess()
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %136 = call i32 @NtDuplicateObject(i32* %123, i32 %127, i32* %132, i32* %134, i32 %135, i32 0, i32 0)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @NT_SUCCESS(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %173, label %140

140:                                              ; preds = %122
  %141 = load i32, i32* %16, align 4
  %142 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @INIT_FAILURE, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %155 = call i32 @NtDuplicateObject(i32* %147, i32 %153, i32* null, i32* null, i32 0, i32 0, i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @INIT_SUCCESS, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %168 = call i32 @NtDuplicateObject(i32* %160, i32 %166, i32* null, i32* null, i32 0, i32 0, i32 %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_15__* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  store i32* null, i32** %172, align 8
  br label %207

173:                                              ; preds = %122
  %174 = load i32, i32* @TRUE, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @CsrProcessIsConsoleApp, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i32* %186, i32** %188, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = call i32 @InsertHeadList(i32* %190, i32* %192)
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ConSrvSetProcessFocus(%struct.TYPE_17__* %196, i32 %199)
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = call i32 @_InterlockedIncrement(i32* %202)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %205 = call i32 @TermRefreshInternalInfo(%struct.TYPE_16__* %204)
  %206 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %173, %140, %102, %72, %44
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = call i32 @LeaveCriticalSection(i32* %209)
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %207, %24
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

declare dso_local i32 @ConSrvValidateConsole(%struct.TYPE_16__**, i32*, i32, i32) #1

declare dso_local i32 @ConSrvFreeHandlesTable(%struct.TYPE_15__*) #1

declare dso_local i32 @ConSrvInitHandlesTable(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @NtDuplicateObject(i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @NtCurrentProcess(...) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @ConSrvSetProcessFocus(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_InterlockedIncrement(i32*) #1

declare dso_local i32 @TermRefreshInternalInfo(%struct.TYPE_16__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
