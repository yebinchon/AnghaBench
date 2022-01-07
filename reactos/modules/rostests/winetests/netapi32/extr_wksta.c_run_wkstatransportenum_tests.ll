; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstatransportenum_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstatransportenum_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"NetWkstaTransportEnum returned %d\0A\00", align 1
@ERROR_NETWORK_UNREACHABLE = common dso_local global i64 0, align 8
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@RPC_X_NULL_REF_POINTER = common dso_local global i64 0, align 8
@NERR_Success = common dso_local global i64 0, align 8
@NERR_WkstaNotStarted = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"got data back\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"read at least one transport\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"at least one transport\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_wkstatransportenum_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_wkstatransportenum_tests() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %6 = call i64 @pNetWkstaTransportEnum(i32* null, i32 1, i32** null, i32 %5, i64* null, i64* %4, i32* null)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %10, %0
  %15 = phi i1 [ true, %0 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %20 = call i64 @pNetWkstaTransportEnum(i32* null, i32 0, i32** null, i32 %19, i64* null, i64* %4, i32* null)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @ERROR_NETWORK_UNREACHABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %108

25:                                               ; preds = %14
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %2, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %39 = call i64 @pNetWkstaTransportEnum(i32* null, i32 0, i32** null, i32 %38, i64* null, i64* null, i32* null)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %43, %33
  %52 = phi i1 [ true, %43 ], [ true, %33 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %2, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %57 = call i64 @pNetWkstaTransportEnum(i32* null, i32 0, i32** %1, i32 %56, i64* %3, i64* null, i32* null)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %2, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %65 = call i64 @pNetWkstaTransportEnum(i32* null, i32 0, i32** %1, i32 %64, i64* %3, i64* %4, i32* null)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @NERR_Success, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %51
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @ERROR_NETWORK_UNREACHABLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* @NERR_WkstaNotStarted, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %69, %51
  %78 = phi i1 [ true, %69 ], [ true, %51 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %2, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* @NERR_Success, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %77
  %86 = load i32*, i32** %1, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i64, i64* %3, align 8
  %91 = icmp sgt i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i64, i64* %4, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %4, align 8
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @broken(i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %96, %85
  %103 = phi i1 [ true, %85 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @pNetApiBufferFree(i32* %106)
  br label %108

108:                                              ; preds = %24, %102, %77
  ret void
}

declare dso_local i64 @pNetWkstaTransportEnum(i32*, i32, i32**, i32, i64*, i64*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @pNetApiBufferFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
