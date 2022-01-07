; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_querydisplayinformation1_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_access.c_run_querydisplayinformation1_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Information Retrieved\0A\00", align 1
@DOMAIN_USER_RID_ADMIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"One admin user\0A\00", align 1
@UF_SCRIPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"UF_SCRIPT flag is set\0A\00", align 1
@UF_NORMAL_ACCOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"UF_NORMAL_ACCOUNT flag is set\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DOMAIN_USER_RID_GUEST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"One guest record\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Doesn't have 'Administrator' account\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_querydisplayinformation1_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_querydisplayinformation1_tests() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 0, i64* %5, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %93, %0
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %13 = bitcast %struct.TYPE_3__** %1 to i32*
  %14 = call i64 @pNetQueryDisplayInformation(i32* null, i32 1, i64 %11, i32 1000, i32 %12, i64* %4, i32* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ERROR_MORE_DATA, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi i1 [ true, %10 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %2, align 8
  br label %27

27:                                               ; preds = %87, %22
  %28 = load i64, i64* %4, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DOMAIN_USER_RID_ADMIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @UF_SCRIPT, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UF_NORMAL_ACCOUNT, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %6, align 4
  br label %81

55:                                               ; preds = %30
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DOMAIN_USER_RID_GUEST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UF_SCRIPT, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UF_NORMAL_ACCOUNT, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %61, %55
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %5, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 1
  store %struct.TYPE_3__* %86, %struct.TYPE_3__** %2, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %4, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %4, align 8
  br label %27

90:                                               ; preds = %27
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %92 = call i32 @pNetApiBufferFree(%struct.TYPE_3__* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @ERROR_MORE_DATA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %10, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pNetQueryDisplayInformation(i32*, i32, i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @pNetApiBufferFree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
