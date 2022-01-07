; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_IIDs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_IIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pIID_ITextServices = common dso_local global i32 0, align 4
@expected_iid_itextservices = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unexpected value for IID_ITextServices: %s\0A\00", align 1
@pIID_ITextHost = common dso_local global i32 0, align 4
@expected_iid_itexthost = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected value for IID_ITextHost: %s\0A\00", align 1
@pIID_ITextHost2 = common dso_local global i32 0, align 4
@expected_iid_itexthost2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"unexpected value for IID_ITextHost2: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IIDs() #0 {
  %1 = load i32, i32* @pIID_ITextServices, align 4
  %2 = call i32 @IsEqualIID(i32 %1, i32* @expected_iid_itextservices)
  %3 = load i32, i32* @pIID_ITextServices, align 4
  %4 = call i32 @wine_dbgstr_guid(i32 %3)
  %5 = call i32 @ok(i32 %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @pIID_ITextHost, align 4
  %7 = call i32 @IsEqualIID(i32 %6, i32* @expected_iid_itexthost)
  %8 = load i32, i32* @pIID_ITextHost, align 4
  %9 = call i32 @wine_dbgstr_guid(i32 %8)
  %10 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @pIID_ITextHost2, align 4
  %12 = call i32 @IsEqualIID(i32 %11, i32* @expected_iid_itexthost2)
  %13 = load i32, i32* @pIID_ITextHost2, align 4
  %14 = call i32 @wine_dbgstr_guid(i32 %13)
  %15 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
