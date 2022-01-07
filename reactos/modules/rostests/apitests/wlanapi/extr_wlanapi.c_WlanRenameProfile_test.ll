; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/wlanapi/extr_wlanapi.c_WlanRenameProfile_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/wlanapi/extr_wlanapi.c_WlanRenameProfile_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InterfaceGuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 116, i32 101, i32 115, i32 116, i32 49, i32 0], align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"expected failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WlanRenameProfile_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WlanRenameProfile_test() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @WlanRenameProfile(i32 -1, i32* @InterfaceGuid, i8* bitcast ([5 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* inttoptr (i64 1 to i32*))
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i64 @WlanRenameProfile(i32 -1, i32* null, i8* bitcast ([5 x i32]* @.str to i8*), i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i64 @WlanRenameProfile(i32 -1, i32* @InterfaceGuid, i8* null, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* null)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i64 @WlanRenameProfile(i32 -1, i32* @InterfaceGuid, i8* bitcast ([5 x i32]* @.str to i8*), i8* null, i32* null)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @WlanRenameProfile(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
