; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_localgroupgetinfo_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_localgroupgetinfo_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@run_localgroupgetinfo_tests.admins = internal constant [15 x i8] c"Administrators\00", align 1
@NERR_Success = common dso_local global i64 0, align 8
@NERR_GroupNotFound = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"NetLocalGroupGetInfo unexpectedly returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Local groupname:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Comment: %s\0A\00", align 1
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"NetLocalGroupGetMembers unexpectedly returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Amount of entries is unexpectedly 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"domain and name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_localgroupgetinfo_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_localgroupgetinfo_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = bitcast %struct.TYPE_4__** %2 to i32*
  %8 = call i64 @pNetLocalGroupGetInfo(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @run_localgroupgetinfo_tests.admins, i64 0, i64 0), i32 1, i32* %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @NERR_Success, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @NERR_GroupNotFound, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @broken(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %0
  %20 = phi i1 [ true, %0 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @NERR_Success, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %79

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wine_dbgstr_w(i32 %31)
  %33 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wine_dbgstr_w(i32 %36)
  %38 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = call i32 @pNetApiBufferFree(%struct.TYPE_4__* %39)
  %41 = bitcast %struct.TYPE_4__** %3 to i32*
  %42 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %43 = call i64 @pNetLocalGroupGetMembers(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @run_localgroupgetinfo_tests.admins, i64 0, i64 0), i32 3, i32* %41, i32 %42, i64* %4, i64* %5, i32* null)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @NERR_Success, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load i64, i64* %5, align 8
  %54 = icmp sgt i64 %53, 0
  br label %55

55:                                               ; preds = %52, %28
  %56 = phi i1 [ false, %28 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %73, %55
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wine_dbgstr_w(i32 %70)
  %72 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = call i32 @pNetApiBufferFree(%struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %76, %27
  ret void
}

declare dso_local i64 @pNetLocalGroupGetInfo(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @pNetApiBufferFree(%struct.TYPE_4__*) #1

declare dso_local i64 @pNetLocalGroupGetMembers(i32*, i8*, i32, i32*, i32, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
