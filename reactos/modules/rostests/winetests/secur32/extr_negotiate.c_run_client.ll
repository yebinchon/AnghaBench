; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_run_client.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_run_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sspi_data = type { i64, %struct.TYPE_5__*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"running client for the %s time\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@SECBUFFER_TOKEN = common dso_local global i64 0, align 8
@SECURITY_NETWORK_DREP = common dso_local global i32 0, align 4
@SEC_I_COMPLETE_AND_CONTINUE = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_NEEDED = common dso_local global i64 0, align 8
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"buffer type changed from SECBUFFER_TOKEN to %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"InitializeSecurityContext didn't change buffer size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sspi_data*, i64)* @run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @run_client(%struct.sspi_data* %0, i64 %1) #0 {
  %3 = alloca %struct.sspi_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sspi_data* %0, %struct.sspi_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %14 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %17 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %15, i64* %22, align 8
  %23 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %24 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %25 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 %23, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %35 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %34, i32 0, i32 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32* [ %35, %33 ], [ null, %36 ]
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37
  %43 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %44 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %43, i32 0, i32 2
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32* [ null, %41 ], [ %44, %42 ]
  %47 = load i32, i32* @SECURITY_NETWORK_DREP, align 4
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %53 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i32* [ null, %50 ], [ %54, %51 ]
  %57 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %58 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %57, i32 0, i32 2
  %59 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %60 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i64 @InitializeSecurityContextA(i32* %38, i32* %46, i32* null, i32 0, i32 0, i32 %47, i32* %56, i32 0, i32* %58, %struct.TYPE_5__* %61, i32* %7, i32* %6)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66, %55
  %71 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %72 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %71, i32 0, i32 2
  %73 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %74 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @CompleteAuthToken(i32* %72, %struct.TYPE_5__* %75)
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  store i64 %81, i64* %5, align 8
  br label %89

82:                                               ; preds = %70
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @SEC_E_OK, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %80
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %92 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %103 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  %111 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %112 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %120 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @InitializeSecurityContextA(i32*, i32*, i32*, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @CompleteAuthToken(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
