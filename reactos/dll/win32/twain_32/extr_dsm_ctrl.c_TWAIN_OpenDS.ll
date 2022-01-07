; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_OpenDS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/twain_32/extr_dsm_ctrl.c_TWAIN_OpenDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)*, i32*, i32*, i32, %struct.TYPE_15__, %struct.TYPE_17__*, i64 }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"DG_CONTROL/DAT_IDENTITY/MSG_OPENDS\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pIdentity is %s\0A\00", align 1
@DSM_initialized = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"seq error\0A\00", align 1
@TWCC_SEQERROR = common dso_local global i32 0, align 4
@DSM_twCC = common dso_local global i32 0, align 4
@TWRC_FAILURE = common dso_local global i64 0, align 8
@nrdevices = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"no devs.\0A\00", align 1
@TWCC_NODS = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.TYPE_18__* null, align 8
@TWCC_LOWMEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to load TWAIN Source %s\0A\00", align 1
@TWCC_OPERATIONERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"DS_Entry\00", align 1
@DSM_sourceId = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i64 0, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_IDENTITY = common dso_local global i32 0, align 4
@MSG_OPENDS = common dso_local global i32 0, align 4
@activeSources = common dso_local global %struct.TYPE_17__* null, align 8
@TWCC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TWAIN_OpenDS(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %7, align 8
  store i8* null, i8** %9, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @DSM_initialized, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @TWCC_SEQERROR, align 4
  store i32 %23, i32* @DSM_twCC, align 4
  %24 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %24, i64* %3, align 8
  br label %156

25:                                               ; preds = %2
  %26 = call i32 (...) @twain_autodetect()
  %27 = load i64, i64* @nrdevices, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i32 @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @TWCC_NODS, align 4
  store i32 %31, i32* @DSM_twCC, align 4
  %32 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %32, i64* %3, align 8
  br label %156

33:                                               ; preds = %25
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %33
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @nrdevices, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** @devices, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i32 %52, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %63

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %42

63:                                               ; preds = %58, %42
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @nrdevices, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %67, %63
  br label %69

69:                                               ; preds = %68, %33
  %70 = call i32 (...) @GetProcessHeap()
  %71 = call %struct.TYPE_17__* @HeapAlloc(i32 %70, i32 0, i32 64)
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %8, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = icmp ne %struct.TYPE_17__* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @TWCC_LOWMEMORY, align 4
  store i32 %75, i32* @DSM_twCC, align 4
  %76 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %77, i64* %3, align 8
  br label %156

78:                                               ; preds = %69
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @devices, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @LoadLibraryA(i32 %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %78
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @TWCC_OPERATIONERROR, align 4
  store i32 %90, i32* @DSM_twCC, align 4
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, %struct.TYPE_17__* %92)
  %94 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %94, i64* %3, align 8
  br label %156

95:                                               ; preds = %78
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @GetProcAddress(i64 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %101 = inttoptr i64 %100 to i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)*
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)* %101, i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)** %103, align 8
  %104 = load i32, i32* @DSM_sourceId, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @DSM_sourceId, align 4
  %106 = sext i32 %104 to i64
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* @TWRC_SUCCESS, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*)** %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = load i32, i32* @DG_CONTROL, align 4
  %115 = load i32, i32* @DAT_IDENTITY, align 4
  %116 = load i32, i32* @MSG_OPENDS, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = call i64 %112(%struct.TYPE_16__* %113, i32 %114, i32 %115, i32 %116, %struct.TYPE_16__* %117)
  %119 = icmp ne i64 %109, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %95
  %121 = load i32, i32* @TWCC_OPERATIONERROR, align 4
  store i32 %121, i32* @DSM_twCC, align 4
  %122 = call i32 (...) @GetProcessHeap()
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = call i32 @HeapFree(i32 %122, i32 0, %struct.TYPE_17__* %123)
  %125 = load i32, i32* @DSM_sourceId, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* @DSM_sourceId, align 4
  %127 = load i64, i64* @TWRC_FAILURE, align 8
  store i64 %127, i64* %3, align 8
  br label %156

128:                                              ; preds = %95
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** @activeSources, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 5
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcpy(i32 %141, i8* %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = call i32 @list_init(i32* %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** @activeSources, align 8
  %154 = load i32, i32* @TWCC_SUCCESS, align 4
  store i32 %154, i32* @DSM_twCC, align 4
  %155 = load i64, i64* @TWRC_SUCCESS, align 8
  store i64 %155, i64* %3, align 8
  br label %156

156:                                              ; preds = %128, %120, %87, %74, %29, %21
  %157 = load i64, i64* %3, align 8
  ret i64 %157
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @twain_autodetect(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @LoadLibraryA(i32) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
