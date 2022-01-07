; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@QueryInterface.IID_undocumented = internal constant %struct.TYPE_9__ { i32 1491060688, i32 21377, i32 17381, %struct.TYPE_8__ { i32 157, i32 114, i32 76, i32 221, i32 228, i32 203, i32 15, i32 26 } }, align 4
@QueryInterface.IID_undocumentedIE10 = internal constant %struct.TYPE_9__ { i32 -1031331099, i32 48154, i32 19541, %struct.TYPE_8__ { i32 166, i32 141, i32 51, i32 33, i32 159, i32 105, i32 137, i32 16 } }, align 4
@IID_IUnknown = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@IID_IInternetProtocolSink = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@protocol_sink = common dso_local global i32 0, align 4
@IID_IServiceProvider = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@service_provider = common dso_local global i32 0, align 4
@IID_IUriContainer = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unexpected call %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryInterface(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @IsEqualGUID(%struct.TYPE_9__* @IID_IUnknown, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @IsEqualGUID(%struct.TYPE_9__* @IID_IInternetProtocolSink, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @protocol_sink to i8*), i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @IsEqualGUID(%struct.TYPE_9__* @IID_IServiceProvider, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @service_provider to i8*), i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @IsEqualGUID(%struct.TYPE_9__* @IID_IUriContainer, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @IsEqualGUID(%struct.TYPE_9__* @QueryInterface.IID_undocumented, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @IsEqualGUID(%struct.TYPE_9__* @QueryInterface.IID_undocumentedIE10, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %34
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @wine_dbgstr_guid(i32 %47)
  %49 = call i32 @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %44, %38, %32, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @IsEqualGUID(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
